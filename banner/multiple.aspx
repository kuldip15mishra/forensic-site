﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="multiple.aspx.cs" Inherits="banner_multiple" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" lang="pt-br">
<head>
	<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
	<title>w3design.in</title>
	<link href="css/styles.css" type="text/css" media="all" rel="stylesheet" />
	<link href="css/skitter.styles.css" type="text/css" media="all" rel="stylesheet" />
	<link href="css/highlight.black.css" type="text/css" media="all" rel="stylesheet" />
	<link href="css/sexy-bookmarks-style.css" type="text/css" media="all" rel="stylesheet" />
	
	<script src="js/jquery-1.6.3.min.js"></script>
	<script src="js/jquery.easing.1.3.js"></script>
	<script src="js/jquery.animate-colors-min.js"></script>
	
	<script src="js/jquery.skitter.min.js"></script>
	<script src="js/highlight.js"></script>
	<script src="js/sexy-bookmarks-public.js"></script>
	
	<script>
	    $(document).ready(function () {

	        $('.box_skitter_large').skitter({ label: false, numbers: false });
	        $('.box_skitter_small').skitter({ label: false, numbers: false, interval: 1000 });
	        $('.box_skitter_medium').css({ width: 500, height: 200 }).skitter({ show_randomly: true, navigation: false, dots: true, interval: 4000 });
	        $('.box_skitter_normal').css({ width: 400, height: 300 }).skitter({ animation: 'blind', interval: 2000, hideTools: true });

	        // Highlight
	        $('pre.code').highlight({ source: 1, zebra: 1, indent: 'space', list: 'ol' });

	    });
	</script>
</head>
<body>
<div id="page">
  <div id="content">
		<div class="border_box">
			<div class="box_skitter box_skitter_large" id="banner" runat="server">
				<ul>
					
					<li><a href="#fade"><img src="images/005.jpg" class="fade" /></a><div class="label_text"><p>w3design.in</p></div></li>
					<li><a href="#fade"><img src="images/004.jpg" class="fade" /></a><div class="label_text"><p>w3design.in</p></div></li>
					<li><a href="#fade"><img src="images/003.jpg" class="fade" /></a><div class="label_text"><p>w3design.in</p></div></li>
         
           
				</ul>
			</div>
	</div>
	
</div></div>
</body>
</html>
