<html>

<head><title>Confirmation</title></head>

<%
	// read form data
	String favLang = request.getParameter("favoriteLanguage");

	// create the cookie
	Cookie theCookie = new Cookie("myApp.favoriteLanguage", favLang);
	
	// set life time with total numer of seconds
	theCookie.setMaxAge(60*60*24*365);
	
	//send cookie to browser
	response.addCookie(theCookie);
%>

<body>

	Thanks! We set Your favorite language to ${param.favoriteLanguage}
	
	<br/><br/>
	
	<a href="cookies-homepage.jsp">Return to homepage</a>

</body>

</html>