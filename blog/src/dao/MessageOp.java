package dao;


import java.sql.*;
import java.util.ArrayList;

import java.util.Collections;



public class MessageOp {

	
	public static ArrayList<Message> getAllMessage() throws SQLException
	{
		ArrayList<Message> results = new ArrayList<Message>();
		ResultSet rs = bottom_code.getAllMessage();
		while(rs.next())
		{
			
			results.add(new Message(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getInt(5),rs.getString(6)));
		}
		Collections.reverse(results);
		return results;
	}

	public static void addMessage(String name, String email, String content,int reply) throws SQLException {
		// TODO Auto-generated method stub
		bottom_code.addMessage(name, email, content, reply);
	}
}
