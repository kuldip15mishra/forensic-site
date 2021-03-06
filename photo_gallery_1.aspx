﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="photo_gallery_1.aspx.cs" Inherits="photo_gallery_1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Forensic Services-Handwriting/Fingerprints Verification, DNA Testing, Training etc | forensicservices.co.in</title>
<link href="css/w3d.css" rel="stylesheet" type="text/css" />
<link href="css/template.css" rel="stylesheet" type="text/css" />
<link href="css/validationEngine.jquery.css" rel="stylesheet" type="text/css" />
<script src="js/jquery-1.6.min.js" type="text/javascript"></script>
<script src="js/jquery.validationEngine-en.js" type="text/javascript" charset="utf-8"></script>
<script src="js/jquery.validationEngine.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
    jQuery(document).ready(function () {
        jQuery("#form1").validationEngine();
    });
</script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script>

<script type="text/javascript" src="jquery.magnifier.js">
    <script type="text/javascript">
        
    </script>
    <style type="text/css">
    .magnify
    {
    }
    </style>
</head>

<body>
<form id="form1" runat="server">
<div id="container">
  <div id="container_sub">
    <div id="header">
      <div id="logo"><img src="images/logo.png" width="517" height="118" /></div>
      <div id="top_contact_no"><img src="images/top_contact.png" width="237" height="80" /></div>
      <div id="btn">
        <div id="btn_line"></div>
        <a href="index.aspx">Home</a>
        <div id="btn_line"></div>
        <a href="services.aspx">Services</a>
        <div id="btn_line"></div>
        <a href="join_us.aspx">Join Us</a>
        <div id="btn_line"></div>
        <a href="solved_cases.aspx">Solved Cases</a>
        <div id="btn_line"></div>
        <a href="online_trainning.aspx">Online Training</a>
        <div id="btn_line"></div>
        <a href="testimonials.aspx">Testimonials</a>
        <div id="btn_line"></div>
        <a href="contact.aspx">Contact us</a>
        <div id="btn_line"></div>
      </div>
    </div>
    <div id="banner_main">
      <div id="banner_left_btn"><a href="about.aspx">ABOUT US</a><br />
        <a href="solved_cases.aspx">SOLVED CASES</a><br />
        <a href="photo_gallery_1.aspx">PHOTO GALLERY</a><br />
        <a href="online_trainning.aspx">ONLINE TRAINING</a><br />
        <a href="career_in_forensic_science.aspx">CAREER IN FORENSIC SCIENCE</a><br />
        <a href="submitted_opinions.aspx">COURT OPINIONS / ACHIEVEMENTS</a><br />
        <a href="testimonials.aspx">TESTIMONIALS</a><br />
        <a href="court_evidences.aspx">COURT TESTIMONY</a><br />
        <a href="court_evidences.aspx">JUDGEMENTS</a><br />
        <a href="payment_mode.aspx">PAYMENT MODE</a><br />
        <a href="enquiry.aspx">ENQUIRY FORM</a><br />
        <a href="contact.aspx">CONTACT US</a></div>
      <div id="banner">
        <iframe id="tabiframe"  src="banner/multiple.aspx#box_skitter box_skitter_large"width="746px" scrolling="No" frameborder="0" height="308px"></iframe>
      </div>
    </div>
    <div id="center_div">
      <div id="left_colum_main">
        <div class="about_heading">Photo Gallery</div>
        <div class="left_colum">
         <span class="bluegrad_bold">Found <asp:Label Runat="server" ID="Label1" CssClass="bluegrad_bold"></asp:Label> </span>
         <div id="imagegallery" class="pro" style="width:100%; height:auto;" runat ="server">
              
         </div>
        </div>
      </div>
      <div id="right_colum">
        <div id="enquiry_main">
          <div id="enquriy_heading"><strong>Send Enquiry / Upload documents</strong></div>
          <div id="enquiry_form">
            <table width="260" border="0" align="center" cellpadding="2" cellspacing="0">
              <tr>
                <td width="22">&nbsp;</td>
                <td width="43" height="30">Name</td>
                <td width="14">:</td>
                <td width="172" height="34"><label for="textfield"></label>
                  <input type="text" class="validate[required]" name="textfield" id="txtname" runat ="server"  /></td>
                <td width="16">&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td height="30">Mobile</td>
                <td>:</td>
                <td height="34"><input type="text" class="validate[required,custom[integer]] text-input" name="textfield2" id="txtmobile" runat ="server" /></td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td height="30">E-mail </td>
                <td>:</td>
                <td height="34"><input type="text" class="validate[required,custom[email]" name="textfield3" id="txtemail" runat ="server" /></td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td height="30">Browse</td>
                <td>:</td>
                <td height="34"><%--<input name="fileField" type="file" id="fileField" size="11" />--%>
                    <asp:FileUpload ID="FileUpload1"
                        runat="server" Width="152px" CssClass="form_one" Font-Size="X-Small" /></td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td rowspan="2">&nbsp;</td>
                <td height="30">Query</td>
                <td>:</td>
                <td height="32" rowspan="2"><label for="textarea"></label>
                  <textarea name="textarea" class="form_two" runat="server" id="txtquery" cols="45" rows="5" ></textarea></td>
                <td rowspan="2">&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td height="34">&nbsp;</td>
                <td>&nbsp;</td>
                <td height="34" valign="middle"><asp:Button ID ="cmdsent" runat ="server" 
                        Text ="Submit" onclick="cmdsent_Click" /><label id="message" runat="server"> </label> </td>
                <td valign="middle">&nbsp;</td>
              </tr>
            </table>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<div id="futter">
<div id="container">
  <div id="container_sub2">
    <div id="copyright">Copyright © 2011   forensicservices.co.in | All rights reserved</div>
    <div id="w3d_div">Designed &amp; Developed by: <a href="http://w3design.in/" target="_new">W3DESIGN</a></div>
  </div>
</div>
</div>
</form>
</body>
</html>
