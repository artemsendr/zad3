<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Summ with session</title>
</head>
<body>
	<%!String sa, sb, ssum; %>	
	<%if(request.getParameter("a") != null && request.getParameter("a") != "" &&
				request.getParameter("b") != null && request.getParameter("b") != "")
	{
		Double a =  Double.parseDouble(request.getParameter("a"));
	    Double b =  Double.parseDouble(request.getParameter("b"));
	    Double sum = a+b;
	    sa = a.toString();
	    sb = b.toString();
	    ssum = sum.toString();
	   
	}
	else
	{
	    sa = "";
	    sb = "";
	    ssum = "";
	}
	%>
	<Form
		action=summ_with_session.jsp method=get>
		<input type="Text" name="a"  value=<%=sa %>>
		<b>+</b>
		<input type="Text" name="b"  value=<%=sb %>>
		<input type="Submit" value==>
		<input type="Text" name="sum"  value=<%=ssum%>>
		<% session.setAttribute("summ", ssum) ;%>
  </Form>
  <form action="summ_with_session2.jsp" method = get>
  <input type="submit" value =  "Send">
  </form>
</body>
</html>