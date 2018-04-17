<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.io.*,java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%! Date d = new Date() ; int i = (int)(Math.random()*1000),j = (int)(Math.random()*1000);%>
现在时刻是：<% out.print((d.getMonth()+1)+"月"+d.getDate()+"日 星期"+d.getDay()+" "); %>

<%=d.getHours() %>:<%=d.getMinutes() %><br>
<%=i %>*<%=j %> = <%=i*j%>
<br>
<%  
    List<String> names = new ArrayList<String>();  
    names.add("Jordan");  
    names.add("Kobe");  
    names.add("卡卡罗特");  
    names.add("霍华德");  
    pageContext.setAttribute("ns", names);  
%>  
<c:forEach var="item" items="${ns }">  
    ${item }<br>  
</c:forEach> 
</body>
</html>