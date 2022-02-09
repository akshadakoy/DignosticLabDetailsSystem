<%@ Page Title="" Language="C#" MasterPageFile="~/Labreportingsystem.Master" AutoEventWireup="true" CodeBehind="diagnosticcenter.aspx.cs" Inherits="Diagnostic_lab_Reporting_System.diagnosticcenter" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            width: 100%;
            height: 1192px;
            margin-bottom: 0px;
            background-color: #CCFFCC;
        }
        .auto-style13 {
            height: 282px;
        width: 1247px;
    }
        .auto-style14 {
            height: 86px;
        width: 1247px;
    }
        .auto-style29 {
        font-size: large;
            font-weight: 700;
        }
        .auto-style30 {
        height: 70px;
        width: 1247px;
    }
        .auto-style31 {
            height: 90px;
            width: 1247px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="auto-style10">
        <tr>
            <td class="auto-style31" style="border-style: outset; font-weight: 700; background-image: url('pictures/texture.jpeg'); font-size: x-large;">&nbsp;
                <asp:HyperLink ID="HyperLink4" runat="server" ForeColor="White" style="font-size: large" NavigateUrl="~/HomepageAdminaspx.aspx">Home</asp:HyperLink>
                &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:HyperLink ID="HyperLink6" runat="server" CssClass="auto-style29" ForeColor="White" NavigateUrl="~/Testdetailsaspx.aspx">Add Test Details</asp:HyperLink>

            
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink7" runat="server" ForeColor="White" NavigateUrl="~/EditTest.aspx" style="font-size: large">Edit Test Details</asp:HyperLink>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button3" runat="server" Height="37px" style="font-size: large; font-weight: 700; margin-left: 1445px; margin-top: 18px; background-color: #FFFFFF; color: #FF0000;" Text="Logout" Width="103px" BorderColor="Black" ForeColor="White" OnClick="Button3_Click1"  />
            &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style30" style="border-style: outset; font-weight: 700; background-image: url('pictures/background.jpeg');">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:Label ID="Label4" runat="server" Font-Bold="True" style="font-size: xx-large" Text="Diagnostic Center"></asp:Label>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13" style="border-style: ridge; font-family: Arial; font-size: large; background-image: url('pictures/background.jpeg'); font-weight: 700;">
                <br />
                <asp:Label ID="Label5" runat="server" Text="Laboratory Id"></asp:Label>
                &nbsp;:&nbsp;&nbsp;<asp:TextBox ID="txtlabid" runat="server" style="margin-left: 87px; font-size: large;" BorderColor="Black"></asp:TextBox>
&nbsp;&nbsp;
                <asp:Button ID="btnNew" runat="server" style="font-size: large; margin-left: 76px" Text="New" BackColor="White" OnClick="btnNew_Click"  />
                <br />
                <br />
                <asp:Label ID="Label6" runat="server" Text="Laboratory  Name"></asp:Label>
                &nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:TextBox ID="txtlabname" runat="server" style="margin-left: 21px; font-size: large;" BorderColor="Black"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label17" runat="server" Text="Laboratory  Email"></asp:Label>
&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtlabemail" runat="server" style="margin-left: 19px; font-size: large;" BorderColor="Black" TextMode="Email"></asp:TextBox>
                <br />
                <br />
                <br />
                <asp:Label ID="Label13" runat="server" Text="Taluka"></asp:Label>
                &nbsp;:&nbsp; <asp:DropDownList ID="DropDownList1" runat="server" style="margin-left: 152px; font-size: large;" Width="209px">
                    <asp:ListItem>Devgad</asp:ListItem>
                    <asp:ListItem>Kankavli</asp:ListItem>
                    <asp:ListItem>Dodamarg</asp:ListItem>
                    <asp:ListItem>Kudal</asp:ListItem>
                    <asp:ListItem>Sawantwadi</asp:ListItem>
                    <asp:ListItem>Vaibhavwadi</asp:ListItem>
                    <asp:ListItem>Malwan</asp:ListItem>
                    <asp:ListItem>Vengurla</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
                <asp:Label ID="Label8" runat="server" Text="Full Address"></asp:Label>
&nbsp;&nbsp;:&nbsp; <asp:TextBox ID="txtFullA" runat="server" style="margin-left: 88px; font-size: large;" TextMode="MultiLine" BorderColor="Black" Width="208px"></asp:TextBox>
                <br />
                <br />
                <br />
                <asp:Label ID="Label9" runat="server" Text="Contact No "></asp:Label>
&nbsp;:&nbsp;&nbsp; <asp:TextBox ID="txtcno" runat="server" style="margin-left: 99px; font-size: large;" BorderColor="Black"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label11" runat="server" Text="Bank Name"></asp:Label>
&nbsp;:&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtbankname" runat="server" style="margin-left: 94px; font-size: large;" BorderColor="Black"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label12" runat="server" Text="Account No"></asp:Label>
                &nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtAccno" runat="server" style="margin-left: 80px; font-size: large;" BorderColor="Black"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label14" runat="server" Text="Ifsc Code"></asp:Label>
&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtIfsc" runat="server" style="margin-left: 74px; font-size: large;" BorderColor="Black"></asp:TextBox>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style14" style="border-style: inset; background-image: url('pictures/background.jpeg');">
                <asp:Button ID="btnUpload" runat="server" style="font-size: large; margin-left: 306px; font-weight: 700; margin-top: 27px;" Text="Upload" BackColor="White" ForeColor="Black" BorderColor="Black" OnClick="btnUpload_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnRst" runat="server" style="font-size: large; font-weight: 700;" Text="Reset" BackColor="White" BorderColor="Black" OnClick="btnRst_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnupdate" runat="server" style="font-size: large; font-weight: 700;" Text="Update" BackColor="White" BorderColor="Black" OnClick="btnupdate_Click" />
                <asp:Button ID="btndelete" runat="server" style="font-size: large; margin-left: 53px; font-weight: 700; margin-top: 27px;" Text="Delete" BackColor="White" ForeColor="Black" BorderColor="Black" OnClick="btndelete_Click" />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:GridView ID="GridView1" runat="server" style="font-size: large" AutoGenerateSelectButton="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="351px">
                </asp:GridView>
                <br />
            </td>
        </tr>
    </table>

</asp:Content>
