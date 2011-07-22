<cfsetting showdebugoutput="false" />
<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8">
	
	<!-- Always force latest IE rendering engine (even in intranet) & Chrome Frame -->
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	
	<link rel="stylesheet" type="text/css" href="<cfoutput>#application.managers.singleton.getApplication().getPath()#</cfoutput>plugins/editor/script/markitup/templates/preview.css" />
	
	<title>Markup Preview</title>
</head>
<body>
	<!--- Get the parser type for content --->
	<cfparam name="url.type" default="html">
	
	<cfset parserType = 'parser' & url.type />
	
	<cfif application.managers.singleton.has(parserType)>
		<cfset parser = application.managers.singleton.get(parserType) />
		
		<cfoutput>#parser.toHtml(form.data)#</cfoutput>
	<cfelse>
		<cfoutput>#form.data#</cfoutput>
	</cfif>
</body>
</html>
