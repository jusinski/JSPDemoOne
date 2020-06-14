<html>

<body>

<h3>Training Portal</h3>

<!-- Read favorite language cookie -->
<%
	// default if there are no cookies
	String favLang = "Java";

	// get the cookie from browser
	Cookie[] theCookies = request.getCookies();
	
	// find cookie
	if(theCookies != null){
		for(Cookie tempCookie : theCookies){
			if("myApp.favoriteLanguage".equals(tempCookie.getName())){
				favLang = tempCookie.getValue();
				break;
			}
		}
	}
%>

<!-- show personalized page -->

<!-- show new books for language -->

<h4>Best books for <%= favLang %></h4>
<ul>
	<li>text text text</li>
	<li>text text text</li>
</ul>

<h4>Latest News for <%= favLang %></h4>
<ul>
	<li>text text text</li>
	<li>text text text</li>
</ul>

<h4>Hot Job for <%= favLang %></h4>
<ul>
	<li>text text text</li>
	<li>text text text</li>
</ul>

<hr>
<a href="cookies-personalize-form.jsp">Personalize this page</a>

</body>

</html>