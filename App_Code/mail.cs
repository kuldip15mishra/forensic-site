using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net.Mail;
using System.IO;
/// <summary>
/// Summary description for mail
/// </summary>
/// 
namespace forsenic
{
    public class mail
    {
        
        //
        // TODO: Add constructor logic here
        //
      public  static bool SendMailMessage(string recepient, string bcc, string cc, string subject, string body, HttpPostedFile FileUpload1)
        {
            try
            {
                MailMessage mMailMessage = new MailMessage();
                mMailMessage.To.Add(new MailAddress(recepient));

                if ((bcc != null) & bcc != string.Empty)
                {
                    mMailMessage.Bcc.Add(new MailAddress(bcc));
                }

                if ((cc != null) & cc != string.Empty)
                {
                    mMailMessage.CC.Add(new MailAddress(cc));
                }
                mMailMessage.Subject = subject;
                mMailMessage.Body = body;
                mMailMessage.IsBodyHtml = true;
                mMailMessage.Priority = MailPriority.Normal;
                if (getattachemnt(ref mMailMessage, FileUpload1))
                {

                }
                else
                {
                }
                SmtpClient mSmtpClient = new SmtpClient();
                mSmtpClient.EnableSsl = false;
                mSmtpClient.Send(mMailMessage);
                return true;
            }
            catch (Exception ex)
            {
                string ms = ex.Message;
                return false;
            }
        }

      public static bool getattachemnt(ref  MailMessage mMailMessage, HttpPostedFile FileUpload1)
        {
            bool res = false;
            // HttpFileCollection uploadFiles = Request.Files;
            // HttpPostedFile myFile = uploadFiles[0];
            if (FileUpload1.ContentLength > 0)
            {
                mMailMessage.Attachments.Add(new Attachment(FileUpload1.InputStream, FileUpload1.FileName));
                res = true;
            }
            return res;
        }

    }

}