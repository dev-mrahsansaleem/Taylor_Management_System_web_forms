<%@ Page Title="" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="TMS_WEB.Users" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>User page</h1>
     <!-- 
              <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>  
           -->
<!-- BootStarp form User Add -->
    <div class="col-3">
        <form >
            <div class="form-group">
                <label class="float-left" for="txtfullName">Enter Full Name: </label>
                
                <asp:TextBox ID="txtfullName" class="form-control" placeholder="Enter Full Name" runat="server"></asp:TextBox>
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
            <asp:Button ID="Button2" runat="server" Text="Search/Edit/Delete" class="my-3 mx-2 px-4 btn btn-primary" OnClick="Button2_Click"/>
            <br />
        </form>

    </div>
<!-- BootStarp form User Add -->

        <asp:GridView OnRowCommand="GridView1_RowCommand" ID="GridView1" runat="server" Width="70%" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="uId" ShowFooter="True">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
            <Columns>
                <asp:TemplateField HeaderText="ID">
                    <ItemTemplate>
                        <asp:Label ID="lblID" runat="server" Text='<%# Eval("uId") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtID" Text='<%# Eval("uId") %>' runat="server"></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="TxtIDFooter" runat="server"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>



                <asp:TemplateField HeaderText="Full Name">
                    <ItemTemplate>
                        <asp:Label ID="LbluFullName" runat="server" Text='<%# Eval("uFullName") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtuFullName" Text='<%# Eval("uFullName") %>' runat="server"></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="TxtuFullNameFooter" runat="server"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>

                

                <asp:TemplateField HeaderText="User Name">
                    <ItemTemplate>
                        <asp:Label ID="LbluUserName" runat="server" Text='<%# Eval("uUserName") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtuUserName" Text='<%# Eval("uUserName") %>' runat="server"></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="TxtuUserNameFooter" runat="server"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>

                

                <asp:TemplateField HeaderText="Password">
                    <ItemTemplate>
                        <asp:Label ID="LbluPassword" runat="server" Text='<%# Eval("uPassword") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtuPassword" Text='<%# Eval("uPassword") %>' runat="server"></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="TxtuPasswordFooter" runat="server"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>

                

                <asp:TemplateField HeaderText="Type">
                    <ItemTemplate>
                        <asp:Label ID="LbluType" runat="server" Text='<%# Eval("uType") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtuType" Text='<%# Eval("uType") %>' runat="server"></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:DropDownList ID="dropuTypeFooter"  runat="server" class="form-control">
                            <asp:ListItem>Admin</asp:ListItem>
                            <asp:ListItem>Operator</asp:ListItem>
                        </asp:DropDownList>
                    </FooterTemplate>
                </asp:TemplateField>

                

                <asp:TemplateField HeaderText="IsActive">
                    <ItemTemplate>
                        <asp:Label ID="LbluIsActive" runat="server" Text='<%# Eval("uIsActive") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtuIsActive" Text='<%# Eval("uIsActive") %>' runat="server"></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:CheckBox ID="TxtuIsActiveFooter" runat="server" />
                    </FooterTemplate>
                </asp:TemplateField>


                <asp:TemplateField HeaderText="Actions">
                    <ItemTemplate>
                        <asp:ImageButton ImageUrl="~/Images/edit.png" runat="server" CommandName="edit" ToolTip="edit" Width="20px" Height="20px" />
                        <asp:ImageButton ImageUrl="~/Images/delete.png" runat="server" CommandName="delete" ToolTip="delete" Width="20px" Height="20px" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:ImageButton ImageUrl="~/Images/save.png" runat="server" CommandName="update" ToolTip="update" Width="20px" Height="20px" />
                        <asp:ImageButton ImageUrl="~/Images/cancel.png" runat="server" CommandName="cancel" ToolTip="cancel" Width="20px" Height="20px" />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:ImageButton ImageUrl="~/Images/addnew.png" runat="server" CommandName="insert" ToolTip="insert" Width="20px" Height="20px" />
                    </FooterTemplate>
                </asp:TemplateField>


            </Columns>
        </asp:GridView>
</asp:Content>
