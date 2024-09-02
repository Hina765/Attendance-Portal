<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher.master" AutoEventWireup="true" CodeFile="Attendance.aspx.cs" Inherits="Attendance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl" align="center">
    <tr>
        <td class="tblhead">
            ADD ATTENDANCE
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>

             <table align="left">
                <tr>
                    <td> 
                        Select Class :&nbsp;
                    </td>
                    <td>
                        
                        
                        <asp:DropDownList ID="ddlclass" runat="server"  Height="16px" Width="127px" DataSourceID="SqlDataSource1" DataTextField="ClassName"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [ClassName] FROM [AddClass1]"></asp:SqlDataSource>
                        
                        
                        <asp:RequiredFieldValidator ID="reqclass" runat="server" ErrorMessage="Enter Class" ControlToValidate="ddlclass" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                
                <tr>
                    <td>
                        Enter Subject :&nbsp;
                    </td>
                    <td>
                        <asp:TextBox ID="txtsubject" runat="server"/>
                            <asp:RequiredFieldValidator ID="reqsub" runat="server" ErrorMessage="Enter Subject" ControlToValidate="txtsubject" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                </tr>

                 <tr>
                     <td>
                         Select Date :&nbsp;
                     </td>
                     <td>
                         <asp:TextBox ID="txtdate" runat="server" TextMode="Date" />
                         <asp:RequiredFieldValidator ID="reqdate" runat="server" ErrorMessage="Enter Date" ControlToValidate="txtdate" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                     </td>
                 </tr>
                 
                 <tr>
                     <td>
                          Student Name :
                     </td>
                     <td>
                         <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="stnm" DataValueField="stnm" Height="19px" Width="151px" ></asp:DropDownList>
                         <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [stnm] FROM [AddStudent1]"></asp:SqlDataSource>
                     </td>
                 </tr>
                 <tr>
                     <td>
                         Status:

                     </td>
                     <td>
                         <asp:DropDownList ID="DropDownList2" runat="server">
                             <asp:ListItem>Present</asp:ListItem>
                             <asp:ListItem>Absent</asp:ListItem>
                         </asp:DropDownList>
                     </td>
                 </tr>
                 <tr>
                     <td>
                         <table align="center">
                             <tr>
                                 <td>
                                     <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource3" AutoGenerateColumns="False" DataKeyNames="grno">
                                         <Columns>
                                             <asp:BoundField DataField="grno" HeaderText="grno" SortExpression="grno" />
                                             <asp:BoundField DataField="stnm" HeaderText="stnm" SortExpression="stnm" />
                                         </Columns>
                                     </asp:GridView>

                                     <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" FilterExpression="stnm like'{0}%'" SelectCommand="SELECT [grno], [stnm] FROM [AddStudent1]">
                                         <FilterParameters>
                                             <asp:ControlParameter ControlID="DropDownList1" Name="stnm" PropertyName="SelectedIndex" />
                                         </FilterParameters>
                                     </asp:SqlDataSource>

                                 </td>
                             </tr>
                             <tr>
                                 <td>
                                     <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" />
                                 </td>
                             </tr>
                             <tr>
                                 <td>
                                     <asp:Label ID="lbladd" runat="server" ></asp:Label>
                                 </td>
                             </tr>
                         </table>
                        
                         
                     </td>
                 </tr>
                 
            </table>
        


        
    </td>
 </tr>     
</table>
</asp:Content>

