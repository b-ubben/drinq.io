<?php

	//Base view for drinq.io
?>

<!doctype html>
<html lang="<?php echo e(app()->getLocale()); ?>">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="csrf-token" content="<?php echo e(csrf_token()); ?>">

        <meta name="keywords" content="happy hour app, drinking app, happy hour finder, happy hour map">
		    <meta name="description" content="Need to know when, where and how close you are to a happy hour drink deal? Drinq is a simple and clean web application that you can use to solve this problem!">

        <title>drinq.io</title>
        <link href="<?php echo e(asset('css/app.css')); ?>" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="https://unpkg.com/leaflet@1.3.1/dist/leaflet.css"
          integrity="sha512-Rksm5RenBEKSKFjgI3a41vrjkw4EVPlJ3+OiI65vTjIdo9brlAacEuKOiQ5OFh7cOI1bkDwLqdLw3Zg0cRJAAQ=="
          crossOrigin=""
        />
    </head>
    <body class="bg-secondary text-white">
        <div id="content"></div>
        <script src="<?php echo e(asset('js/app.js')); ?>" ></script>
    </body>
</html>
