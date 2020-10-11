using E_Learning.appData;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Data;

namespace E_Learning.appData
{
    public class Connection
    {
        public static readonly string sp_insertRegisteration = "sp_insertRegisteration";
        public static readonly string sp_insertexception = "sp_insertexception";
        private static SqlConnection sq;
        public static SqlConnection createConnection()
        {
            sq = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;Initial Catalog=ELearningdb;Integrated Security=True");
            return sq;
        }
        public static void insertException(String exname,String exdescription,String pagename)
        {
            SqlCommand cmd = new SqlCommand(sp_insertexception, sq);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.Add(new SqlParameter("@exname", SqlDbType.NVarChar)).Value = exname;
            cmd.Parameters.Add(new SqlParameter("@pagename", SqlDbType.NVarChar)).Value = pagename;
            cmd.Parameters.Add(new SqlParameter("@exdescription", SqlDbType.NVarChar)).Value = exdescription;


            cmd.ExecuteNonQuery();
        }
    }
}