using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class popup : System.Web.UI.Page
{

    public string path;
  
		
    protected void Page_Load(object sender, EventArgs e)
    {
        path = AppDomain.CurrentDomain.SetupInformation.ApplicationBase;
        string sImageName = Request["img"];
        sImageName = sImageName.Substring(sImageName.LastIndexOf("/") + 1, sImageName.Length - sImageName.LastIndexOf("/") - 1);

        //System.IO.DirectoryInfo di = new System.IO.DirectoryInfo(path + "English/images/gallery/Thumb/");

    }
}