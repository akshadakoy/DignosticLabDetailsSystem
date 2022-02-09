<%@ Page Title="" Language="C#" MasterPageFile="~/Labreportingsystem.Master" AutoEventWireup="true" CodeBehind="EditTest.aspx.cs" Inherits="Diagnostic_lab_Reporting_System.EditTest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

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
        .auto-style31 {
            height: 92px;
            width: 1615px;
        }
        .auto-style16 {
            font-size: large;
            margin-left: 0px;
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
                &nbsp;<asp:Button ID="Button3" runat="server" Height="37px" style="font-size: large; font-weight: 700; margin-left: 1445px; margin-top: 18px; background-color: #FFFFFF; color: #FF0000;" Text="Logout" Width="103px" BorderColor="Black" ForeColor="White"   />
            </td>
        </tr>
        <tr>
            <td class="auto-style15" style="background-image: url('pictures/background.jpeg'); text-align: left;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label9" runat="server" style="text-align: center; font-size: x-large; font-weight: 700" Text="EDIT TEST DETAILS"></asp:Label>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14" style="background-image: url('pictures/background.jpeg'); font-weight: 700; font-size: large;">
                <br />
                <strong style="font-size: large">
                <asp:Label ID="Label13" runat="server" Text=" Select Taluka" style="font-size: large"></asp:Label>
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
&nbsp;<br />
                <br />
                <asp:Label ID="Label7" runat="server" Text=" Select Laboratory " CssClass="auto-style16"></asp:Label>
                <span class="auto-style16"><strong>:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <asp:DropDownList ID="DropDownList1" runat="server" Height="25px" style="font-size: large; margin-left: 0px; margin-bottom: 0px" Width="228px" AppendDataBoundItems="True" DataTextField="Laboratory_Name" DataValueField="Taluka">
                    <asp:ListItem>--select laboratory--</asp:ListItem>
                </asp:DropDownList>
                </strong></span>
                </strong>
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnShowtest" runat="server" BorderColor="Black" style="font-size: large; font-weight: 700; margin-left: 58px" Text="Show Test Details" Width="285px" OnClick="btnShowtest_Click"  />
                <br />
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateSelectButton="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
                </asp:GridView>
                <br />
                <br />
                <asp:Label ID="Label17" runat="server" Text="Test Id"></asp:Label>
                :&nbsp;&nbsp;
                <asp:TextBox ID="txttestid" runat="server" BorderColor="Black" style="font-size: large; margin-left: 65px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label18" runat="server" Text="Test Name"></asp:Label>
                :<asp:TextBox ID="txtTestname" runat="server" BorderColor="Black" style="font-size: large; margin-left: 42px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label19" runat="server" Text="Price"></asp:Label>
                :<asp:TextBox ID="txtPrice" runat="server" BorderColor="Black" style="font-size: large; margin-left: 99px"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style31" style="border-style: inherit; background-image: url('pictures/background.jpeg')">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                <asp:Button ID="btnUpdate" runat="server" BorderColor="Black" style="font-size: large; font-weight: 700; margin-left: 508px" Text="Update" Width="110px" OnClick="btnUpdate_Click" />
                <asp:Button ID="btnDelete" runat="server" BorderColor="Black" style="font-weight: 700; font-size: large; margin-left: 176px" Text="Delete" Width="75px" OnClick="btnDelete_Click" />
                <br />
                <br />&nbsp;
                <br /></td>
        </tr>
    </table>
</asp:Content>
