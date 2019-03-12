using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class banner_multiple : System.Web.UI.Page
{
    public string path;
    protected void Page_Load(object sender, EventArgs e)
    {
        path = AppDomain.CurrentDomain.SetupInformation.ApplicationBase;
        System.IO.DirectoryInfo di = new System.IO.DirectoryInfo(path + "banner/images/");
        System.IO.FileInfo[] fileInfos = di.GetFiles("*.jpg");
        System.Text.StringBuilder img = new System.Text.StringBuilder();
        img.Append("<ul>");
        foreach (System.IO.FileInfo f in fileInfos)
        {
            string imgaurl = "images/" + f.Name;
            img.Append(@"<li><a href='#fade'><img src='" + imgaurl + "'" + "class='fade' /></a><div class='label_text'><p>w3design.in</p></div></li>");
            
        }
        img.Append("</ul>");
        banner.InnerHtml = img.ToString();
    }
}