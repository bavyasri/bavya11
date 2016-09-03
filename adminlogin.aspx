<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="adminlogin.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style2
        {
            width: 233px;
        }
        .style3
        {
            width: 309px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Welcome to server</h2>
            <p>
                <table style="width: 86%;">
                    <tr>
                        <td class="style2">
                            <asp:Label ID="Label1" runat="server" Text="NAME" ForeColor="#33CCFF" 
                                style="font-weight: 700"></asp:Label>
                        </td>
                        <td class="style3">
                            <asp:TextBox ID="TextBox1" runat="server" style="width: 128px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ErrorMessage="Required" ControlToValidate="TextBox1">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            <asp:Label ID="Label2" runat="server" Text="PASSWORD" ForeColor="#33CCFF" 
                                style="font-weight: 700"></asp:Label>
                        </td>
                        <td class="style3">
                            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ErrorMessage="Required" ControlToValidate="TextBox2">*</asp:RequiredFieldValidator>
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
                            &nbsp;</td>
                        <td class="style3">
                            <asp:Button ID="Button1" runat="server" Text="LOGIN" ForeColor="#33CCFF" 
                                style="font-weight: 700" onclick="Button1_Click" />
                        </td>
                    </tr>
                </table>
            </p>
          </asp:Content>

