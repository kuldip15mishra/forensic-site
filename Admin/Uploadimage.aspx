<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Uploadimage.aspx.cs" Inherits="Admin_Uploadimage" %>

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
          <asp:Label ID="Label1" runat="server" Text="Upload Image for the Gallery :"></asp:Label>
     <asp:FileUpload ID="FileUpload1" runat="server" /> <br />
          
          <asp:Button ID="Button1" runat="server"
          Text="SaveImage" onclick="Button1_Click" /><asp:Label ID="lblOutput" runat="server"
              Text=""></asp:Label>
      <br />
      <br />

      <table>
      <tr>
      <td>
      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
              Width="500px" AllowPaging="True"  PageSize="5" 
              onpageindexchanging="GridView1_PageIndexChanging" DataKeyNames="Title"
              ondatabound="GridView1_DataBound1" onrowdatabound="GridView1_RowDataBound">
     
               <PagerSettings  Mode="NextPreviousFirstLast" FirstPageText="First" PreviousPageText="Previous" NextPageText="Next" LastPageText="Last" />
   <Columns>
      <asp:TemplateField HeaderText="Delete">
         <ItemTemplate>
            <asp:CheckBox runat="server" ID="chkDelete" />
         </ItemTemplate>
      </asp:TemplateField>
     
      <asp:BoundField DataField="Title" HeaderText="Title ">
         <HeaderStyle HorizontalAlign="Center" />
         <ItemStyle HorizontalAlign="Center" />
      </asp:BoundField>
     
      <asp:ImageField  HeaderText="Image" ItemStyle-Width="100px" 
                ControlStyle-Width="100px" DataImageUrlField="Imageurl"  >
         <HeaderStyle HorizontalAlign="Left" />
         <ItemStyle HorizontalAlign="Left" />
     </asp:ImageField>
   </Columns>
</asp:GridView>

      </td>
      </tr>
      <tr>
      <td>
      <br />
<asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Delete Selected Records" /></td></tr>
      </table>
      </div>
    </div>
    
  </div>
</div>

</form>
</body>
</html>
