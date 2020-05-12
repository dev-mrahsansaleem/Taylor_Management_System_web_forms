<%@ Page Title="" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="true" CodeBehind="Worker.aspx.cs" Inherits="TMS_WEB.Worker" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>worker page</h1>
<!-- BootStarp form User Add -->
    <%--<div class="col-3">
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

    </div>--%>
<!-- BootStarp form User Add -->
        <asp:GridView ID="GridView1" runat="server" Width="80%" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" AutoGenerateColumns="False" DataKeyNames="wId" DataSourceID="SqlDataSource1" ShowFooter="True">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:TemplateField ShowHeader="False">
                    <EditItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>


                <asp:TemplateField HeaderText="wId" InsertVisible="False" SortExpression="wId">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("wId") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("wId") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:LinkButton OnClick="Li3_Click" ID="Li3" runat="server">Insert</asp:LinkButton>
                    </FooterTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="wFullName" SortExpression="wFullName">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("wFullName") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("wFullName") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtfullName" class="form-control" placeholder="Enter Full Name" runat="server"></asp:TextBox>

                    </FooterTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="wCNIC" SortExpression="wCNIC">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("wCNIC") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("wCNIC") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtCNIC" class="form-control" placeholder="Enter CNIC" runat="server"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>


                <asp:TemplateField HeaderText="wAddress" SortExpression="wAddress">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("wAddress") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("wAddress") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                         <asp:TextBox ID="txtAddress" class="form-control" placeholder="Enter Address" runat="server"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="wMobileNo" SortExpression="wMobileNo">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("wMobileNo") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("wMobileNo") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                <asp:TextBox ID="txtMobileNo" class="form-control" placeholder="Enter Mobile No" runat="server"></asp:TextBox>

                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="wEmergencyContact" SortExpression="wEmergencyContact">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("wEmergencyContact") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("wEmergencyContact") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                <asp:TextBox ID="txtEMobileNo" class="form-control" placeholder="Enter Mobile No" runat="server"></asp:TextBox>

                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="wdateOfJoin" SortExpression="wdateOfJoin">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("wdateOfJoin") %>'></asp:TextBox>
                        
<%--                <asp:Calendar ID="Calendar" SelectedDate='<%# Bind("wdateOfJoin") %>' runat="server"></asp:Calendar>--%>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# Bind("wdateOfJoin") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        
                <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="uIsActive" SortExpression="uIsActive">
                    <EditItemTemplate>
                        <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("uIsActive") %>' />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("uIsActive") %>' />
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:CheckBox ID="isActive" runat="server" />
                    </FooterTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:constr %>" DeleteCommand="DELETE FROM [Workers] WHERE [wId] = @wId" InsertCommand="INSERT INTO [Workers] ([wFullName], [wCNIC], [wAddress], [wMobileNo], [wEmergencyContact], [wdateOfJoin], [uIsActive]) VALUES (@wFullName, @wCNIC, @wAddress, @wMobileNo, @wEmergencyContact, @wdateOfJoin, @uIsActive)" SelectCommand="SELECT * FROM [Workers]" UpdateCommand="UPDATE [Workers] SET [wFullName] = @wFullName, [wCNIC] = @wCNIC, [wAddress] = @wAddress, [wMobileNo] = @wMobileNo, [wEmergencyContact] = @wEmergencyContact, [wdateOfJoin] = @wdateOfJoin, [uIsActive] = @uIsActive WHERE [wId] = @wId">
        <DeleteParameters>
            <asp:Parameter Name="wId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="wFullName" Type="String" />
            <asp:Parameter Name="wCNIC" Type="String" />
            <asp:Parameter Name="wAddress" Type="String" />
            <asp:Parameter Name="wMobileNo" Type="String" />
            <asp:Parameter Name="wEmergencyContact" Type="String" />
            <asp:Parameter Name="wdateOfJoin" Type="DateTime" />
            <asp:Parameter Name="uIsActive" Type="Boolean" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="wFullName" Type="String" />
            <asp:Parameter Name="wCNIC" Type="String" />
            <asp:Parameter Name="wAddress" Type="String" />
            <asp:Parameter Name="wMobileNo" Type="String" />
            <asp:Parameter Name="wEmergencyContact" Type="String" />
            <asp:Parameter Name="wdateOfJoin" Type="DateTime" />
            <asp:Parameter Name="uIsActive" Type="Boolean" />
            <asp:Parameter Name="wId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
