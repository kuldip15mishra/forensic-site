using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using System.Drawing;
public partial class Admin_Uploadimage : System.Web.UI.Page
{
    DataTable dt;
    public string path;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!Page.IsPostBack)
        {
            bindata();

           
        }
      
    
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        bool res = false;

        if (FileUpload1.PostedFile != null)
        {
            HttpPostedFile myFile = FileUpload1.PostedFile;
            int nFileLen = myFile.ContentLength;
            if (nFileLen == 0)
            {
                lblOutput.Text = "No file was uploaded.";
                return;
            }
            else
            {

                try
                {
                    string virtualFolder = "~/images/gallery/";

                    string physicalFolder = Server.MapPath(virtualFolder);


                    FileUpload1.SaveAs(physicalFolder + FileUpload1.FileName);
                    res = true;


                    lblOutput.Text = "Your file " + FileUpload1.FileName + " has been uploaded.";
                }
                catch (Exception ex)
                {
                }
                finally
                {
                    if (res == true)
                    {
                        Button1.Attributes.Add("onclick",
                    "alert ('Image has been uploaded...');");
                    }
                }

            }
        }
        else
        {
            Button1.Attributes.Add("onclick",
             "alert ('Please select file for Image...');");
        }
    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        ArrayList productsToDelete = new ArrayList();

        foreach (GridViewRow row in GridView1.Rows)
        {
            if (row.RowType == DataControlRowType.DataRow)
            {
                CheckBox chkDelete = (CheckBox)row.Cells[0].FindControl("chkDelete");

                if (chkDelete != null)
                {
                    if (chkDelete.Checked)
                    {
                        string productId = row.Cells[1].Text;
                        productsToDelete.Add(productId);
                    }
                }
            }
        }

        DeleteProducts(productsToDelete);
        bindata(); 
    }
    public void bindata()
    {

        dt = new DataTable();
        dt.Columns.Add("Title", typeof(string));
        dt.Columns.Add("Imageurl", typeof(string));
       
        
            try
            {
                path = AppDomain.CurrentDomain.SetupInformation.ApplicationBase;
                System.IO.DirectoryInfo di = new System.IO.DirectoryInfo(path + "images/gallery/");
                System.IO.FileInfo[] fileInfos = di.GetFiles("*.jpg");
                foreach (System.IO.FileInfo f in fileInfos)
                {

                    dt.Rows.Add(f.Name.Substring(0, f.Name.LastIndexOf('.')), "~/images/gallery/" + f.Name);
                }
                GridView1.DataSource = dt;
                GridView1.DataBind();

            }
            catch (Exception ex)
            {
            }

       
    }

    private void DeleteProducts(ArrayList productsToDelete)
    {
        string path = AppDomain.CurrentDomain.SetupInformation.ApplicationBase;
        btnDelete.Attributes.Add("onclick",
               "return confirm('Are you sure you want to delete selected item(s) ?');");
        foreach (string a in productsToDelete)
        {
            File.Delete(path + "images/gallery/" + a + ".jpg");
        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        bindata();
    }
   

    

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {

    }
    protected void GridView1_DataBound1(object sender, EventArgs e)
    {
       
    }
}