using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace co5027_1626739_assignment
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string productID = Request.QueryString["ID"];
            string filename = productID + ".jpg";

            current_image.ImageUrl = "~/ProductImages/" + filename);
        }

        protected void upload_image_Click(object sender, EventArgs e)
        {
            string productID = Request.QueryString["ID"];
            string filename = productID + ".jpg";
            string saveLocation = Server.MapPath("~/ProductImages/" + filename);

            image_uploader.SaveAs(saveLocation);
        }
    }
}