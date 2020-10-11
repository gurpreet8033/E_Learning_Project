using E_Learning.appData;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Learning
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = Connection.createConnection();
            con.Open();
        }

        protected void checkbtnClick(object sender, EventArgs e)
        {
            string username, email,pass, query;

            username = fusertxt.Text;
            email = femailtxt.Text;

            if (checkbtn.Text == "Authenticate")
            {
                query = "select * from m_user where name='" + username + "'and email='" + email + "'";

                SqlCommand sc = new SqlCommand(query, con);
                SqlDataReader sr = sc.ExecuteReader();


                if (sr.Read())
                {
                    checkbtn.Text = "Update Password";
                    passtxt.Enabled = true;
                }
            }
            else
            {
                query = "update m_user set password='" + passtxt.Text + "' where email='" + femailtxt.Text + "'";
                new SqlCommand(query, con).ExecuteNonQuery();
            }
        }
    }
}