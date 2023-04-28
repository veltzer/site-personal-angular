<%!
    import pydmt.helpers.project
    import pydmt.helpers.signature
    import pydmt.helpers.misc
    import pydmt.helpers.urls
    import config.personal
    import config.project
%><!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>${config.project.description_short}</title>
		<link rel="shortcut icon" href="../static/favicon.ico"/>
		<meta name="Description" content="${config.project.description_long}"/>
		<meta name="Keywords" content="${config.personal.fullname}, ${config.personal.slug}, ${pydmt.helpers.project.get_name()}, ${', '.join(config.project.keywords)}"/>
	</head>
	<body>
		<h1>Welcome to ${config.personal.fullname}'s github web site</h1>

		<h2>Here are some of my projects at github:</h2>
		<ul>
			<li><a href="https://veltzer.github.io/demos-linux">demos-linux</a></li>
			<li><a href="https://veltzer.github.io/fastlog">fastlog</a></li>
			<li><a href="https://veltzer.github.io/jschess">jschess</a></li>
			<li><a href="https://veltzer.github.io/openbook">openbook</a></li>
			<li><a href="https://veltzer.github.io/riddling">riddling</a></li>
			<li><a href="https://veltzer.github.io/keynote">keynote</a></li>
			<li><a href="https://veltzer.github.io/slides">slides</a></li>
			<li><a href="https://veltzer.github.io/templar">templar</a></li>
			<li><a href="https://veltzer.github.io/pdmt">pdmt</a></li>
			<li><a href="https://veltzer.github.io/scheduler">scheduler</a></li>
		</ul>
		<p>
			Copyright ${config.personal.fullname} © ${pydmt.helpers.signature.get_copyright_years_long()}
			<a href="mailto:${config.personal.email}">${config.personal.email}</a>
		</p>
	</body>
</html>
