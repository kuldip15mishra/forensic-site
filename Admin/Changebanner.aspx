﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Changebanner.aspx.cs" Inherits="Admin_Changebanner" %>

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
          <asp:Label ID="Label1" runat="server" Text="Upload Image for the Banner :"></asp:Label>
      <asp:FileUpload ID="FileUpload1" runat="server" /><br />
          <asp:Button ID="Button1" runat="server"
          Text="SaveBanner" onclick="Button1_Click" /><asp:Label ID="lblOutput" runat="server"
              Text=""></asp:Label>
      
      
      </div>
    </div>
    <div id="center_div">
        
      <div id="box_main">
        <div class="box">
          <table width="486" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="18">&nbsp;</td>
              <td width="451">&nbsp;</td>
              <td width="17">&nbsp;</td>
            </tr>
            <tr>
              <td height="172">&nbsp;</td>
              <td>Qualified Experts in the field of Handwriting, Fingerprints, Ballistics, & Medico legal consultants in Forensic Medicine, DNA and General Forensic
*Solved Various CBI Matters, Banks and Managements Cases etc*<br />
Submitted Opinion in Hon'ble High Court, Tis Hazari, Karkardooma, Saket and delhi, and NCR as well as other states including U.P, Haryana, Maharashtra, Andhra Pradesh etc</td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
          </table>
        </div>
        <div class="box">
          <table width="486" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="22">&nbsp;</td>
              <td colspan="2">&nbsp;</td>
              <td width="19">&nbsp;</td>
            </tr>
            <tr>
              <td height="113">&nbsp;</td>
              <td width="221" valign="top" class="box_heading">Fingerprinting<br />
              for visa purpose</td>
              <td width="224" align="right"><img src="images/img_1.png" width="107" height="113" /></td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td colspan="2">Provide fingerprinting for visa, immigration, state police clearance, education/job purpose etc in UK, USA, and other countries on valid standard cards known as FBI card.</td>
              <td>&nbsp;</td>
            </tr>
          </table>
        </div>
      </div>
      <div id="left_colum_main">
      <div class="left_colum">
        <table width="709" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="216" valign="top"><img src="images/img_2.png" width="216" height="143" vspace="3" /></td>
            <td width="12">&nbsp;</td>
            <td width="481"><div align="justify"><span class="pera_heading">Introduction</span><br />              
            &quot;Syed Faisal Huda &amp; Syed Faizal Huda&quot; are the Qualified Forensic Experts and rendering their services in this field. They are attached and working with legal advisors, counsels and solicitors of District courts, High courts and Supreme Court of India and provide them Forensic reports (U/S 45 IEA) and cross examination tips in the cases of Handwriting, Fingerprints, and medico legal consultancy in Forensic Ballistics, Forensic toxicology, Serology, Forensic Medicine DNA etc and cover all the areas of Forensic science in their relevant matters. They are always welcome to perform best services for every offer given to them by any of the lawyer, client and any of the agency. </div></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td align="right"><strong><a href="#">Read more.....</a></strong></td>
          </tr>
          <tr>
            <td colspan="3"><span class="pera_heading_sub">FORENSIC WORK AND ITS LEGAL ADMISSIBILITY IN COURT</span><br />
The work of Forensic Experts and their opinions are admissible under section 45 of IEA, whether submitted by qualified independent forensic expert or submitted through the experts of private forensic agency or laboratory. </td>
          </tr>
          <tr>
            <td colspan="3" align="right"><strong><a href="#">Read more.....</a></strong></td>
          </tr>
        </table>
      </div>
      </div>
      <div id="right_colum">
        <div id="enquiry_main">
          <div id="enquriy_heading"><strong>Send Enquiry</strong></div>
          <div id="enquiry_form">
            <table width="260" border="0" align="center" cellpadding="2" cellspacing="0">
              <tr>
                <td width="22">&nbsp;</td>
                <td width="43" height="30">Name</td>
                <td width="14">:</td>
                <td width="172" height="34"><label for="textfield"></label>
                  <input type="text" class="form_one" name="textfield" id="textfield" /></td>
                <td width="16">&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td height="30">Mobile</td>
                <td>:</td>
                <td height="34"><input type="text" class="form_one" name="textfield2" id="textfield2" /></td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td height="30">E-mail </td>
                <td>:</td>
                <td height="34"><input type="text" class="form_one" name="textfield3" id="textfield3" /></td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td height="30">Browse</td>
                <td>:</td>
                <td height="34"><input name="fileField" type="file" id="fileField" size="11" /></td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td rowspan="2">&nbsp;</td>
                <td height="30">Query</td>
                <td>:</td>
                <td height="32" rowspan="2"><label for="textarea"></label>
                  <textarea name="textarea" class="form_two" id="textarea" cols="45" rows="5"></textarea></td>
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
                <td height="34" valign="middle"><input type="submit" name="button" id="button" value="Submit" /></td>
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
<div id="container_sub">
  <div id="copyright">Copyright © 2011 syedfaisal&amp;syedfaizalhuda.com | All rights reserved</div>
  <div id="w3d_div">Designed &amp; Developed by: <a href="http://w3design.in/" target="_new">W3DESIGN</a></div>
</div>
</div>
</div>
</form>
</body>
</html>
