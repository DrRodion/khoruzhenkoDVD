using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace khoruzhenkoDVD.admin
{
    public partial class AddDVD : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddDVD_Click(object sender, EventArgs e)
        {
            SqlConnection conn; 
            SqlCommand comm;

            string connectionString = ConfigurationManager.ConnectionStrings["DVDconnstring"].ConnectionString; 
            conn = new SqlConnection(connectionString);
            comm = new SqlCommand("INSERT INTO DVDtable (DVDtitle, DVDartist, DVDrating, DVDprice) VALUES (@Title, @Artist, @Rating, @Price)", conn); 
            
            comm.Parameters.Add("@Title", System.Data.SqlDbType.NVarChar, 50);
            comm.Parameters["@Title"].Value = txtTitle.Text;
            comm.Parameters.Add("@Artist", System.Data.SqlDbType.NVarChar, 50);
            comm.Parameters["@Artist"].Value = txtArtist.Text; 
            comm.Parameters.Add("@Rating", System.Data.SqlDbType.NVarChar, 50);
            comm.Parameters["@Rating"].Value = txtRating.Text;
            comm.Parameters.Add("@Price", System.Data.SqlDbType.Money, 50);
            comm.Parameters["@Price"].Value = txtPrice.Text; 
            
            try
            { 
                conn.Open(); 
                comm.ExecuteNonQuery();

                // Clear text boxes after successful operation.
                txtTitle.Text = "";
                txtArtist.Text = "";
                txtRating.Text = "";
                txtPrice.Text = "";
            }
            catch 
            { 
                dbErrorLabel.Text = "Error adding the DVD!";
            }
            finally 
            { 
                conn.Close();
            }
        }
    }
}