<%@ Page Title="" Language="C#" MasterPageFile="~/Labreportingsystem.Master" AutoEventWireup="true" CodeBehind="Testdetailsaspx.aspx.cs" Inherits="Diagnostic_lab_Reporting_System.Testdetailsaspx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            width: 1597px;
            height: 575px;

        }
        .auto-style11 {
            width: 100%;
            height: 606px;
        }
        .auto-style30 {
            height: 90px;
            width: 1615px;
        }
        .auto-style29 {
        font-size: large;
            font-weight: 700;
        }
        .auto-style15 {
            height: 99px;
            width: 1615px;
        }
        .auto-style14 {
            height: 297px;
            width: 1615px;
        }
        .auto-style16 {
            font-size: large;
            margin-left: 0px;
        }
        .auto-style31 {
            height: 92px;
            width: 1615px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="auto-style11">
        <tr>
            <td class="auto-style30" style="border-style: inset; background-image: url('pictures/texture.jpeg')">&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink4" runat="server" ForeColor="White" style="font-size: large; font-weight: 700;" NavigateUrl="~/HomepageAdminaspx.aspx">Home</asp:HyperLink>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink5" runat="server" CssClass="auto-style29" ForeColor="White" NavigateUrl="~/diagnosticcenter.aspx">Add Laboratory Details</asp:HyperLink>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink7" runat="server" ForeColor="White" NavigateUrl="~/EditTest.aspx" style="font-size: large; font-weight: 700">Edit Test Details</asp:HyperLink>
&nbsp;<asp:Button ID="Button3" runat="server" Height="37px" style="font-size: large; font-weight: 700; margin-left: 1445px; margin-top: 18px; background-color: #FFFFFF; color: #FF0000;" Text="Logout" Width="103px" BorderColor="Black" ForeColor="White" OnClick="Button3_Click1"  />
            </td>
        </tr>
        <tr>
            <td class="auto-style15" style="background-image: url('pictures/background.jpeg'); text-align: left;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label9" runat="server" style="text-align: center; font-size: x-large; font-weight: 700" Text="TEST DETAILS"></asp:Label>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14" style="background-image: url('pictures/background.jpeg')"><strong>
                <br />
                <asp:Label ID="Label5" runat="server" Text="Test Id" CssClass="auto-style16"></asp:Label>
                </strong><span class="auto-style16"><strong>&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp; </strong></span><strong>&nbsp;&nbsp;&nbsp; 
                <asp:TextBox ID="txtTestid" runat="server" style="margin-left: 58px; " BorderColor="Black" CssClass="auto-style16" Width="204px"></asp:TextBox>
                </strong><span class="auto-style16"><strong>&nbsp;&nbsp;&nbsp; </strong></span><strong>
                <asp:Button ID="btnNew" runat="server" style="background-color: #FFFFFF; " Text="New" BorderColor="Black" OnClick="btnNew_Click" CssClass="auto-style16" />
                <br class="auto-style16" />
                <br class="auto-style16" />
                <asp:Label ID="Label6" runat="server" Text="Test Name" CssClass="auto-style16"></asp:Label>
                </strong>:<strong style="font-size: large">&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtTestname" runat="server" style="margin-left: 60px; " Width="204px" BorderColor="Black" CssClass="auto-style16"></asp:TextBox>
                <br />
                <br />
                <br />
                <asp:Label ID="Label13" runat="server" Text="Taluka" style="font-size: large"></asp:Label>
                :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:DropDownList ID="DropDownList2" runat="server" style="margin-left: 32px; font-size: large; margin-top: 0px;" Width="204px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" >
                         <asp:ListItem>--select taluka--</asp:ListItem>
                         <asp:ListItem>Kankavli</asp:ListItem>
                         <asp:ListItem>Dodamarg</asp:ListItem>
                         <asp:ListItem>Kudal</asp:ListItem>
                         <asp:ListItem>Sawantwadi</asp:ListItem>
                         <asp:ListItem>Vaibhavwadi</asp:ListItem>
                         <asp:ListItem>Malwan</asp:ListItem>
                         <asp:ListItem>Vengurla</asp:ListItem>
                         <asp:ListItem>Devgad</asp:ListItem>
                </asp:DropDownList>
&nbsp;<br class="auto-style16" />
                <br class="auto-style16" />
                <asp:Label ID="Label7" runat="server" Text="Laboratory Name" CssClass="auto-style16"></asp:Label>
                </strong><span class="auto-style16"><strong>:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <asp:DropDownList ID="DropDownList1" runat="server" Height="25px" style="font-size: large; margin-left: 0px; margin-bottom: 0px" Width="228px" AppendDataBoundItems="True" DataTextField="Laboratory_Name" DataValueField="Taluka">
                    <asp:ListItem>--select laboratory--</asp:ListItem>
                </asp:DropDownList>
                </strong></span><strong>
                <br class="auto-style16" />
                <br class="auto-style16" />
                <asp:Label ID="Label8" runat="server" Text="Price" CssClass="auto-style16"></asp:Label>
                </strong><span class="auto-style16"><strong>:&nbsp;&nbsp;&nbsp; </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; </span>
                <asp:TextBox ID="txtPrice" runat="server" BorderColor="Black" style="margin-left: 0px;" CssClass="auto-style16" Width="204px"></asp:TextBox>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style31" style="border-style: ridge; background-image: url('pictures/background.jpeg')">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnUpload" runat="server" BackColor="White" ForeColor="Black" style="font-size: large; font-weight: 700; margin-top: 20px;" Text="Upload" BorderColor="Black" OnClick="btnUpload_Click" Height="34px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnReset" runat="server" BackColor="White" ForeColor="Black" style="font-size: large; font-weight: 700; margin-top: 0px;" Text="Reset" BorderColor="Black" Height="34px" OnClick="btnReset_Click" Width="93px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                <br />
                <br />&nbsp;
                <br /></td>
        </tr>
    </table>

</asp:Content>

