using E_Learning.appData;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Learning 
{
    public partial class LoginPage : System.Web.UI.Page
    {
       
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = Connection.createConnection();
            con.Open(); 
        }
        protected void Login(object sender, EventArgs e)
        {
            string email, pass, query;
            try
            {
                email = emailtxt.Text;
                pass = passtxt.Text;
                query = "select * from m_user where email='" + email + "' and password='" + pass + "'";

                SqlCommand cmd = new SqlCommand(query, con);

                DataTable dt = new DataTable();
                SqlDataAdapter sd = new SqlDataAdapter(cmd);
                sd.Fill(dt);

                if (dt.Rows.Count > 0)
                {
                    //Session Creation
                    Session["userid"] = dt.Rows[0]["id"];
                    Session["username"] = dt.Rows[0]["name"];
                    con.Close();
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert", "alert('Login Successfull')", true);
                    Response.Redirect("home_page.aspx");
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert", "alert('login Unsuccessfull')", true);
                    return;
                }
            }
            catch(Exception ex)
            {
                Connection.insertException(ex.GetType().Name,ex.Message, this.GetType().Name);

            }

        }

      /*  protected void forgotbtn_Click(object sender, EventArgs e)
        {
            string username,email,query;

            username=fusertxt.Text;
            email = femailtxt.Text;
            
            qyery="select * from m_user where name='"+username+"'and email='"+email+"'";
            
            SqlCommand sc=new SqlCommand(query,con);
            SqlDataReader sr=sc.ExecuteReader();


            if(sr.Read())
                {
            ScriptManager.RegisterClientScriptBlock(this,this.GetType(),"alert","alert('reset your password')",true);
                return;
                }
            
        }*/
    }
}