package dao;

import java.sql.Timestamp;

public class Article {
	private int id;
	private String title;
	private String ftext;
	private String content;
	private String time;
	private int tag;
	
	
	public Article(int id,String title,String content,String ftext,Timestamp time,int tag)
	{
		this.id = id;
		this.title = title;
		this.ftext = ftext;
		this.content = content;
		this.time= time.toString();
		this.tag = tag;

		
	}
	public int getTag()
	{
		return tag;
	}
	public int getId()
	{
		return id;
	}
	public String getTitle()
	{
		return title;
	}
	public String getFtext()
	{
		return ftext;
	}
	public String getContent()
	{
		return content;
	}
	public String getTime()
	{
		return time;
	}

}
