using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net.NetworkInformation;
using E_Learning.appData;
using System.Data;

namespace E_Learning
{
    public partial class RegisterationPage : System.Web.UI.Page
    {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = Connection.createConnection();

            con.Open();
        }
        protected void registerUser(object sender, EventArgs e)
        {
            string name, dob, gender, phone, email, pass, cpass, type, status;

            try
            {
                throw new Exception("Guri");
                //Fetching Values
                pass = passtxt.Text;
                cpass = cpasstxt.Text;

                //Checking password Match
                if (pass == cpass)
                {
                    gender = (malerb.Checked == true) ? "M" : (femalerb.Checked == true) ? "F" : "O";
                    //Geting the gender Value
                    //if (malerb.Checked == true)
                    //    gender = "M";
                    //else if (femalerb.Checked == true)
                    //    gender = "F";
                    //else
                    //    gender = "O";

                    name = fnametxt.Text + " " + lnametxt.Text;

                    dob = dobtxt.Text;
                    email = emailtxt.Text;
                    phone = phonetxt.Text;
                    status = "A";

                    //Getting the dropdown Value kidhr gye?
                    type = typeddl.SelectedValue;

                    //Validating User Email
                    string query = "select email from m_user where email='" + email + "'";
                    DataTable dt = new DataTable();
                    SqlDataAdapter sd = new SqlDataAdapter(new SqlCommand(query, con));
                    sd.Fill(dt);

                    if (dt.Rows.Count != 0)
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert", "alert('Email already Exists!')", true);
                    }
                    else
                    {
                        //Making The Query
                        SqlCommand cmd = new SqlCommand(Connection.sp_insertRegisteration, con);
                        cmd.CommandType = CommandType.StoredProcedure;

                        cmd.Parameters.Add(new SqlParameter("@name", SqlDbType.VarChar)).Value = name;
                        cmd.Parameters.Add(new SqlParameter("@dob", SqlDbType.Date)).Value = dob;
                        cmd.Parameters.Add(new SqlParameter("@email", SqlDbType.VarChar)).Value = email;
                        cmd.Parameters.Add(new SqlParameter("@phone", SqlDbType.VarChar)).Value = phone;
                        cmd.Parameters.Add(new SqlParameter("@pass", SqlDbType.VarChar)).Value = pass;
                        cmd.Parameters.Add(new SqlParameter("@gender", SqlDbType.Char)).Value = gender;

                        cmd.Parameters.Add(new SqlParameter("@status", SqlDbType.Char)).Value = status;
                        cmd.Parameters.Add(new SqlParameter("@type", SqlDbType.Char)).Value = type;


                        // cmd.Prepare();
                        int ret = cmd.ExecuteNonQuery();
                        if (ret == -1)
                            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert", "alert('Error!')", true);
                        else
                            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert", "alert('Succesfully Registered')", true);
                        Response.Redirect("home_page.aspx");
                        cmd.Dispose();

                        con.Close();
                    }

                }

                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert", "alert('Password Mismatch!')", true);
                    return;

                }
                con.Close();
            }
            catch (Exception ex) {
                Connection.insertException(ex.GetType().Name, ex.Message, this.GetType().Name);
            }
        }
    }
}