<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link rel="stylesheet" type="text/css" href="styleSheet.css"/>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <hr />
    <marquee scrollamount="10%" bgcolor="palevioletred" direction="right" font-color="white">
         Welcome to Our Website...
</marquee>
               




    <br />
    <div>
   <table align="center" style="border:groove">
       <tr>
           <td>
               <asp:Image ID="Image1" runat="server" ImageUrl="~/images/Home-img.jpg" Width="500px" />
           </td>
       </tr>

   </table>
</div>
        
</asp:Content>

