<!doctype html>
<html class="no-js" lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Live Search</title>
    <link rel="stylesheet" href="css/normalize.css" />
    <link rel="stylesheet" href="css/foundation.css" />
    <link rel="stylesheet" href="css/main.css" type="text/css" media="screen" />
    <script src="js/vendor/modernizr.js"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/1.18.0/TweenMax.min.js"></script>
 </head>
 <body>
    <br>
    <div class="row">
    <h1 align="center">Live Search</h1>
    <form>
    <input id="srch" type="text" size="30" placeholder="SEARCH...">
    <div id="livesrch"></div>
    </form><br>
    <div id="maincontent">
<?php include('includes/nav.html'); ?>
	<div class="details"></div>
	<div class="movies"></div>
<?php include('includes/footer.html'); ?>
	</div>
    </div>
<script src="js/utility.js"></script>
  <script src="js/main.js"></script>
    <script src="js/vendor/jquery.js"></script>
    <script src="js/foundation.min.js"></script>
    <script>
      $(document).foundation();
    </script>
</body>
</html>