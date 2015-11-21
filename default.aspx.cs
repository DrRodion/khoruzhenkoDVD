using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace khoruzhenkoDVD
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection myConnection;
            SqlCommand myCmd;
            SqlDataReader myReader;

            string myconnectionString = ConfigurationManager.ConnectionStrings["DVDconnstring"].ConnectionString;
            myConnection = new SqlConnection(myconnectionString);
            myCmd = new SqlCommand("SELECT DVDID, DVDtitle, DVDartist, DVDrating, DVDprice FROM DVDtable", myConnection);

            try
            {
                myConnection.Open();
                myReader = myCmd.ExecuteReader();
                DVDDatalist.DataSource = myReader;
                DVDDatalist.DataBind();
                myReader.Close();
            }
            finally
            {
                myConnection.Close();
            }
        }

        protected void DVDDatalist_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "details")
            {
                Response.Redirect("Details.aspx?id=" + e.CommandArgument);
            }
            else if (e.CommandName == "buy")
            {
                Response.Redirect("BuyDVD.aspx?id=" + e.CommandArgument);
            }
        }
    }
}