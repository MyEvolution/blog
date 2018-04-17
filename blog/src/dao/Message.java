package dao;

public class Message {
	private int id;
	private String name;
	private String email;
	private String content;
	private int reply;
	private int [] replied;
	
	public Message(int id,String name,String email,String content,int reply,String replied)
	{
		this.id = id;
		this.name = name;
		this.email = email;
		this.content = content;
		this.reply = reply;
		String []ids = replied.split(",");
		
		this.replied =new int[ids.length-1];
		for(int i=0;i<ids.length-1;++i)
			this.replied[i] = Integer.parseInt(ids[i+1]);
		
	}
	public int getId()
	{
		return id;
	}
	public String getName()
	{
		return name;
	}
	public String getEmail()
	{
		return email;
	}
	public String getContent()
	{
		return content;
	}
	public int getReply()
	{
		return reply;
	}
	public int [] getReplied()
	{
		return replied;
	}
}
