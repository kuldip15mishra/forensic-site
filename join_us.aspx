<%@ Page Language="C#" AutoEventWireup="true" CodeFile="solved_cases.aspx.cs" Inherits="solved_cases" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Forensic Services-Handwriting/Fingerprints Verification, DNA Testing, Training etc | forensicservices.co.in</title>
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
<script src="Scripts/AC_RunActiveContent.js" type="text/javascript"></script>
<script src="SpryAssets/SpryValidationTextarea.js" type="text/javascript"></script><script src="style/jquery.min.js" type="text/javascript"></script><script type="text/javascript">
                                                                                                                                                         var timeout = 500;
                                                                                                                                                         var closetimer = 0;
                                                                                                                                                         var ddmenuitem = 0;

                                                                                                                                                         function jsddm_open() {
                                                                                                                                                             jsddm_canceltimer();
                                                                                                                                                             jsddm_close();
                                                                                                                                                             ddmenuitem = $(this).find('ul').eq(0).css('visibility', 'visible');
                                                                                                                                                         }

                                                                                                                                                         function jsddm_close()
                                                                                                                                                         { if (ddmenuitem) ddmenuitem.css('visibility', 'hidden'); }

                                                                                                                                                         function jsddm_timer()
                                                                                                                                                         { closetimer = window.setTimeout(jsddm_close, timeout); }

                                                                                                                                                         function jsddm_canceltimer() {
                                                                                                                                                             if (closetimer) {
                                                                                                                                                                 window.clearTimeout(closetimer);
                                                                                                                                                                 closetimer = null;
                                                                                                                                                             } 
                                                                                                                                                         }

                                                                                                                                                         $(document).ready(function () {
                                                                                                                                                             $('#jsddm > li').bind('mouseover', jsddm_open);
                                                                                                                                                             $('#jsddm > li').bind('mouseout', jsddm_timer);
                                                                                                                                                         });

                                                                                                                                                         document.onclick = jsddm_close;
</script>


<script type="text/javascript">
    $(document).ready(function () {
        /*
        *   Examples - images
        */

        $("a#example1").fancybox({
            'titleShow': false
        });

        $("a#example2").fancybox({
            'titleShow': false,
            'transitionIn': 'elastic',
            'transitionOut': 'elastic'
        });

        $("a#example3").fancybox({
            'titleShow': false,
            'transitionIn': 'none',
            'transitionOut': 'none'
        });

        $("a#example4").fancybox();

        $("a#example5").fancybox({
            'titlePosition': 'inside'
        });

        $("a#example6").fancybox({
            'titlePosition': 'over'
        });

        $("a[rel=example_group]").fancybox({
            'transitionIn': 'none',
            'transitionOut': 'none',
            'titlePosition': 'over',
            'titleFormat': function (title, currentArray, currentIndex, currentOpts) {
                return '<span id="fancybox-title-over">Image ' + (currentIndex + 1) + ' / ' + currentArray.length + (title.length ? ' &nbsp; ' + title : '') + '</span>';
            }
        });

        /*
        *   Examples - various
        */

        $("#various1").fancybox({
            'titlePosition': 'inside',
            'transitionIn': 'none',
            'transitionOut': 'none'
        });

        $("#various2").fancybox();

        $("#various3").fancybox({
            'width': '75%',
            'height': '75%',
            'autoScale': false,
            'transitionIn': 'none',
            'transitionOut': 'none',
            'type': 'iframe'
        });

        $("#various4").fancybox({
            'padding': 0,
            'autoScale': false,
            'transitionIn': 'none',
            'transitionOut': 'none'
        });
    });
	</script>
	<script type="text/javascript" src="style/jquery-1.4.2.min.js"></script>
	<script type="text/javascript" src="./fancybox/jquery.mousewheel-3.0.2.pack.js"></script>
	<script type="text/javascript" src="./fancybox/jquery.fancybox-1.3.1.js"></script>
	<link rel="stylesheet" type="text/css" href="./fancybox/jquery.fancybox-1.3.1.css" media="screen" />
    
    <script src="Scripts/AC_RunActiveContent.js" type="text/javascript"></script>
<style type="text/css">
#apDiv1 {
	position:relative;
	left:0px;
	top:0px;
	width:100%;
	height:100%;
	z-index:1;
}
<style type="text/css">
</style>
<link href="css/w3d.css" rel="stylesheet" type="text/css" />
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
        <div class="about_heading">Join Us</div>
        <div class="left_colum">
          <table width="709" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td height="25" colspan="4" valign="top" >Anyone who belongs to Forensic field can join us as an associate expert and can give his/her office or residence address on our website for taking cases through internet by our references. Please send us your CV with details of your specific area of expertise. We will refer the clients who need a forensic expert near your State or local area for taking opinion of Court purpose. A fee of Rs 1100 is charged to become our associate member and for giving your Branch Office on our website.</td>
            </tr>
            <tr>
              <td width="51" align="left" valign="top">&nbsp;</td>
              <td width="102" align="left" valign="top"><p>&nbsp;</p></td>
              <td width="22" align="left" valign="top">&nbsp;</td>
              <td width="534" align="left" valign="top">&nbsp;</td>
            </tr>
            <tr>
              <td align="left" valign="top">&nbsp;</td>
              <td height="30" align="left">Name</td>
              <td align="left">:</td>
              <td align="left"><input name="textfield4" type="text" class="form_one" id="textfield4" /></td>
            </tr>
            <tr>
              <td align="left" valign="top">&nbsp;</td>
              <td height="30" align="left">Address</td>
              <td align="left">:</td>
              <td align="left"><input name="textfield5" type="text" class="form_one" id="textfield5" /></td>
            </tr>
            <tr>
              <td align="left" valign="top">&nbsp;</td>
              <td height="30" align="left">E-mail</td>
              <td align="left">:</td>
              <td align="left"><input name="textfield6" type="text" class="form_one" id="textfield6" /></td>
            </tr>
            <tr>
              <td align="left" valign="top">&nbsp;</td>
              <td height="30" align="left">Phone  no</td>
              <td align="left">:</td>
              <td align="left"><input name="textfield7" type="text" class="form_one" id="textfield7" /></td>
            </tr>
            <tr>
              <td align="left" valign="top">&nbsp;</td>
              <td height="30" align="left">Attach  resume</td>
              <td align="left">:</td>
              <td align="left"><input name="fileField2" type="file" id="fileField2" size="11" /></td>
            </tr>
            <tr>
              <td align="left" valign="top">&nbsp;</td>
              <td height="55" align="left">Description</td>
              <td align="left">:</td>
              <td align="left"><textarea name="textarea2" class="form_two" id="textarea2" cols="45" rows="5"></textarea></td>
            </tr>
            <tr>
              <td align="left" valign="top">&nbsp;</td>
              <td height="35" align="left">&nbsp;</td>
              <td align="left">&nbsp;</td>
              <td align="left"><input name="button2" type="submit" class="n-submit" id="button2" value="Submit" /></td>
            </tr>
            <tr>
              <td height="25" colspan="4" align="left" valign="top">&nbsp;</td>
            </tr>
            </table>
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
