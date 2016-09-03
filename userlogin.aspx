<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="userlogin.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>
    Welcome to User Login</h2>
<p>
    <table style="width: 86%;">
        <tr>
            <td class="style2">
                <asp:Label ID="Label1" runat="server" Text="NAME" ForeColor="#33CCFF" 
                                style="font-weight: 700"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label2" runat="server" Text="PASSWORD" ForeColor="#33CCFF" 
                                style="font-weight: 700"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                            &nbsp;</td>
            <td class="style3">
                            &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Button ID="Button1" runat="server" Text="LOGIN" ForeColor="#33CCFF" 
                                style="font-weight: 700" onclick="Button1_Click" />
            </td>
            <td class="style3">
                <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
                    PostBackUrl="~/userregistration.aspx">REGISTER</asp:LinkButton>
            </td>
        </tr>
    </table>
</p>
</asp:Content>

