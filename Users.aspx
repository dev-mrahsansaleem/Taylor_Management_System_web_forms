<%@ Page Title="" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="TMS_WEB.Users" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>User page</h1>
     <!-- 
              <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>  
           -->
<!-- BootStarp form User Add -->
   <%-- <div class="col-3">
        <form >
            <div class="form-group">
                <label class="float-left" for="txtfullName">Enter Full Name: </label>
                
                <asp:TextBox  ID="txtfullName" class="form-control" placeholder="Enter Full Name" runat="server"></asp:TextBox>
            </div>


            <div class="form-group">
                <label class="float-left" for="txtusername">Enter User Name: </label>
                <asp:TextBox ID="txtusername" class="form-control" placeholder="Enter User Name" runat="server"></asp:TextBox>
            </div>


            <div class="form-group">
                <label class="float-left" for="txtPassword">Enter Password: </label>
                <asp:TextBox ID="txtPassword" class="form-control" placeholder="Enter Password" runat="server"></asp:TextBox>
            </div>


            <div class="form-group">
                <label class="float-left" for="userTypeDropDownList">Select User Type: </label>
                <asp:DropDownList ID="userTypeDropDownList"  runat="server" class="form-control">
                    <asp:ListItem>Admin</asp:ListItem>
                    <asp:ListItem>Operator</asp:ListItem>
                </asp:DropDownList>
            </div>
            

            <div class="form-check float-left">
                <asp:CheckBox class="form-check-input" ID="CheckBox1" runat="server" />
                <label class="form-check-label" for="active">Active</label>
            </div>
            <asp:Label ID="lblmsg" Text="msg lbl" runat="server" ForeColor="Red"></asp:Label><br />
            <asp:Button ID="Button1" class="my-3 mx-2 px-4 btn btn-primary" runat="server" Text="ADD" OnClick="Button1_Click" />
            
            
            <br />
        </form>

    </div>--%>
<!-- BootStarp form User Add -->
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="uId" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" ShowFooter="True">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:TemplateField HeaderText="uId" InsertVisible="False" SortExpression="uId">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("uId") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("uId") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:LinkButton OnClick="LButton1_Click" ID="LButton1" runat="server">Insert</asp:LinkButton>
                        </FooterTemplate>
                    </asp:TemplateField>


                    <asp:TemplateField HeaderText="uFullName" SortExpression="uFullName">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("uFullName") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("uFullName") %>'></asp:Label>
                        </ItemTemplate>

                        <FooterTemplate>
                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        </FooterTemplate>
                    
                    </asp:TemplateField>


                    <asp:TemplateField HeaderText="uUserName" SortExpression="uUserName">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("uUserName") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("uUserName") %>'></asp:Label>
                        </ItemTemplate>
                        
                        <FooterTemplate>
                            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="uPassword" SortExpression="uPassword">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("uPassword") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("uPassword") %>'></asp:Label>
                        </ItemTemplate>
                    
                        
                        <FooterTemplate>
                            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                        </FooterTemplate>
                    
                    </asp:TemplateField>


                    <asp:TemplateField HeaderText="uType" SortExpression="uType">
                        <EditItemTemplate>
                            <asp:DropDownList ID="userTypeDropDownList"  runat="server" SelectedValue='<%# Bind("uType") %>'>
                                <asp:ListItem>Admin</asp:ListItem>
                                <asp:ListItem>Operator</asp:ListItem>
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("uType") %>'></asp:Label>
                        </ItemTemplate>
                        
                        <FooterTemplate>
                            <asp:DropDownList ID="userTypeList1"  runat="server" >
                                <asp:ListItem>Admin</asp:ListItem>
                                <asp:ListItem>Operator</asp:ListItem>
                            </asp:DropDownList>
                        </FooterTemplate>
                    
                    
                    </asp:TemplateField>
                    
                    
                    <asp:TemplateField HeaderText="uIsActive" SortExpression="uIsActive">
                        <EditItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("uIsActive") %>' />
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("uIsActive") %>' Enabled="false" />
                        </ItemTemplate>
                        <FooterTemplate>
                             <asp:CheckBox ID="Chbox1" runat="server" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:constr %>" DeleteCommand="DELETE FROM [Users] WHERE [uId] = @uId" InsertCommand="INSERT INTO [Users] ([uFullName], [uUserName], [uPassword], [uType], [uIsActive]) VALUES (@uFullName, @uUserName, @uPassword, @uType, @uIsActive)" SelectCommand="SELECT * FROM [Users]" UpdateCommand="UPDATE [Users] SET [uFullName] = @uFullName, [uUserName] = @uUserName, [uPassword] = @uPassword, [uType] = @uType, [uIsActive] = @uIsActive WHERE [uId] = @uId">
                <DeleteParameters>
                    <asp:Parameter Name="uId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="uFullName" Type="String" />
                    <asp:Parameter Name="uUserName" Type="String" />
                    <asp:Parameter Name="uPassword" Type="String" />
                    <asp:Parameter Name="uType" Type="String" />
                    <asp:Parameter Name="uIsActive" Type="Boolean" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="uFullName" Type="String" />
                    <asp:Parameter Name="uUserName" Type="String" />
                    <asp:Parameter Name="uPassword" Type="String" />
                    <asp:Parameter Name="uType" Type="String" />
                    <asp:Parameter Name="uIsActive" Type="Boolean" />
                    <asp:Parameter Name="uId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </asp:Content>
