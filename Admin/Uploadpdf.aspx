<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Uploadpdf.aspx.cs" Inherits="Admin_Uploadpdf" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>SYED FAISAL HUDA AND SYED FAIZAL HUDA</title>
<link href="../css/w3d.css" rel="stylesheet" type="text/css" />
</head>

<body>
<form id="frm1" runat="server">
<div id="container">
  <div id="container_sub">
    <div id="header">
      <div id="logo"><img src="../images/logo.png" width="517" height="118" /></div>
      <div id="top_contact_no"><img src="../images/top_contact.png" width="237" height="53" /></div>
    
    <div id="btn"><a href="../index.html">Home</a><div id="btn_line"></div> <a href="../services.html">Services</a><div id="btn_line"></div> <a href="../solved_cases.html">Solved Cases</a><div id="btn_line"></div> <a href="../online_training.html">Online Training</a><div id="btn_line"></div> <a href="../testimonials.html">Testimonials</a> <div id="btn_line"></div><a href="../contact.html">Contact us</a></div>
  </div>
    <div id="banner_main">
      <div id="banner_left_btn"><a href="../about.html">ABOUT US</a><br />
         <a href="Uploadimage.aspx">UPLOAD GALLERY IMAGES</a><br />
        <a href="UploadPdf.aspx">UPLOAD PDF</a><br />
        <a href="Changebanner.aspx">CHANGE BANNER</a><br />
        </div>
      <div id="banner">
         
      <div>
  <table >

   <tr>
   <td>UPLOAD PDF FILES</td>
   </tr>
   
<tr>
<td>
PDF FILES</td><td>
 <asp:FileUpload ID="fileUpEx" runat="server" /></td>
</tr>
<tr>
<td>
</td>
<td><asp:Button ID="btnUpload" Text="Save File" runat="server" /> </td>
    </tr>
    <tr>
    <td>
        <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
       
    </td></tr>
    <tr>
    <td>
     <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    </td>
    </tr>
       </table>

 
    </div>
      
      </div>
    </div>
    
  </div>
</div>
<div id="futter">
<div id="container">

</div>
</div>
</form>
</body>
</html>
