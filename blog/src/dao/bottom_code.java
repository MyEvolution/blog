package dao;

import java.sql.*;
import com.mysql.jdbc.Driver;



public class bottom_code {

	  public static final String url= "jdbc:mysql://127.0.0.1:3306/blog";;
	  
	  public static final String driver = "com.mysql.jdbc.Driver";
	  
	  public static final String user = "root";
	  
	  public static final String password = "zgq19961001";
	  
	  
	  public static Connection conn;
	  
	  public  static Statement state;
	  
	  public  static void connect() throws SQLException, ClassNotFoundException
	  {
		  System.out.println("connect to the datebase...");
		  Class.forName(driver);
		  conn = DriverManager.getConnection(url,user,password);
		  state = conn.createStatement();
	  }
	  public static String getName(String email,String password) throws SQLException
	  {
		  ResultSet result = state.executeQuery("select * from user where email = '"+email+"'");
		  String name = null;
		  if(result.next())
			   name = result.getString(2);
		  if(result.getString(3).equals(password))
			  return name;
		  return null;
	  }

	  public  static void main(String []args) throws SQLException, ClassNotFoundException
	  {
		  
		  connect();
		  //state.executeUpdate("create table articles (id int(6)  not null auto_increment primary key ,title text not null,content text not null,tag int not null,comment_c int not null )");
		  //createUserList();
		  //addUser("wlsdzyzl","wlsdzyzl","wlsdzyzl@163.com");
		  //conn.commit();
		  createArticleList();
		  conn.close();
	  }
	  public static void createUserList() throws SQLException
	  {
		  state.executeUpdate("create table user (id int(6) not null auto_increment primary key,name varchar(25) not null, password varchar(25) not null,email varchar(25) not null)");
	  }
	  public static void addUser(String name,String password,String email) throws SQLException
	  {
		  state.executeUpdate("insert into user (name,password,email) values('"+name+"','"+password+"','"+email+"')");
	  }
	  public static void createMessageList() throws SQLException
	  {
		  state.executeUpdate("create table message(id int(6) not null auto_increment primary key,name varchar(25) not null,email varchar(25) not null, content text not null,reply int not null,replied text not null)");
	  }
	  public static synchronized void addMessage(String name,String email,String content,int reply) throws SQLException
	  {
		  state.executeUpdate("insert into message(name,email,content,reply,replied) values ('"+name+"','"+email+"','"+content+"',"+reply+",'start')");
		  if(reply!=-1)
		  {
			  ResultSet result = state.executeQuery("select max(id) from message ");//得到当前插入的id
			  int id = -1;
			  if(result.next())
				  id = result.getInt(1);
			  if(id != -1)
			  {
				  state.executeUpdate("update message set replied = concat(replied,',"+id+"' where id = "+reply+")");//改变被回复留言的replied字段，拼接即可
			  }
		  }
	  }
	  public static ResultSet getAllMessage() throws SQLException
	  {
		  return state.executeQuery("select * from message");
	  }
	  public static void close() throws SQLException
	  {
		  conn.close();
	  }
	public static String getName(String email) throws SQLException {
		// TODO Auto-generated method stub
		  ResultSet result = state.executeQuery("select * from user where email = '"+email+"'");
		  String name = null;
		  if(result.next())
			   name = result.getString(2);

		return name;
	}
	public static void createArticleList() throws SQLException
	{
		state.executeUpdate("create table article(id int(6) not null auto_increment primary key,title text not null,content text not null, ftext text not null,time datetime not null,tag int not null)");
	}
	public static void addArticle(String title,String content,String ftext,int tag) throws SQLException
	{
		state.executeUpdate("insert into article (title,content,ftext,time,tag) values ('"+title+"','"+content+"','"+ftext+"',now(),"+tag+")");
	}
	public static ResultSet getAllArticle() throws SQLException
	{
		return state.executeQuery("select id,title,ftext,time,tag from article");
	}
	public static ResultSet getAnArticle(int id) throws SQLException
	{
		return state.executeQuery("select * from article where id = "+id);
	}
}
