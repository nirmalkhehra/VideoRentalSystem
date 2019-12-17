using System;
using System.Data;
using System.Data.SqlClient;
namespace VideoRentalSystemLatest
{
    public class DataBaseClass
    {
        SqlConnection con;
        String Constr = @"Data Source=LAPTOP-RAKIOMBV\SQLEXPRESS;Initial Catalog=VideoRentalSystem;Integrated Security=True";
        SqlCommand command;
        SqlDataReader reader;

        public int InsDelUpt(String qry)
        {

            con = new SqlConnection(Constr);
            con.Open();
            command = new SqlCommand(qry, con);
            int y = command.ExecuteNonQuery();

            con.Close();
            return y;
        }


        public DataTable AllRecords(String qry)
        {
            con = new SqlConnection(Constr);

            con.Open();
            command = new SqlCommand(qry, con);

            reader = command.ExecuteReader();

            DataTable dt = new DataTable();

            dt.Load(reader);

            con.Close();

            return dt;
        }



    }

}
