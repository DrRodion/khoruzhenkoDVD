using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace khoruzhenkoDVD
{
    public partial class BuyDVD : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            labelDVDID.Text = Request.QueryString["id"];
        }
    }
}