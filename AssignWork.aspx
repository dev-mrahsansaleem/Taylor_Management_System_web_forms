<%@ Page Title="" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="true" CodeBehind="AssignWork.aspx.cs" Inherits="TMS_WEB.AssignWork" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Assign work </h1>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="aId" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" ShowFooter="True">
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
            <asp:TemplateField HeaderText="aId" InsertVisible="False" SortExpression="aId">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("aId") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("aId") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:LinkButton OnClick="insert_Click" ID="insert" runat="server">insert</asp:LinkButton>
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="wId" SortExpression="wId">
                <EditItemTemplate>
                    <asp:Label ID="TextBox1" runat="server" Text='<%# Bind("wId") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("wId") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:DropDownList AutoPostBack="true" DataTextField="wFullName" DataValueField="wId" ID="workerIDs" DataSourceID="workerIdsGen" runat="server"></asp:DropDownList>
                </FooterTemplate>
            </asp:TemplateField>


            <asp:TemplateField HeaderText="mId" SortExpression="mId">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("mId") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("mId") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:DropDownList AutoPostBack="true" DataTextField="mType" DataValueField="mId" ID="customerIDs" DataSourceID="customersIdsGen" runat="server"></asp:DropDownList>
                </FooterTemplate>
            </asp:TemplateField>


            <asp:TemplateField HeaderText="astatus" SortExpression="astatus">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("astatus") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("astatus") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:DropDownList ID="status" runat="server">
                        <asp:ListItem>Select status</asp:ListItem>
                        <asp:ListItem>pending</asp:ListItem>
                        <asp:ListItem>complete</asp:ListItem>
                        <asp:ListItem>rejected</asp:ListItem>
                    </asp:DropDownList>
                </FooterTemplate>
            </asp:TemplateField>



            <asp:TemplateField HeaderText="aDueDate" SortExpression="aDueDate">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("aDueDate") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("aDueDate") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:Calendar ID="duedate" runat="server"></asp:Calendar>
                </FooterTemplate>
            </asp:TemplateField>


            <asp:TemplateField HeaderText="aRemarks" SortExpression="aRemarks">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("aRemarks") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("aRemarks") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="remarkss"  runat="server"></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="aPrice" SortExpression="aPrice">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("aPrice") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("aPrice") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="price" runat="server"></asp:TextBox>
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:constr %>" DeleteCommand="DELETE FROM [AssignedWork] WHERE [aId] = @aId" InsertCommand="INSERT INTO [AssignedWork] ([wId], [mId], [astatus], [aDueDate], [aRemarks], [aPrice]) VALUES (@wId, @mId, @astatus, @aDueDate, @aRemarks, @aPrice)" SelectCommand="SELECT * FROM [AssignedWork]" UpdateCommand="UPDATE [AssignedWork] SET [wId] = @wId, [mId] = @mId, [astatus] = @astatus, [aDueDate] = @aDueDate, [aRemarks] = @aRemarks, [aPrice] = @aPrice WHERE [aId] = @aId">
        <DeleteParameters>
            <asp:Parameter Name="aId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="wId" Type="Int32" />
            <asp:Parameter Name="mId" Type="Int32" />
            <asp:Parameter Name="astatus" Type="String" />
            <asp:Parameter Name="aDueDate" Type="DateTime" />
            <asp:Parameter Name="aRemarks" Type="String" />
            <asp:Parameter Name="aPrice" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="wId" Type="Int32" />
            <asp:Parameter Name="mId" Type="Int32" />
            <asp:Parameter Name="astatus" Type="String" />
            <asp:Parameter Name="aDueDate" Type="DateTime" />
            <asp:Parameter Name="aRemarks" Type="String" />
            <asp:Parameter Name="aPrice" Type="Int32" />
            <asp:Parameter Name="aId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="workerIdsGen" runat="server" ConnectionString="<%$ ConnectionStrings:constr %>" SelectCommand="SELECT [wId], [wFullName] FROM [Workers]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="customersIdsGen" runat="server" ConnectionString="<%$ ConnectionStrings:constr %>" SelectCommand="SELECT [mId], [mType] FROM [Measurement]"></asp:SqlDataSource>
</asp:Content>
