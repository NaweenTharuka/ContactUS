package com.javatpoint.dao;
import java.sql.*;  
import java.util.ArrayList;  
import java.util.List;  
import com.javatpoint.bean.ContactUs; 

public class ContactUsDao {
	public static Connection getConnection(){  
	    Connection con=null;  
	    try{  
	        Class.forName("com.mysql.jdbc.Driver");  
	        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/amanwella","root","");  
	    }catch(Exception e){System.out.println(e);}  
	    return con;  
	}  
	public static int save(ContactUs u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement(  
	"insert into contactus(name,email,phone,country,message) values(?,?,?,?,?)");  
	        ps.setString(1,u.getName());  
	        ps.setString(2,u.getEmail());  
	        ps.setString(3,u.getPhone());  
	        ps.setString(4,u.getCountry());  
	        ps.setString(5,u.getMessage());  
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}  
	public static int update(ContactUs u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement(  
	"update contactus set name=?,email=?,phone=?,country=?,message=? where id=?");  
	        ps.setString(1,u.getName());  
	        ps.setString(2,u.getEmail());  
	        ps.setString(3,u.getPhone());  
	        ps.setString(4,u.getCountry());  
	        ps.setString(5,u.getMessage());  
	        ps.setInt(6,u.getId());  
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}  
	public static int delete(ContactUs u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("delete from contactus where id=?");  
	        ps.setInt(1,u.getId());  
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	  
	    return status;  
	}  
	public static List<ContactUs> getAllRecords(){  
	    List<ContactUs> list=new ArrayList<ContactUs>();  
	      
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from contactus");  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            ContactUs u=new ContactUs();  
	            u.setId(rs.getInt("id"));  
	            u.setName(rs.getString("name"));  
	            u.setEmail(rs.getString("email"));  
	            u.setPhone(rs.getString("phone"));  
	            u.setCountry(rs.getString("country"));  
	            u.setMessage(rs.getString("message"));  
	            list.add(u);  
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return list;  
	}  
	public static ContactUs getRecordById(int id){  
	    ContactUs u=null;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from contactus where id=?");  
	        ps.setInt(1,id);  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            u=new ContactUs();  
	            u.setId(rs.getInt("id"));  
	            u.setName(rs.getString("name"));  
	            u.setEmail(rs.getString("email"));  
	            u.setPhone(rs.getString("phone"));  
	            u.setCountry(rs.getString("country"));  
	            u.setMessage(rs.getString("message"));  
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return u;  
	}  
}
