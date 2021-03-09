<%@page import = "comEX.item"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>

<%
	String itemID = request.getParameter("itemID");
	String itemCode = request.getParameter("itemCode");
	String itemName = request.getParameter("itemName");
	double itemPrice = Double.parseDouble(request.getParameter("itemPrice"));
	String itemDesc = request.getParameter("itemDesc");

%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Items Management</title>
	</head>
	<body>
		
		<h1>Items Management</h1>
		
		<form method="post" action="items.jsp">
		
			<input name = itemID hidden value="<%=itemID%>">
			Item code: <input name="itemCodeUpdated" type="text"   value = "<%= itemCode %>"><br>
			Item name: <input name="itemName" type="text"   value = "<%= itemName %>" ><br> 
			Item price: <input name="itemPrice" type="text" value = "<%= itemPrice %>"><br>
		    Item description: <input name="itemDesc" type="text"  value = "<%= itemDesc %>" ><br> 
		    <input name="btnSubmit" type="submit" value="update">
	    
	    </form>
		

			
		<%
			out.print(session.getAttribute("statusMsg"));
		%>
		<br>
		<%
			item itemObj = new item();
			out.print(itemObj.readItems());
		%>
		
	
	
	</body>
</html>