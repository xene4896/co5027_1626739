using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace co5027_1626739_assignment
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string productID = Request.QueryString["ID"];
            string filename = productID + ".jpg";

            productImage.ImageUrl = "~/ProductImages/" + filename;
        }
    }
}