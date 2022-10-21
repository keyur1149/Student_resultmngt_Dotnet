<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Students/StudentMaster.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="StudentResultManagement.Views.Students.Login" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        * {
            font-family: Poppins;
        }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
    <div class="container-fulid">
        <div class="row">
</div>
        <div class="row" >
            <div class="col"></div>
            <div class="col">
                <form>
      <div class="mb-3">
        <label for="UsnTb" class="form-label">Student USN</label>
        <input type="text" class="form-control" id="UsnTb" aria-describedby="UsnHelp" autocomplete="off" runat="server" required="required">
        <div id="UsnHelp" class="form-text">Enter your Student Serial Number To Fetch the results</div>
      </div>
  <div class="mb-3 form-check">
    <input type="checkbox" class="form-check-input"  >
    <label class="form-check-label" for="exampleCheck1">Check me out</label>
  </div>
                    <div  class="d-grid">
                        <label id="ErrMsg" class="text-danger" runat="server"></label>
                          <asp:Button Text="Submit" ID="LoginBtn" class="btn btn-warning btn-block" runat="server" OnClick="LoginBtn_Click"/>
                        </div>
</form>
            </div>
            <div class="col"></div>
        </div>
    </div>
        
</asp:Content>
