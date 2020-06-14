<%@ page import="java.util.*" %>

<html>

<body>

<!-- Create HTML form -->
<form action="todo-demo.jsp">
	Add new item: <input type="text" name="theItem" />
	<input type="submit" value="Submit" />
</form>

<!-- Add new item -->
<%  
	// get list from session
	List<String> items = (List<String>) session.getAttribute("myToDoList");
	
	//if list dont exist, create new one
	if(items == null){
		items = new ArrayList<String>();
		session.setAttribute("myToDoList", items);
	}
	
	//see if there is form data to add
	String theItem = request.getParameter("theItem");
	if ( (theItem != null) && (!theItem.trim().equals("")) ) {
		items.add(theItem);
	}
%>
	
<!-- Display all items from session -->
<hr>
<b>ToDo List Items:</b><br/>

<ol>
<%
	for (String temp : items) {
		out.println("<li>" + temp + "</li>");
	}
%>
</ol>


</body>

</html>