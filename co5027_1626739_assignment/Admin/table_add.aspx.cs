using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace co5027_1626739_assignment.Admin
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string productIDString = Request.QueryString("ID");
            int ProductID = int.Parse(productIDString);

            DatabaseEntities db = new DatabaseEntities();

            var entry = db.tblProducts.Single(p => p.ProductID == productID);

            litProductName.Text = entry.ProductName;
            litProductDesc.Text = entry.ProductDesc;
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            tblProduct entry = new tblProduct();
            entry.productName = txtProductName.Text;
            entry.productDesc = txtProductDesc.Text;

            DatabaseEntities db = new DatabaseEntities();
            db.tblProducts.Add(entry);
            if (db.SaveChanges()== 1)
            {
                Literal1.Text = "Success";
            }
            else
            {
                Literal1.Text = "Failed";
            }
        }

        //use this code for edit
        //string productIDString = Request.QueryString("ID");
        //int productID = int.Parse(productIDString);

        //DatabaseEntities db = new DatabaseEntities();

        //var Entry = db.tblProducts.Where(p => p.ProductID == productID).First();
        
        //if(entry != null)
        //{
        //  entry.ProdudctName = txtProductName.Text;
        //  db.tblProducts.AddOrUpdate(entry);
        //  db.SaveChange();

        //if(db.SaveChanges() == 1)
        //  {
        //      Literal1.Text = "Success"
        //  }
        //else
        //  {
        //      Literal1.Text = "Failure"
        //  }
    }
}