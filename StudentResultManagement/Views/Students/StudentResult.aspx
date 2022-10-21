<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Students/StudentMaster.Master" AutoEventWireup="true" CodeBehind="StudentResult.aspx.cs" Inherits="StudentResultManagement.Views.Students.StudentResult" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        *{
            font-family:Poppins;
        }
    </style>
    <script type="text/javascript">
        function Print_Panel()
        {
            var PGrid = document.getElementById('<%=MarksCard1.ClientID %>');
            PGrid.border = 0;
            var Pwin = window.open('', 'Print Grid', 'left=100,top-100,width=1024,height=1200,tollbar=0,scrollbars=1,status=0,resizable=1');
        Pwin.document.write(PGrid.outerHTML);
            Pwin.document.close();
            Pwin.focus();
            Pwin.print();
            //Pwin.close();
        }

    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-3">
                <img src="../../Assets/Images/logo.png"/>
            </div>
            <div class="col-md-7">
                 <h3>DHARAMSINH DESAI UNIVERSITY</h3>
            </div>
            <div class="col-md-2">
                 <img src="../../Assets/Images/logo.png"/>
            </div>
        </div>

        <div class="row mt-2 mb-4">
            <div class="col-md-1"></div>
            <div class="col-md-10">
                <table class="table table-bordered table-warning" >
                    <tr>
                        <td><h5> DHARAMSINH DESAI UNIVERSITY </h5></td>
                        <a href="../../libman.json">../../libman.json</a>
                         <td><span class="h5"> Course Name: </span><span class="h6">Comp. Engg</span></td>
                         <td><span class="h5"> Department Name: </span><span class="h6">Engineering</span></td>
                         <td><span class="h5">Student USN:</span><span class="h6" id="USNLbl" runat="server">ST001</span></td>
                    </tr>
                     <tr>
                        <td><span class="h5"> Student Name: </span><span class="h6 text-danger" id="STNameLbl" runat="server">kumar singh</span></td>
                         <td><span class="h5"> Father's Name: </span><span class="h6 text-danger" id="FnameLbl" runat="server">singh</span></td>
                         <td><span class="h5"> Student Gender: </span><span class="h6 text-danger" id="GenderLbl" runat="server">Male</span></td>
                         <td class="d-grid"><asp:Button Text="Print" runat="server" class="btn btn-danger btn-block " OnClientClick="Print_Panel()"/> </td>
                    </tr>

                </table>
            </div>
            <div class="col-md-1"></div>
        </div>


        <div class="row">
            <div class="col-md-1">

            </div>
             <div class="col-md-10">
                 <table class="table table-bordered table-primary" id="MarksCard1" runat="server">
                <tr>
                    <th>Courses</th><th>Type</th><th>Full Marks</th><th>Passing Marks</th><th>Obtained Marks</th>
                </tr>
                <tr>
                    <td>Algorithms</td><td>Theory</td><td>30</td><td>15</td><td><span id="AMarks" runat="server">xxx</span></td>
                </tr>
                
                <tr>
                    <td>C programming</td><td>Practical</td><td>30</td><td>15</td><td><span id="CMarks" runat="server">xxx</span></td>
                </tr>

                <tr>
                    <td>Java Programming</td><td>Practical</td><td>30</td><td>15</td><td><span id="JavaMarks" runat="server">xxx</span></td>
                </tr>

                <tr>
                    <td>DBMS</td><td>Theory</td><td>30</td><td>15</td><td><span id="DBMSMarks" runat="server">xxx</span></td>
                </tr>

                <tr>
                    <td>Python Programming</td><td>Practical</td><td>30</td><td>15</td><td><span id="PythonMarks" runat="server">xxx</span></td>
                </tr>

                <tr>
                    <td>Total:   <span class="h6 text-primary">150</span></td><td colspan="2">Marks Obtained <span class="h5 text-danger" id="TotalObtainedLbl" runat="server">Obt</span></td><td><span class="h6">pourcentage</span><span id="pourcentageLbl" class="h6 text-danger" runat="server">%%%</span></td><td><span class="h6 text-primary">Decision</span><span id="DecisionLbl" runat="server" class="h6 text-primary">Decision</span></td>
                </tr>
            </table>
            </div>
             <div class="col-md-1">

            </div>
            
        </div>
    </div>
</asp:Content>
