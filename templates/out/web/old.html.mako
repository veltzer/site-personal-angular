<%!
    import config.project
    import user.personal
%><!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>${config.project.project_long_description}</title>
		<link rel="shortcut icon" href="../static/favicon.ico"/>
		<meta name="Description" content="${config.project.project_long_description}"/>
		<meta name="Keywords" content="${user.personal.personal_fullname}, ${user.personal.personal_slug}, ${config.project.project_name}, ${', '.join(config.project.project_keywords)}"/>
	</head>
	<body>
		<h1>Welcome to ${user.personal.personal_fullname}'s github web site</h1>

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
			Copyright ${user.personal.personal_fullname}
			<a href="mailto:${user.personal.personal_email}">${user.personal.personal_email}</a>
		</p>
	</body>
</html>
