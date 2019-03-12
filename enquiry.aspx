<%@ Page Language="C#" AutoEventWireup="true" CodeFile="enquiry.aspx.cs" Inherits="enquiry" %>

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
</head>

<body><form id="form1" runat="server">
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
      <div class="enq_heading">Enquiry Form</div>
      <div class="enquiry_pera">
        <table width="994" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="46">&nbsp;</td>
            <td width="74">Name</td>
            <td width="28">:</td>
            <td height="35" colspan="2"><input type="text" class="validate[required]"  name="textfield" id="txtname" runat="server"/></td>
            <td width="22">&nbsp;</td>
            <td width="650" rowspan="8" align="center"><img src="images/enquiryy.png" width="246" height="255" /></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td>Mobile</td>
            <td>:</td>
            <td height="35" colspan="2"><input type="text" class="validate[required,custom[integer]] text-input" name="textfield2" id="txtmobile" runat="server" /></td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td>E-mail </td>
            <td>:</td>
            <td height="35" colspan="2"><input type="text" class="validate[required,custom[email]" name="textfield3" id="txtemail" runat="server"/></td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td>Services</td>
            <td>:</td>
            <td height="35" colspan="2"><label for="select"></label>
              <select name="select" class="form_three" id="select" runat="server">
                <option>Forensic Service</option>
                <option>Legal Services</option>
                <option>Fingerprinting for visa purpose</option>
            </select></td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td>Browse</td>
            <td>:</td>
            <td height="35" colspan="2"> <asp:FileUpload ID="FileUpload1"
                        runat="server" Width="152px" CssClass="form_one" Font-Size="X-Small" /></td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td rowspan="2">&nbsp;</td>
            <td>Query</td>
            <td>:</td>
            <td height="35" colspan="2" rowspan="2"><textarea name="textarea" class="form_two" id="txtquery" cols="45" rows="5" runat="server"></textarea></td>
            <td rowspan="2">&nbsp;</td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td width="171" height="35" align="right"><asp:Button ID ="cmdsent" runat ="server" 
                        Text ="Submit" onclick="cmdsent_Click" /><label id="message" runat="server"> </label> </td>
                <td valign="middle">&nbsp;</td>
            <td width="3" align="right">&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
        </table>
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
</div></form>
</body>
</html>
