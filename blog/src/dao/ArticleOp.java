package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;

public class ArticleOp {
	public static ArrayList<Article> getAllArticle() throws SQLException
	{
		ArrayList<Article> results = new ArrayList<>();
		ResultSet rs = bottom_code.getAllArticle();
		while(rs.next())
		{
			
			results.add(new Article(rs.getInt(1),rs.getString(2),"",rs.getString(3),rs.getTimestamp(4),rs.getInt(5)));
		}
		Collections.reverse(results);
		return results;
	}

	public static void addArticle(String title, String content, String ftext,int tag) throws SQLException {
		// TODO Auto-generated method stub
		bottom_code.addArticle(title, content, ftext,tag);
	}

	public static Article getAnArticle(int id) throws SQLException {
		// TODO Auto-generated method stub
		ResultSet rs = bottom_code.getAnArticle(id);
		if(rs.next())
		{
			
		return new Article(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getTimestamp(5),rs.getInt(6));
		}
		return null;
		
	}
}
