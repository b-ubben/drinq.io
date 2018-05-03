<?php

	//Base view for drinq.io
?>

<!doctype html>
<html lang="{{ app()->getLocale() }}">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, user-scalable=0">
        <meta name="csrf-token" content="{{ csrf_token() }}">

        <meta name="keywords" content="happy hour app, drinking app, happy hour finder, happy hour map">
		    <meta name="description" content="Need to know when, where and how close you are to a happy hour drink deal? Drinq is a simple and clean web application that you can use to solve this problem!">

        <title>Bars near you, and happy hours, too!&mdash;drinq.io</title>
        <link href="{{asset('css/app.css')}}" rel="stylesheet" type="text/css">
        <link rel="icon" href="favicon.png" type="image/png">
    </head>
    <body class="bg-secondary text-white">
        <div id="content"></div>
        <script src="{{asset('js/app.js')}}" ></script>
    </body>
</html>
