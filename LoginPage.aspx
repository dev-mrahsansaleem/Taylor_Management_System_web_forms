<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="TMS_WEB.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/popper.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
                <h1>Login Page</h1>
                <div class="col-3">
                    <form >
                        <div class="form-group">
                        <label class="float-left" for="usernameDropDownList">Enter User Name: </label>
                            <asp:DropDownList ID="usernameDropDownList"  runat="server" class="form-control"  placeholder="Enter User Name"></asp:DropDownList>
                        </div>
                        <div class="form-group">
                        <label class="float-left" for="txtPassword">Enter Password: </label>
         
                            <asp:TextBox ID="Txtpassword" class="form-control" placeholder="Enter Password" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-check float-left">
                        <input type="checkbox" class="form-check-input" id="active">
                        <label class="form-check-label" for="active">Active</label>
                        </div>
                        <asp:Label ID="lblmsg" Text="msg lbl" runat="server" ForeColor="Red"></asp:Label>
                        <br />
                        <asp:Button ID="Button1" runat="server" class="m-3 px-4 btn btn-primary" Text="Login" OnClick="BtnLogin_Click"></asp:Button>
                    </form>
                </div>
            </center>
        </div>
    </form>
</body>
</html>
