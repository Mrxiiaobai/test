package com.cu.servlet;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;







/**
 * Servlet implementation class photoServlet
 */
public class uploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L; 
	/**
	 * Constructor of the object.
	 */
	public uploadServlet() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}
       
    /**
     * @see HttpServlet#HttpServlet()
     */
   
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	   new Date();
    	   long logname = System.currentTimeMillis() ;
    	  uploadFileMethod(request, response, logname);
       
	}

    public void uploadFileMethod(HttpServletRequest request, HttpServletResponse response, long logname) throws ServletException, IOException{
    	HttpSession session = request.getSession(true);
		String companyName = (String) session.getAttribute("companyName");
		String savedFileName = "F:\\workspace\\build\\WebContent\\images\\"+logname+".jpg";

		
		
		
		 File originalFile = new File("D:\\test\\tzzs.jpg");//指定要读取的图片
//		InputStream in =request.getInputStream();
         try {
             File result = new File(savedFileName);//要写入的图片
             if (result.exists()) {//校验该文件是否已存在
                 result.delete();//删除对应的文件，从磁盘中删除
                 result = new File(savedFileName);//只是创建了一个File对象，并没有在磁盘下创建文件
             }
             if (!result.exists()) {//如果文件不存在
                 result.createNewFile();//会在磁盘下创建文件，但此时大小为0K
             }
            FileInputStream in = new FileInputStream(originalFile);
             FileOutputStream out = new FileOutputStream(result);// 指定要写入的图片
             int n = 0;// 每次读取的字节长度
             byte[] bb = new byte[1024];// 存储每次读取的内容
             while ((n = in.read(bb)) != -1) {
                 out.write(bb, 0, n);// 将读取的内容，写入到输出流当中
             }
             //执行完以上后，磁盘下的该文件才完整，大小是实际大小
             out.close();// 关闭输入输出流
             in.close();
         } catch (FileNotFoundException e) {
             e.printStackTrace();
         } catch (IOException e) {
             e.printStackTrace();
         }
     	  
		try{
			String imagePath= "images/"+logname+".jpg";
			 //   ݿ     	
			String url="jdbc:mysql://localhost:3306/customer?useUnicode=true&characterEncoding=UTF-8"; 
			
			Connection conn = DriverManager.getConnection(url,"root","123456");
			java.sql.Statement sql=conn.createStatement();
			
			ResultSet rs = sql.executeQuery("select * from indexCompany where companyName='"+companyName+"'");
			System.out.println(rs);
			if(rs.next()){
				int mm = sql.executeUpdate("update indexcompany set companyImage='"+imagePath+"' where companyName='"+companyName+"'");		
			   	if(mm!=0){
			   		System.out.print("修改成功");
			   		request.getRequestDispatcher("indexList.jsp").forward(request,response);
			   	}else{
			   		System.out.print("修改失败");
			   		response.sendRedirect("indexList.jsp");
			   		}
			}
			conn.close();
			
		}catch (Exception e) {
		   	e.printStackTrace();
		}
		
	}
	public void init() throws ServletException {
		// Put your code here
	}

}
