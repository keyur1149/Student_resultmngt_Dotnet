<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Results.aspx.cs" Inherits="StudentResultManagement.Views.Admin.Results" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
    <div class="container-fluid">
<div class="row">
<div class="col-md-3">
<div class="mb-3">
<label for="GenderCb" class="form-label">Student</label>
    <asp:DropDownList runat="server" class="form-control" ID="StudentCb"></asp:DropDownList>
</div>
</div>
<div class="col-md-3">
    <div class="mb-3">
<label for="AlgoTb" class="form-label">Algorithm</label>
<input type="text" class="form-control" id="AlgoTb" autocomplete="off" runat="server" required="required"/>
</div>
</div>
<div class="col-md-3"> 
<div class="mb-3">
<label for="CProgTb" class="form-label">C Programming</label>
<input type="text" class="form-control" id="CProgTb" autocomplete="off" runat="server" required="required" />
</div>
</div>
    <div class="col-md-3">
<div class="mb-3">
<label for="JavaTb" class="form-label">Java Programming</label>
<input type="text" class="form-control" id="JavaTb" autocomplete="off" runat="server" required="required" />
</div>
</div>
</div>
        <div class="row">
<div class="col-md-1">
</div>
<div class="col-md-3">
<div class="mb-3">
<label for="DBMSTb" class="form-label">DBMS</label>
<input type="text" class="form-control" id="DBMSTb" autocomplete="off" runat="server" required="required" />
</div>
</div>
            <div class="col-md-4">
<div class="mb-3">
<label for="PythonTb" class="form-label">Python Programming</label>
<input type="text" class="form-control" id="PythonTb" autocomplete="off" runat="server" required="required" />
</div>
</div>
            <div class="col-md-3">
<div class="mb-3">
<label for="DBMSTb" class="form-label">Total</label>
<h5 id="TotalTb" runat="server" class="text-success">...</h5>
</div>
</div>
<div class="col-1">
</div>
</div>

        <div class="row">
            <label id="ErrMsg" class="text-danger text-center" runat="server"></label>
            <div class="col d-grid"><asp:Button Text="Edit" ID="EditBtn" class="btn btn-success btn-block" runat="server" OnClick="EditBtn_Click" /></div>
            <div class="col d-grid"><asp:Button Text="Save" ID="SaveBtn" class="btn btn-primary btn-block" runat="server" OnClick="SaveBtn_Click" /></div>
            <div class="col d-grid"><asp:Button Text="Delete" ID="DeleteBtn" class="btn btn-danger btn-block" runat="server" OnClick="DeleteBtn_Click"/></div>
        </div>
        <div class="row">
            <h3 class="text-success text-center">Results List</h3>
            <asp:GridView ID="ResultGV" class="table" runat="server" AutoGenerateSelectButton="True" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal"  OnSelectedIndexChanged="ResultGV_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <SortedAscendingCellStyle BackColor="#F4F4FD" />
                <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                <SortedDescendingCellStyle BackColor="#D8D8F0" />
                <SortedDescendingHeaderStyle BackColor="#3E3277" />
            </asp:GridView>
        </div>
        </div>
</asp:Content>
