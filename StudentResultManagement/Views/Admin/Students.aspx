<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Students.aspx.cs" Inherits="StudentResultManagement.Views.Admin.Students" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-3">
                <div class="mb-3">
                    <label for="UsnTb" class="form-label">Student USN</label>
                    <input type="text" class="form-control" id="UsnTb" autocomplete="off" runat="server" required="required">
                </div>
            </div>
            <div class="col-md-3">
                <div class="mb-3">
                    <label for="NameTb" class="form-label">Student Name</label>
                    <input type="text" class="form-control" id="NameTb" autocomplete="off" runat="server" required="required">
                </div>
            </div>
             <div class="col-md-3">
                <div class="mb-3">
                    <label for="FNameTb" class="form-label">Father's Name</label>
                    <input type="text" class="form-control" id="FNameTb" autocomplete="off" runat="server" required="required">
                </div>
            </div>
            <div class="col-md-3">
                <div class="mb-3">
                    <label for="DOBTb" class="form-label">Date Of Birth</label>
                    <input type="date" class="form-control" id="DOBTb" autocomplete="off" runat="server" >
                </div>
            </div>

        </div>
        <div class="row">
             <div class="col-md-1">
                
            </div>
            <div class="col-md-3">
                <div class="mb-3">
                    <label for="AddressTb" class="form-label">Student Address</label>
                    <input type="text" class="form-control" id="AddressTb" autocomplete="off" runat="server" required="required">
                </div>
            </div>
            <div class="col-md-4">
                <div class="mb-3">
                    <label for="PhoneTb" class="form-label">Student Phone</label>
                    <input type="text" class="form-control" id="PhoneTb" autocomplete="off" runat="server" required="required">
                </div>
            </div>
             <div class="col-md-4">
                <div class="mb-3">
                    <label for="GenderTb" class="form-label">Gender</label>
                    <asp:DropDownList runat="server" class="form-control" id="GenderCb">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <div class="col-1">
                
            </div>
        </div>
        <div class="row">
            <label id="ErrMsg" class="text-danger text-center" runat="server"></label>
            <div class="col d-grid"><asp:Button Text="Edit" ID="EditBtn" class="btn btn-success btn-block" runat="server" OnClick="EditBtn_Click"/></div>
            <div class="col d-grid"><asp:Button Text="Save" ID="SaveBtn" class="btn btn-primary btn-block" runat="server" OnClick="SaveBtn_Click"/></div>
            <div class="col d-grid"><asp:Button Text="Delete" ID="DeleteBtn" class="btn btn-danger btn-block" runat="server" OnClick="DeleteBtn_Click"/></div>
        </div>
        <div class="row">
            <h3 class="text-success text-center">Student List</h3>
            <asp:GridView ID="StudentGV" class="table" runat="server" AutoGenerateSelectButton="True" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" OnSelectedIndexChanged="StudentGV_SelectedIndexChanged">
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
