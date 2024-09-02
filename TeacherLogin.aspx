<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TeacherLogin.aspx.cs" Inherits="TeacherLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div>
    
    
    <table class="login" align="center">
        <tr>
            <td class="a">
                <h2 align="center"> Teacher Login</h2>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                <table align="center">
                    <tr>
                        <td>
                            <asp:Label ID="lblunm" runat="server" Text="Username:"/>
                         </td>
                    </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtunm" runat="server" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblpsw" runat="server" Text="Password:"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtpsw" runat="server" TextMode="Password" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnlogin" runat="server" Text="Login" OnClick="btnlogin_Click" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblMessage" runat="server"  ForeColor="Red"/>
            </td>
        </tr>
        </table>
         </td>
     </tr>
    </table>
</div>


</asp:Content>

