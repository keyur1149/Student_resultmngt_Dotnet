using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace StudentResultManagement.Models
{
    public class Functions
    {
        private SqlConnection Con;
        private SqlCommand cmd;
        private DataTable dt;
        private string ConStr;
        private SqlDataAdapter sda;
         public Functions()
         {
            ConStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Asus\OneDrive\Documents\StudentResultDb.mdf;Integrated Security=True;Connect Timeout=30";
            Con = new SqlConnection(ConStr);
            cmd = new SqlCommand
            {
                Connection = Con
            };

        }

        public DataTable GetDatas(string Query)
        {
            dt = new DataTable();
            sda = new SqlDataAdapter(Query,ConStr);
            _ = sda.Fill(dt);
            return dt;
        }

        public int Setdata(string Query)
        {
            if (Con.State == ConnectionState.Closed)
            {
                Con.Open();
            }
            cmd.CommandText = Query;
            int cnt = cmd.ExecuteNonQuery();
            Con.Close();
            return cnt;
        }
    }
    
}