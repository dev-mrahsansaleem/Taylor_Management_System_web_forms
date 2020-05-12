<%@ Page Title="" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="true" CodeBehind="Customer.aspx.cs" Inherits="TMS_WEB.Customer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Customer Page</h1>
<%--    <div class="col-8 text-center">
        <div class="row">
            <!-- BootStarp form User Add -->

            <div class="col-6">
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
                        <asp:TextBox ID="txtMobileNo" class="form-control" placeholder="Enter Remarks" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label class="float-left" for="txtMobileNo">Enter Remarks: </label>
                        <asp:TextBox ID="txtRemarks" class="form-control" placeholder="Enter Remarks" runat="server"></asp:TextBox>
                    </div>

                    <asp:Label ID="Label2" Text="msg lbl" runat="server" ForeColor="Red"></asp:Label><br />
                    <asp:Button ID="Button1" class="my-3 mx-2 px-4 btn btn-primary" runat="server" Text="ADD" OnClick="Button1_Click" />
                    <asp:Button ID="Button2" runat="server" Text="Search/Edit/Delete" class="my-3 mx-2 px-4 btn btn-primary"/>
                </form>
            </div>
            <!-- BootStarp form User Add -->

            <!-- Measurements -->
            <div class="col-6">
                <form >
                    <div class="form-group">
                        <label class="float-left" for="txtMeaurements">Add Measurements: </label>
                        <asp:Label ID="Label1" Text="msg lbl" runat="server" ForeColor="Red"></asp:Label><br />
                    <asp:LinkButton ID="Button3" class="my-3 mx-2 px-4 btn btn-primary" runat="server" OnClick="Button3_Click">ADD Meaurements</asp:LinkButton>
                    </div>
                </form>
            </div>


        </div>
        
    </div>--%>
        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" AutoGenerateColumns="False" DataKeyNames="cId" DataSourceID="SqlDataSource1" ShowFooter="True">
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
                        &nbsp;<asp:LinkButton OnClick="Button3_Click" ID="lbMeausurements" runat="server" CausesValidation="False"  Text="ADD Meaurements"></asp:LinkButton>
                    </ItemTemplate>


                </asp:TemplateField>
                <asp:TemplateField HeaderText="cId" InsertVisible="False" SortExpression="cId">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("cId") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("cId") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:LinkButton OnClick="LinkB1_Click" ID="LinkB1" runat="server">Insert</asp:LinkButton>
                    </FooterTemplate>
                </asp:TemplateField>


                <asp:TemplateField HeaderText="cFullName" SortExpression="cFullName">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("cFullName") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("cFullName") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtfullName" class="form-control" placeholder="Enter Full Name" runat="server"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>



                <asp:TemplateField HeaderText="cCNIC" SortExpression="cCNIC">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("cCNIC") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("cCNIC") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtCNIC" class="form-control" placeholder="Enter CNIC" runat="server"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>


                <asp:TemplateField HeaderText="cAddress" SortExpression="cAddress">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("cAddress") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("cAddress") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtAddress" class="form-control" placeholder="Enter Address" runat="server"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>


                <asp:TemplateField HeaderText="cMobileNo" SortExpression="cMobileNo">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("cMobileNo") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("cMobileNo") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtMobileNo" class="form-control" placeholder="Enter Remarks" runat="server"></asp:TextBox>

                    </FooterTemplate>
                </asp:TemplateField>


                <asp:TemplateField HeaderText="cRemarks" SortExpression="cRemarks">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("cRemarks") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("cRemarks") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtRemarks" class="form-control" placeholder="Enter Remarks" runat="server"></asp:TextBox>
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

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:constr %>" DeleteCommand="DELETE FROM [Customers] WHERE [cId] = @cId" InsertCommand="INSERT INTO [Customers] ([cFullName], [cCNIC], [cAddress], [cMobileNo], [cRemarks]) VALUES (@cFullName, @cCNIC, @cAddress, @cMobileNo, @cRemarks)" SelectCommand="SELECT * FROM [Customers]" UpdateCommand="UPDATE [Customers] SET [cFullName] = @cFullName, [cCNIC] = @cCNIC, [cAddress] = @cAddress, [cMobileNo] = @cMobileNo, [cRemarks] = @cRemarks WHERE [cId] = @cId">
        <DeleteParameters>
            <asp:Parameter Name="cId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="cFullName" Type="String" />
            <asp:Parameter Name="cCNIC" Type="String" />
            <asp:Parameter Name="cAddress" Type="String" />
            <asp:Parameter Name="cMobileNo" Type="String" />
            <asp:Parameter Name="cRemarks" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="cFullName" Type="String" />
            <asp:Parameter Name="cCNIC" Type="String" />
            <asp:Parameter Name="cAddress" Type="String" />
            <asp:Parameter Name="cMobileNo" Type="String" />
            <asp:Parameter Name="cRemarks" Type="String" />
            <asp:Parameter Name="cId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>
