using System;

namespace StudentResultManagement.Views.Students
{
    public partial class StudentResult : System.Web.UI.Page
    {
        private Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            FetchData();
            GetResult();
        }
        private void GetResult()
        {
            //string Query = "Select Algo, CProg,Java, DBMS, Python, Total, Pourcentage,Decision from ResultTbl where Student='{0}'";
            //Query = string.Format(Query, Login.USN);
            //AMarks.InnerText = Con.GetDatas(Query).Columns["Algo"].ToString();
            //AMarks.DataBind();
            // ResultGV.DataSource Con.GetDatas(Query);
            // ResultGV.DataBind();
            string Query = "Select Algo, CProg,Java, DBMS, Python,Total, Pourcentage,Decision from ResultTbl where Student='{0}'";
            Query = string.Format(Query, Login.USN);
            AMarks.InnerText = Con.GetDatas(Query).Rows[0]["Algo"].ToString();
            CMarks.InnerText = Con.GetDatas(Query).Rows[0]["CProg"].ToString();
            JavaMarks.InnerText = Con.GetDatas(Query).Rows[0]["Java"].ToString();
            DBMSMarks.InnerText = Con.GetDatas(Query).Rows[0]["DBMS"].ToString();
            PythonMarks.InnerText = Con.GetDatas(Query).Rows[0]["Python"].ToString();
            TotalObtainedLbl.InnerText = Con.GetDatas(Query).Rows[0]["Total"].ToString();
            DecisionLbl.InnerText = Con.GetDatas(Query).Rows[0]["Decision"].ToString();
            pourcentageLbl.InnerText = Con.GetDatas(Query).Rows[0]["Pourcentage"].ToString();
            AMarks.DataBind();
            CMarks.DataBind();
            JavaMarks.DataBind();
            DBMSMarks.DataBind();
            PythonMarks.DataBind();
            pourcentageLbl.DataBind();
            DecisionLbl.DataBind();
            TotalObtainedLbl.DataBind();
        }
        private void FetchData()
        {
            USNLbl.InnerText = Login.USN;
            STNameLbl.InnerText = Login.Name;
            FnameLbl.InnerText = Login.FName;
            GenderLbl.InnerText = Login.Gender;
        }
    }
}