package dao;
import javax.servlet.http.Cookie;

public class signIn {
	   public static String[] verifiCookie(Cookie c[]) 
		{
			String []res = new String [3];
			res[0] = null;
			res[1] = null;
			res[2] = "no";
			if(c == null)
				return res;
			try{
			
			for(int i = 0;i<c.length;i++)
			{
				Cookie cookie = c[i];
				
				if(cookie.getName().equals("wlsdzyzl_email"))
				{
					String email = cookie.getValue();
					String name = null;
					res[0] = email;
					if((name = bottom_code.getName(email))!=null)
					{
						
				
				res[1] = name;
		
				res[2] = "yes";
					
					}
				}
				else if(cookie.getName().equals("wlsdzyzl_name"))
				{
					res[1] = cookie.getValue();
				
				}
			
			}

			
			}catch(Exception e)
			{
				e.printStackTrace();
			}
			
			return res;
		}
}
