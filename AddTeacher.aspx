<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AddTeacher.aspx.cs" Inherits="AddTeacher" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

    .style3
    {
        height: 19px;
    }
    .style2
    {
        width: 394px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <table class="tbl" align="center">
        <tr>
            <td class="tblhead">
                ADD TEACHER</td>
        </tr>
        <tr>
            <td class="style3">
            </td>
        </tr>
        <tr>
            <td>
                <table align="center" class="style2">
                    
                    <tr>
                        <td class="lbl">
                            Teacher Name :</td>
                        <td>
                            <asp:TextBox ID="txtname" runat="server" CssClass="txt"></asp:TextBox>
                            
                        </td>
                        <td>
                        &nbsp;</td>
                    </tr>
                     <tr>
                     <td>
                        &nbsp;</td>
                        <td>
                     
                            <asp:RequiredFieldValidator ID="reqnm" runat="server" ErrorMessage="Please Enter the Teacher Name" ForeColor="Red" ControlToValidate="txtname" Font-Bold="True"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                        &nbsp;</td>
                    </tr>

                     <tr>
                        <td class="lbl">
                            Gender : </td>
                        <td>
                            <asp:DropDownList ID="ddlgender" runat="server" Height="16px" Width="117px">
                                <asp:ListItem>Female</asp:ListItem>
                                <asp:ListItem>Male</asp:ListItem>
                            </asp:DropDownList>
                            
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                     <td>
                        &nbsp;</td>
                        <td>
                     
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter a Gender" ForeColor="Red" ControlToValidate="ddlgender" Font-Bold="True"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                        &nbsp;</td>
                    </tr>
                   
                    <tr>
                        <td class="lbl">
                            Email ID:</td>
                        <td>
                            <asp:TextBox ID="txtemail" runat="server" CssClass="txt" TextMode="Email"></asp:TextBox>
                        </td>
                        <td>
                        &nbsp;</td>
                    </tr>
                    <tr>
                     <td>
                        &nbsp;</td>
                        <td>
                     
                            <asp:RequiredFieldValidator ID="reqemail" runat="server" ErrorMessage="Please Enter an Email ID" ForeColor="Red" ControlToValidate="txtemail" Font-Bold="True"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                        &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Mobile No:</td>
                        <td>
                            <asp:TextBox ID="txtmobile" runat="server" CssClass="txt" TextMode="Phone"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                     <td>
                        &nbsp;</td>
                        <td>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please Enter valid Mobile Number" ControlToValidate="txtmobile" Font-Bold="True" ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                            
                        </td>
                        <td>
                        &nbsp;</td>
                    </tr>
                   
                    <tr>
                        <td class="lbl">
                            Qualification : </td>
                        <td>
                            <asp:TextBox ID="txtqual" runat="server" CssClass="txt"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                     <td>
                        &nbsp;</td>
                        <td>
                     
                            <asp:RequiredFieldValidator ID="reqedu" runat="server" ErrorMessage="Please Enter an Qualification" ForeColor="Red" ControlToValidate="txtqual" Font-Bold="True"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                        &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Address : </td>
                        <td>
                            <asp:TextBox ID="txtadd" runat="server" CssClass="txt" Height="33px" 
                                TextMode="MultiLine" Width="161px"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                     <tr>
                     <td>
                        &nbsp;</td>
                        <td>
                     
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter your Address" ForeColor="Red" ControlToValidate="txtadd" Font-Bold="True"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                        &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            City : </td>
                        <td>
                            <asp:TextBox ID="txtcity" runat="server" CssClass="txt"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                   
                    <tr>
                        <td>
                        &nbsp;</td>
                        <td>
                            <asp:Button ID="btnadd" runat="server" CssClass="btn" Text="ADD" OnClick="btnadd_Click" />
                            &nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btnclear" runat="server" Text="Clear" CssClass="btn" OnClick="btnclear_Click"/>
                        </td>
                        <td>
                        &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                        &nbsp;</td>
                        <td>
                            <asp:Label ID="lblresult" runat="server" Font-Bold="True" ForeColor="Blue" ></asp:Label>
                        </td>
                        
                    </tr>
                    
                </table>
            </td>
        </tr>
       
    </table>
    
 

</asp:Content>

