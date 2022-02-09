<%@ Page Title="" Language="C#" MasterPageFile="~/Labreportingsystem.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="Diagnostic_lab_Reporting_System.ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style12 {
        width: 100%;
        height: 518px;
    }
    .auto-style13 {
        height: 261px;
    }
    .auto-style14 {
        height: 90px;
    }
    .auto-style15 {
        width: 100%;
        height: 232px;
        font-weight: 700;
        font-size: large;
    }
    .auto-style16 {
        width: 284px;
    }
</style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style12">
    <tr>
        <td class="auto-style14" style="background-image: url('pictures/texture.jpeg')">&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink4" runat="server" ForeColor="White" NavigateUrl="~/Aboutus.aspx" style="font-weight: 700; font-size: large">About Us</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td class="auto-style14" style="background-image: url('pictures/background.jpeg'); background-color: #FFFFFF;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label10" runat="server" style="text-align: center; font-size: x-large; font-weight: 700; color: #000000; background-color: #FFFFFF" Text="CONTACT US"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style13" style="background-image: url('pictures/background.jpeg')">
            <table class="auto-style15">
                <tr>
                    <td class="auto-style16" style="border-style: inset">
                        <asp:Label ID="Label4" runat="server" Text="Address"></asp:Label>
                    </td>
                    <td style="border-style: inset">
                        <asp:Label ID="Label7" runat="server" Text="AT POST -Shirgaon,Tal-Devgad,Dist-Sindhudurg,Pin-416610"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16" style="border-style: inset">
                        <asp:Label ID="Label5" runat="server" Text="Email Id"></asp:Label>
                    </td>
                    <td style="border-style: inset">
                        <asp:Label ID="Label8" runat="server" Text="khandareh501@gmail.com"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16" style="border-style: inset">
                        <asp:Label ID="Label6" runat="server" Text="Contact No"></asp:Label>
                    </td>
                    <td style="border-style: inset">
                        <asp:Label ID="Label9" runat="server" Text="8308037949"></asp:Label>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</asp:Content>
