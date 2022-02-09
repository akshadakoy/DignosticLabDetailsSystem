<%@ Page Title="" Language="C#" MasterPageFile="~/Labreportingsystem.Master" AutoEventWireup="true" CodeBehind="Adminloginform.aspx.cs" Inherits="Diagnostic_lab_Reporting_System.Adminloginform" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style10 {
        width: 100%;
        height: 530px;
    }
    .auto-style12 {
        height: 64px;
    }
    .auto-style13 {
        height: 272px;
    }
    .auto-style14 {
        height: 150px;
    }
        .auto-style15 {
            height: 90px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style10" style="border-style: ridge">
    <tr>
        <td class="auto-style15" style="margin: auto; border-style: none; background-image: url('pictures/texture.jpeg'); font-size: large; font-weight: 700;">&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            </td>
    </tr>
    <tr>
        <td class="auto-style12" style="border-style: none; background-image: url('pictures/background.jpeg');">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label4" runat="server" style="font-size: x-large; font-weight: 700; background-color: #FFFFFF;" Text="ADMIN LOGIN" BackColor="White"></asp:Label>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style13" style="border-style: none; background-image: url('pictures/background.jpeg'); font-family: Arial; background-color: #99CCFF;">
            <br />
            <asp:Label ID="Label5" runat="server" style="font-weight: 700; font-size: large" Text="Admin name"></asp:Label>
&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtAname" runat="server" BorderColor="Black" style="font-size: large; margin-left: 0px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label6" runat="server" style="font-size: large; font-weight: 700" Text="Password"></asp:Label>
&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtPassword" runat="server" BorderColor="Black" style="margin-left: 4px; font-size: large;" TextMode="Password"></asp:TextBox>
            <br />
                <asp:CheckBox ID="CheckBox1" runat="server" style="font-size: large; font-weight: 700;" Text="  Show password" OnCheckedChanged="CheckBox1_CheckedChanged" AutoPostBack="True"  />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink4" runat="server" style="font-weight: 700; font-size: large;" NavigateUrl="~/Forgetpasswordformadmin.aspx">Forget password ?</asp:HyperLink>
            <br />
            <br />
&nbsp;
            </td>
    </tr>
    <tr>
        <td class="auto-style14" style="border-style: none; background-image: url('pictures/background.jpeg'); font-family: Arial;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnLogin" runat="server" style="font-weight: 700; font-size: large;" Text="Login" Width="98px" BorderColor="Black" OnClick="btnLogin_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnCancel" runat="server" style="font-weight: 700; margin-left: 0px; font-size: large;" Text="Cancel" Width="90px" BorderColor="Black" OnClick="btnCancel_Click" />
        </td>
    </tr>
</table>
</asp:Content>
