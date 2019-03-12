using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_Uploadpdf : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand com;
    string conn;
    #region Page_Load
    /// <summary>
    /// Page Load..
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Page_Load(object sender, EventArgs e)
    {
        btnUpload.Click += new EventHandler(btnUpload_Click);
       
    }

    #endregion

    #region Methods
    /// <summary>
    /// Submit button click..
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    void btnUpload_Click(object sender, EventArgs e)
    {
        int pagesize = 0;
        if (ConfigurationManager.AppSettings["MaxAttahmentSize"] != null)
        {
            pagesize = Convert.ToInt32(ConfigurationManager.AppSettings["MaxAttahmentSize"]);
        }
        if (fileUpEx.HasFile && Convert.ToInt32(fileUpEx.PostedFile.ContentLength / 1024) <= pagesize)
        {
            string filepath = fileUpEx.FileName;
            if (filepath.LastIndexOf(".") != -1)
            {
                string extension = filepath.Remove(0, filepath.LastIndexOf('.'));
                if (extension != ".exe" && extension != ".bat")
                {
                    string NewDir = Server.MapPath("PDF");
                    
                    //Response.Write(NewDir + "\\" + filepath);
                    fileUpEx.PostedFile.SaveAs(NewDir + "\\" + filepath);
                    Label1.Text = "Your file " + fileUpEx.FileName + " has been uploaded.";

                }
            }

        }
        else
        {
            btnUpload.Attributes.Add("onclick",
              "alert ('Please select file for pdf...');");
        }
    }


    /// <summary>
    /// Create directory if doesn't exists..
    /// </summary>
    /// <param name="NewDirectory"></param>
    private void MakeDirectoryIfExists(string NewDirectory)
    {
        try
        {
            // Check if directory exists
            if (!Directory.Exists(NewDirectory))
            {
                // Create the directory.
                Directory.CreateDirectory(NewDirectory);
            }


        }
        catch (IOException _ex)
        {
            Response.Write(_ex.Message);
        }
    }
    #endregion
    
    
}