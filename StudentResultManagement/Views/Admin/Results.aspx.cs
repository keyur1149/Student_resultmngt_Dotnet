using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Web;
//using System.Web.UI;
//using System.Web.UI.WebControls;

namespace StudentResultManagement.Views.Admin
{
    public partial class Results : System.Web.UI.Page
    {
        private Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            GetStudents();
            ShowResults();
        }
        private void GetStudents()
        {
            string Query = "Select * from StudentTbl";
            StudentCb.DataTextField = Con.GetDatas(Query).Columns["StUsn"].ToString();
            StudentCb.DataValueField = Con.GetDatas(Query).Columns["StUsn"].ToString();
            StudentCb.DataSource = Con.GetDatas(Query);
            StudentCb.DataBind();
        }
        private void ShowResults()
        {
            string Query = "Select RNum as [ResultId],Student,Algo as Algorithm, CProg as [C Programming],java,DBMS,Python as [Python Programming],Total,Pourcentage,Decision from ResultTbl";
            ResultGV.DataSource = Con.GetDatas(Query);
            ResultGV.DataBind();
        }
        protected void SaveBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string Usn = StudentCb.SelectedItem.Value;
                string Algo = AlgoTb.Value;
                string CProg = CProgTb.Value;
                string Java = JavaTb.Value;
                string DBMS = DBMSTb.Value;
                string Python = PythonTb.Value;
                int Total = Convert.ToInt32(AlgoTb.Value) + Convert.ToInt32(CProgTb.Value) + Convert.ToInt32(JavaTb.Value) + Convert.ToInt32(DBMSTb.Value) + Convert.ToInt32(PythonTb.Value);
                float Pourcentage = Total * 100 / 150;
                string Decision = Pourcentage < 50 ? "Fail" : "Pass";
                string Query = "insert into ResultTbl values('{0}', '{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}')";
                Query = string.Format(Query, Usn, Algo, CProg, Java, DBMS, Python, Total, Pourcentage, Decision);
                _ = Con.Setdata(Query);
                ShowResults();
                ErrMsg.InnerText = "Result Added !!!";
                AlgoTb.Value = "";
                JavaTb.Value = "";
                PythonTb.Value = "";
                DBMSTb.Value = "";
                CProgTb.Value = "";
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }

        protected void EditBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string Usn = StudentCb.SelectedItem.ToString();
                string Algo = AlgoTb.Value;
                string CProg = CProgTb.Value;
                string Java = JavaTb.Value;
                string DBMS = DBMSTb.Value;
                string Python = PythonTb.Value;
                int Total = Convert.ToInt32(AlgoTb.Value) + Convert.ToInt32(CProgTb.Value) + Convert.ToInt32(JavaTb.Value) + Convert.ToInt32(DBMSTb.Value) + Convert.ToInt32(PythonTb.Value);
                float Pourcentage = Total * 100 / 150;
                string Decision = Pourcentage < 50 ? "Fail" : "Pass";
                string Query = "update  ResultTbl set Student='{0}',Algo='{1}',CProg='{2}',Java='{3}',DBMS='{4}',Python='{5}',Total='{6}',Pourcentage='{7}',Decision='{8}'";
                Query = string.Format(Query, Usn, Algo, CProg, Java, DBMS, Python, Total, Pourcentage, Decision);
                _ = Con.Setdata(Query);
                ShowResults();
                ErrMsg.InnerText = "Result edited!!!";
                AlgoTb.Value = "";
                JavaTb.Value = "";
                PythonTb.Value = "";
                DBMSTb.Value = "";
                CProgTb.Value = "";
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }
        protected void ResultGV_SelectedIndexChanged(object sender, EventArgs e)
        { 
            StudentCb.SelectedItem.Value = ResultGV.SelectedRow.Cells[2].Text;
            AlgoTb.Value = ResultGV.SelectedRow.Cells[3].Text;
            CProgTb.Value = ResultGV.SelectedRow.Cells[4].Text;
            JavaTb.Value = ResultGV.SelectedRow.Cells[5].Text;
            DBMSTb.Value = ResultGV.SelectedRow.Cells[6].Text;
            PythonTb.Value = ResultGV.SelectedRow.Cells[7].Text;
        }
        protected void DeleteBtn_Click(object sender, EventArgs e)
        { 
            try
            {
                string Usn = StudentCb.SelectedItem.Value;
                string Query = "delete from ResultTbl where Student = '{0}'";
                Query = string.Format(Query, Usn);
                Con.Setdata(Query);
                ShowResults();
                ErrMsg.InnerText = "Result Deleted!!!";
                StudentCb.SelectedItem.Value = "";
                CProgTb.Value = "";
                JavaTb.Value = "";
                PythonTb.Value = "";
                AlgoTb.Value = "";
                DBMSTb.Value = "";

            }
            catch (Exception Ex)
            {

                ErrMsg.InnerText = Ex.Message;

            }
        }
    }
}