<%@ Page Language="C#" AutoEventWireup="true" CodeFile="popup.aspx.cs" Inherits="popup" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
  <head>
    <title>popup</title>
    <meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" Content="C#">
    <meta name=vs_defaultClientScript content="JavaScript">
    <meta name=vs_targetSchema content="http://schemas.microsoft.com/intellisense/ie5">
    <LINK href="styles/style.css" type="text/css" rel="stylesheet">
    <script runat="server" language="C#">

public string img="";
public string Desc="";

		</script>
		<%

	img = Request.QueryString["img"];
	Desc = Request.QueryString["Desc"];
	
%>
  </head>

	<body>
   
		<form id="Form1" method="post" runat="server">
			
		</form>
	</body>
</HTML>
