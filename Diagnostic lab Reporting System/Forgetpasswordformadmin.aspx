<%@ Page Title="" Language="C#" MasterPageFile="~/Labreportingsystem.Master" AutoEventWireup="true" CodeBehind="Forgetpasswordformadmin.aspx.cs" Inherits="Diagnostic_lab_Reporting_System.Forgetpasswordform" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            width: 100%;
            height: 483px;
        }
        .auto-style12 {
            height: 85px;
        }
        .auto-style13 {
            height: 228px;
        }
        .auto-style14 {
        height: 186px;
    }
        .auto-style15 {
            height: 90px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style10">
        <tr>
            <td class="auto-style15" style="border-style: ridge; background-image: url('pictures/texture.jpeg'); font-size: large; font-weight: 700;">
                &nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink8" runat="server" ForeColor="White" NavigateUrl="~/Adminloginform.aspx">Login</asp:HyperLink>
                &nbsp;&nbsp; &nbsp;
&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12" style="border-style: outset; background-image: url('pictures/background.jpeg')">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label9" runat="server" style="font-weight: 700; font-size: x-large" Text="FORGET PASSWORD"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style13" style="background-image: url('pictures/background.jpeg'); font-family: Arial; font-weight: 700; font-size: large;">
                <asp:Label ID="Label7" runat="server" style="font-size: large" Text="Admin name"></asp:Label>
                &nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtAdminname" runat="server" BorderColor="Black" style="font-size: large; margin-left: 0px;"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label8" runat="server" style="font-size: large" Text="New Password"></asp:Label>
&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtNewpsrd" runat="server" BorderColor="Black" style="font-size: large" TextMode="Password"></asp:TextBox>
                <br />
                <br />
                <asp:CheckBox ID="CheckBox1" runat="server" style="font-size: large" Text="  Show password" Checked="True" OnCheckedChanged="CheckBox1_CheckedChanged" AutoPostBack="True"  />
                <br />
                <br />
                <asp:Label ID="lbltxt" runat="server" ForeColor="#000099" style="font-size: large" Text="Label" Visible="False"></asp:Label>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style14" style="background-image: url('pictures/background.jpeg'); font-size: large;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnUpdate" runat="server" BorderColor="Black" style="font-size: large; font-weight: 700" Text="Update" OnClick="btnUpdate_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnReset" runat="server" BorderColor="Black" style="font-size: large; font-weight: 700" Text="Reset" OnClick="btnReset_Click" />
            </td>
        </tr>
    </table>

</asp:Content>
