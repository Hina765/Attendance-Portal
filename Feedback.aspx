<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <div>
            <table align="right" style="border:groove ">
                <tr>
                    <td>
                        <asp:HyperLink ID="hyperback" runat="server" NavigateUrl="~/Home.aspx" Text="Go Back" BorderColor="#000028"/>
                    </td>
                </tr>
            </table>
        </div>   
<div>
 
    <table align="center" class="tbl">
        <tr>
            <td class="fdheader">
                <h3 align="center">Feedback Form</h3>
            </td>
        </tr>
       
            
        
        <tr>
            <td>
                <table class="tblfd" align="center">
                    <tr>
                        <td>
                            <asp:Label ID="lblunm" runat="server" Text="Name :"></asp:Label>
                        </td>
                        
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="txtunm" runat="server"></asp:TextBox>
                        </td>
                        
                    </tr>
                     <tr>
                        <td>
                            <asp:RequiredFieldValidator ID="requnm" runat="server" ErrorMessage="Please Enter Your Name" ControlToValidate="txtunm" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblemail" runat="server" Text="Email ID :"></asp:Label>
                            
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="txtemail" runat="server" TextMode="Email"></asp:TextBox>
                        </td>
                    </tr>
                     <tr>
                        <td>
                            <asp:RequiredFieldValidator ID="reqemail" runat="server" ErrorMessage="Please Enter Your Email ID" ControlToValidate="txtemail" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblcomment" runat="server" Text="Comment :"></asp:Label>
                            
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="txtcomment" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:RequiredFieldValidator ID="reqcomment" runat="server" ErrorMessage="Please Enter Your Feedback" ControlToValidate="txtcomment" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="btnsubmit" runat="server" Text="Submit" BackColor="#99CCFF" Font-Bold="True" OnClick="btnsubmit_Click" />
                            
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblresult" runat="server" Font-Bold="True" ForeColor="Blue" />
                        </td>
                    </tr>
                   
                </table>
            </td>
        </tr>
    </table>
</div>   
    
</asp:Content>

