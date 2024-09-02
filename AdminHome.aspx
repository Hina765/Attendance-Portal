<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminHome.aspx.cs" Inherits="AdminHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="AdminStyle.css"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/logo1.png"/>
    </div>
      
     <div>
         <center>
            <h2>Login</h2>
            <label for="txtUsername">Username:</label>
            <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox><br /><br />
            <label for="txtPassword">Password:</label>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox><br /><br />
            <asp:Button ID="Button2" runat="server" Text="Login" OnClick="btnLogin_Click" />
            <br />
            <asp:Label ID="lblMessage" runat="server" ForeColor="Red" ></asp:Label>
            <br />
            <asp:LinkButton ID="lnkBack" runat="server" PostBackUrl="~/Home.aspx">Go Back</asp:LinkButton>
         </center>
        </div>  
    </form>
</body>
</html>
