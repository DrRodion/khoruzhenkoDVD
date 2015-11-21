using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;

namespace khoruzhenkoDVD.admin
{
    public partial class EditDVD : System.Web.UI.Page
    {
        SqlConnection myConnection;
        SqlCommand myCmd;
        SqlDataReader myReader;
        string myconnectionString;

        // On page load, populate the DVD dropdown
        protected void Page_Load(object sender, EventArgs e)
        {
            // Do not re-execute full pageload on postback
            if (IsPostBack)
            {
                return;
            }

            setConnection();
            myCmd = new SqlCommand("SELECT DVDID, DVDtitle FROM DVDtable", myConnection);

            try
            {
                myConnection.Open();
                myReader = myCmd.ExecuteReader();
                dvdDropdown.DataSource = myReader;
                dvdDropdown.DataTextField = "DVDtitle";
                dvdDropdown.DataValueField = "DVDID";
                dvdDropdown.DataBind();
                myReader.Close();
            }
            finally
            {
                myConnection.Close();
            }

        }

        // When a DVD is selected, populate the textboxes with its information
        protected void btnSelect_Click(object sender, EventArgs e)
        {
            // Enable update and delete buttons
            btnDelete.Enabled = true;
            btnUpdate.Enabled = true;

            setConnection();
            myCmd = new SqlCommand("SELECT DVDtitle, DVDartist, DVDrating, DVDprice FROM DVDtable WHERE DVDID = " + dvdDropdown.SelectedValue, myConnection);

            try
            {
                myConnection.Open();
                myReader = myCmd.ExecuteReader();

                while (myReader.Read())
                {
                    txtTitle.Text = (myReader["DVDtitle"].ToString());
                    txtArtist.Text = (myReader["DVDartist"].ToString());
                    txtRating.Text = (myReader["DVDrating"].ToString());
                    txtPrice.Text = (myReader["DVDprice"].ToString());
                }

                myReader.Close();
            }
            finally
            {
                myConnection.Close();
            }
        }

        // Delete an item from the database
        protected void btnDelete_Click(object sender, EventArgs e)
        {
            setConnection();
            myCmd = new SqlCommand("DELETE FROM DVDtable WHERE DVDID = " + dvdDropdown.SelectedValue, myConnection);
            tryExecuteNonQuery();
        }

        // Updates an item in the database
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            setConnection();
            myCmd = new SqlCommand("UPDATE DVDtable SET DVDtitle='" + txtTitle.Text + "', DVDartist='" + txtArtist.Text + "', DVDrating='" + txtRating.Text + "', DVDprice='" + txtPrice.Text + "' WHERE DVDID=" + dvdDropdown.SelectedValue, myConnection);
            tryExecuteNonQuery();
        }

        // Attempt to execute the current non query SQL statement
        public void tryExecuteNonQuery()
        {
            try
            {
                myConnection.Open();
                myCmd.ExecuteNonQuery();
            }
            finally
            {
                myConnection.Close();
                Response.Redirect(Request.RawUrl);
            }
        }

        // Sets the connection string and opens connection
        public void setConnection()
        {
            myconnectionString = ConfigurationManager.ConnectionStrings["DVDconnstring"].ConnectionString;
            myConnection = new SqlConnection(myconnectionString);
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut(); Response.Redirect("default.aspx");
        }
    }
}