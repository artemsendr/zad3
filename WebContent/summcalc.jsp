<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>summcalc</title>
</head>
<body>
<Form
		action=summcalc.jsp method=get>
		
	<%
	if(request.getParameter("a") != null&&request.getParameter("a") !=""&&
				request.getParameter("b") != null&&request.getParameter("b") != "")
	{
		Double a =  Double.parseDouble(request.getParameter("a"));
	    Double b =  Double.parseDouble(request.getParameter("b"));
	%>
		<input type="Text" name="a"  value=<%=a %>>
		<b>+</b>
		<input type="Text" name="b"  value=<%=b %>>
		<input type="Submit" value==>
		<input type="Text" name="sum"  value=<%=a+b%>>
	   <% 
	}//*/
	 else{%>
	 	<input type="Text" name="a"  value="">
		<b>+</b>
		<input type="Text" name="b"  value="">
		<input type="Submit" value==>
	    <input type="Text" name="sum"  value="">
	   <%} %>
  </Form>
  <%--=a+b--%>
  
</body>
</html>