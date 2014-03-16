<!doctype html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<title>reveal.js - Slide Backgrounds</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet">
        <link href="/static/libs/raptor/raptor.min.css" rel="stylesheet"> <!-- Very ugly hack starts here -->
        <link href="/static/libs/raptor/raptor-front-end.min.css" rel="stylesheet">
        <link href="/static/libs/raptor/theme.min.css" rel="stylesheet">
        <link href="/static/libs/raptor/theme-icons.min.css" rel="stylesheet">

        <link href="/static/libs/reveal/reveal.min.css" rel="stylesheet">
	</head>
	<body>
		<div class="reveal">
			<div class="slides">
				<section>
					<h2>data-background: #00ffff</h2>
				</section>
				<section data-background="#bb00bb">
					<h2>data-background: #bb00bb</h2>
				</section>
				<section>
					<section data-background="#ff0000">
						<h2>data-background: #ff0000</h2>
					</section>
					<section data-background="rgba(0, 0, 0, 0.2)">
						<h2>data-background: rgba(0, 0, 0, 0.2)</h2>
					</section>
					<section data-background="salmon">
						<h2>data-background: salmon</h2>
					</section>
				</section>
				<section data-background="rgba(0, 100, 100, 0.2)">
					<section>
						<h2>Background applied to stack</h2>
					</section>
					<section>
						<h2>Background applied to stack</h2>
					</section>
					<section data-background="rgba(100, 0, 0, 0.2)">
						<h2>Background applied to slide inside of stack</h2>
					</section>
				</section>

				<section data-background-transition="slide" data-background="assets/image1.png" style="background: rgba(255,255,255,0.9)">
					<h2>Background image</h2>
				</section>

				<section>
					<section data-background-transition="slide" data-background="assets/image1.png" style="background: rgba(255,255,255,0.9)">
						<h2>Background image</h2>
					</section>
					<section data-background-transition="slide" data-background="assets/image1.png" style="background: rgba(255,255,255,0.9)">
						<h2>Background image</h2>
					</section>
				</section>

				<section data-background="assets/image2.png" data-background-size="100px" data-background-repeat="repeat" data-background-color="#111" style="background: rgba(255,255,255,0.9)">
					<h2>Background image</h2>
					<pre>data-background-size="100px" data-background-repeat="repeat" data-background-color="#111"</pre>
				</section>

				<section data-background="#888888">
					<h2>Same background twice (1/2)</h2>
				</section>
				<section data-background="#888888">
					<h2>Same background twice (2/2)</h2>
				</section>
			</div>
		</div>
		<script src="//cdnjs.cloudflare.com/ajax/libs/headjs/0.99/head.min.js"></script>
        <script src="/static/js/libs.min.js"></script>
        <script src="/static/js/pres.min.js"></script>
	</body>
</html>