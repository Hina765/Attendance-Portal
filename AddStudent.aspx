<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher.master" AutoEventWireup="true" CodeFile="AddStudent.aspx.cs" Inherits="AddStudent" %>

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
                ADD STUDENT</td>
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
                            GR NO :</td>
                        <td>
                            <asp:TextBox ID="txtgr" runat="server" CssClass="txt"></asp:TextBox>
                            
                        </td>
                        <td>
                        &nbsp;</td>
                    </tr>
                     <tr>
                     <td>
                        &nbsp;</td>
                        <td>
                     
                            <asp:RequiredFieldValidator ID="reqgr" runat="server" ErrorMessage="Must Enter student Grno." ForeColor="Red" ControlToValidate="txtgr"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                        &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Student Name :</td>
                        <td>
                            <asp:TextBox ID="txtstnm" runat="server" CssClass="txt"></asp:TextBox>
                            
                        </td>
                        <td>
                        &nbsp;</td>
                    </tr>
                     <tr>
                     <td>
                        &nbsp;</td>
                        <td>
                     
                            <asp:RequiredFieldValidator ID="reqnm" runat="server" ErrorMessage="Please Enter the Student Name" ForeColor="Red" ControlToValidate="txtstnm"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                        &nbsp;</td>
                    </tr>

                     <tr>
                        <td class="lbl">
                            ClassName : </td>
                        <td>
                            <asp:DropDownList ID="ddlclass" runat="server" DataSourceID="SqlDataSource1" DataTextField="ClassName" DataValueField="ClassName"></asp:DropDownList>
                            
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [ClassName] FROM [AddClass1]"></asp:SqlDataSource>
                            
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                     <td>
                        &nbsp;</td>
                        <td>
                     
                            &nbsp;</td>
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
                     
                            <asp:RequiredFieldValidator ID="reqgender" runat="server" ErrorMessage="Please Enter a Gender" ForeColor="Red" ControlToValidate="ddlgender" Font-Bold="False"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                        &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Date Of Birth :</td>
                        <td>
                            <asp:TextBox ID="txtbdate" runat="server" CssClass="txt" TextMode="Date"></asp:TextBox>
                        </td>
                        <td>
                        &nbsp;</td>
                    </tr>
                    <tr>
                     <td>
                        &nbsp;</td>
                        <td>
                     
                            <asp:RequiredFieldValidator ID="reqbdt" runat="server" ErrorMessage="Please Enter a BirthDate" ForeColor="Red" ControlToValidate="txtbdate" Font-Bold="False"></asp:RequiredFieldValidator>
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
                     
                            <asp:RequiredFieldValidator ID="reqemail" runat="server" ErrorMessage="Please Enter an Email ID" ForeColor="Red" ControlToValidate="txtemail"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                        &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Mobile No:</td>
                        <td>
                            <asp:TextBox ID="txtmobile" runat="server" CssClass="txt"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                   <tr>
                     <td>
                        &nbsp;</td>
                        <td>
                            <asp:RegularExpressionValidator ID="reqmobile" runat="server" ErrorMessage="Enter valid number" ControlToValidate="txtmobile" ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                            
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
                     
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter your Address" ForeColor="Red" ControlToValidate="txtadd" Font-Bold="False"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                        &nbsp;</td>
                    </tr>
                   
                    
                    <tr>
                        <td>
                        &nbsp;</td>
                        <td>
                            <asp:Button ID="btnadd" runat="server" CssClass="btn" Text="ADD" OnClick="btnadd_Click" />
                        </td>
                        <td>
                        &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:Label ID="lblresult" runat="server" Font-Bold="True" ForeColor="#3333CC"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    
                </table>
            </td>
        </tr>
        <tr>
            <td>
            &nbsp;</td>
        </tr>
    </table>
    
</asp:Content>
