<%@ Page Title="" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="true" CodeBehind="Worker.aspx.cs" Inherits="TMS_WEB.Worker" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>worker page</h1>
<!-- BootStarp form User Add -->
    <div class="col-3">
        <form >
            <div class="form-group">
                <label class="float-left" for="txtfullName">Enter Full Name: </label>
                <asp:TextBox ID="txtfullName" class="form-control" placeholder="Enter Full Name" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label class="float-left" for="txtCNIC">Enter CNIC: </label>
                <asp:TextBox ID="txtCNIC" class="form-control" placeholder="Enter CNIC" runat="server"></asp:TextBox>
            </div>
                        
            <div class="form-group">
                <label class="float-left" for="txtAddress">Enter Address: </label>
                <asp:TextBox ID="txtAddress" class="form-control" placeholder="Enter Address" runat="server"></asp:TextBox>
            </div>

            <div class="form-group">
                <label class="float-left" for="txtMobileNo">Enter Mobile No: </label>
                <asp:TextBox ID="txtMobileNo" class="form-control" placeholder="Enter Mobile No" runat="server"></asp:TextBox>
            </div>

            <div class="form-group">
                <label class="float-left" for="txtJoiningDate">Select Date of Joining: </label>
                <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
            </div>


            <div class="form-check float-left">
                <asp:CheckBox class="form-check-input" ID="active" runat="server" />
                <label class="form-check-label" for="active">Active</label>
            </div>
            <asp:Label ID="lblmsg" Text="msg lbl" runat="server" ForeColor="Red"></asp:Label><br />
            <asp:Button ID="Button1" class="my-3 mx-2 px-4 btn btn-primary" runat="server" Text="ADD" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="Search/Edit/Delete" class="my-3 mx-2 px-4 btn btn-primary"/>
        </form>

    </div>
<!-- BootStarp form User Add -->
        <asp:GridView ID="GridView1" runat="server" Width="60%" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" AllowPaging="True" AllowSorting="True">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
</asp:Content>
