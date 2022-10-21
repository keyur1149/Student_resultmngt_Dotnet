<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="StudentResultManagement.Views.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Libraries/Bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
    <style>
        #Mrow{
            background-image: url(../Assets/Images/1.jpg);
            height:695px;
            background-size:cover;
        }
        .navbar{
            background-color:transparent;
        }
        #NvaRow{
            opacity:0.7;
        }
    </style>
</head>
<body>
   <!-- <form id="form1" runat="server">
        <div>
        </div>
    </form>-->
    <div class="container-fluid">
        <div class="row" id="Mrow">
            <div class="col">
                <div class="row navbar" id="NvaRow">
                    <div class="col">
                        <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">DDU</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item">
          <a class="nav-link" href="Students/Login.aspx">Student</a>
        </li>
          <li class="nav-item">
          <a class="nav-link" href="Admin/Login.aspx">Admin</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Logout</a>
        </li>
        </ul>
    </div>
  </div>
</nav>
                    </div>
                </div>
               <!-- <h1>Main Page</h1>-->
                <div class="row"></div>
                <div class="row" style="height:200px"></div>
                <div class="row" id="NvaRow" >
                    <div class="col-md-2"></div>
                    <div class="col bg-light" style="text-align:center">
                        <h1 class="text-light-success">Dharmsinh Desai University</h1>
                        <div class="row">
                        <div class="col-md-1"></div>
                        <div class="col-md">
                            <h3>Quality     Discipline     Excellence</h3></div>
                        </div>
                        <div class="col-md-1"></div>
                    </div>
                    <div class="col-md-2"></div>
                </div>
            </div>
        </div>
        <div class="row" style="display:flex;">
            <div class="col"></div>
            <div class="col">
                <div class="row">
                    <div class="col">

                    </div>
                    <div class="col">
                        <h3>Excellence</h3>
                        <p>we are one of the leading Institution providing high level education driven by discipline.</p>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="row">
                    <div class="col">

                    </div>
                    <div class="col">
                        <h3>Excellence</h3>
                        <p>we are one of the leading Institution providing high level education driven by discipline.</p>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="row">
                    <div class="col">

                    </div>
                    <div class="col">
                        <h3>Excellence</h3>
                        <p>we are one of the leading Institution providing high level education driven by discipline.</p>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="row">
                    <div class="col">

                    </div>
                    <div class="col">
                        <h3>Excellence</h3>
                        <p>we are one of the leading Institution providing high level education driven by discipline.</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col"><h6 class="text-secondary text-center">Mycodespace Technological University 2022</h6></div>
        </div>
    </div>
    </div>
</body>
</html>
