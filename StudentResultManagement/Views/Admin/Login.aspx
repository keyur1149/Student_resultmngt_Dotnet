<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="StudentResultManagement.Views.Admin.Login" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .md-3{
            font-family:Poppins;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
     <div class="container-fulid">
        <div class="row" style="height:100px">
            <div class="col"></div>
            <div class="col"></div>
            <div class="col"></div>
            <div class="col">
                <img src="../../ Assets/Images/LoginAvatar.png" />
            </div>
            <div class="col"></div>
        </div>
        <div class="row" >
            <div class="col"></div>
            <div class="col">
                <form>
                    <div class="mb-3">
    <label for="EmailIdTb" class="form-label">Admin ID</label>
    <input type="text" class="form-control" id="EmailIdTb" runat="server" aria-describedby="emailHelp" autocomplete="off">
    <div id="emailHelp" class="form-text">Enter your  Email Id</div>
  </div>
  <div class="mb-3">
    <label for="PasswordTb" class="form-label">Admin Password</label>
    <input type="text" class="form-control" id="PasswordTb" runat="server" aria-describedby="passHelp" autocomplete="off">
    <div id="passHelp" class="form-text">Enter your Admin Password!!!</div>
  </div>
                     <div  class="d-grid">
                        <label id="ErrMsg" class="text-danger" runat="server"></label>
                            <asp:Button runat="server" Text="Login" id="LoginBtn" class="btn btn-warning btn-block text-white" Height="42px" OnClick="LoginBtn_Click"/>
                            <!--<button type="submit" id="LoginBtn" class="btn btn-warning btn-block text-white">Login</button>-->
                        </div>
</form>
            </div>
            <div class="col"></div>
        </div>
    </div>

</asp:Content>
