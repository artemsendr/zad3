<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%if(Boolean.parseBoolean(request.getParameter("Quit")))
    {session.invalidate();
	out.println("Session finished");
    }
else{
    if(session.getAttribute("summ") == null)
    {out.println("Session is not opened");}
    else
    {
 %>
summa=<%out.println(session.getAttribute("summ"));%>
<form action="summ_with_session2.jsp" method = get>
  <input type="submit" value =  "Quit session">
  <input type="hidden" name = "Quit" value="true">
</form>
<%	}
  }%>
</body>
</html>