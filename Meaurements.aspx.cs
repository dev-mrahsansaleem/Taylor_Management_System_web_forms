using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TMS_WEB
{
    public partial class Meaurements : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string[] filePaths = Directory.GetFiles(@"~");
        }

        protected void UploadButton_Click(object sender, EventArgs e)
        {
        }
    }
}