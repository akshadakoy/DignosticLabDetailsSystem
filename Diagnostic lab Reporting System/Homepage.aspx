<%@ Page Title="" Language="C#" MasterPageFile="~/Labreportingsystem.Master" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="Diagnostic_lab_Reporting_System.Homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            width: 100%;
            height: 771px;
            margin-bottom: 0px;
        }
        .auto-style12 {
        width: 522px;
        background-color: #CCFFFF;
            height: 434px;
        }
        .auto-style13 {
            width: 541px;
            height: 434px;
        }
        .auto-style20 {
            font-size: x-large;
            font-weight: 700;
        }
        .auto-style21 {
            font-size: xx-large;
        }
        .auto-style24 {
            font-size: x-large;
            color: #660033;
        }
        .auto-style27 {
            color: #660033;
        }
        .auto-style29 {
            font-size: x-large;
        }
        .auto-style30 {
            height: 90px;
        }
        .auto-style31 {
        height: 434px;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="auto-style10">
        <tr>
            <td class="auto-style30" colspan="3" style="border-style: inset; font-family: Arial; color: #FFFFFF; background-color: #6666FF; font-size: large; background-image: url('pictures/texture.jpeg'); font-weight: 700;">
&nbsp;<br />
                &nbsp;&nbsp; &nbsp;<asp:HyperLink ID="HyperLink4" runat="server" ForeColor="White" NavigateUrl="~/Homepage.aspx" style="font-weight: 700">Home</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink6" runat="server" ForeColor="White" NavigateUrl="~/MyAccount.aspx" style="font-weight: 700"> My Account</asp:HyperLink>
                &nbsp;&nbsp;&nbsp;
&nbsp;<asp:HyperLink ID="HyperLink16" runat="server" ForeColor="White" NavigateUrl="~/TestSearch.aspx">Test Search</asp:HyperLink>
                &nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink21" runat="server" ForeColor="White" NavigateUrl="~/ViewtestDetails.aspx">View Test Details</asp:HyperLink>
                &nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink17" runat="server" Font-Names="Arial" ForeColor="White" NavigateUrl="~/Bookappointment.aspx">Book Appointment</asp:HyperLink>
                &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink18" runat="server" ForeColor="White" NavigateUrl="~/CancelBooking.aspx" style="font-size: large">Cancel Appointment</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink19" runat="server" ForeColor="White" NavigateUrl="~/Feedbackform.aspx">Feedback</asp:HyperLink>
&nbsp; <asp:Button ID="Button4" runat="server" Height="39px" style="font-size: large; font-weight: 700; margin-left: 1261px; margin-top: 0px; background-color: #FFFFFF;" Text="Logout" Width="103px" BorderColor="Black" ForeColor="Red" OnClick="Button4_Click" />
            &nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td class="auto-style12" style="background-image: url('pictures/background.jpeg');">
                <asp:Image ID="Image2" runat="server" Height="643px" ImageUrl="~/pictures/image3.jpg" Width="611px" style="margin-top: 0px; margin-right: 0px;" />
            </td>
            <td class="auto-style13" style="background-image: url('pictures/background.jpeg'); font-family: Century;">
                <span class="auto-style21"><strong>Welcome and book test within few mintues.<br />
                </strong>
                </span><strong>
                <br class="auto-style24" />
                </strong><span class="auto-style21">
                <strong>
                <asp:HyperLink ID="HyperLink8" runat="server" CssClass="auto-style24" NavigateUrl="~/Devgad.aspx">Devgad</asp:HyperLink>
                <br />
                <span class="auto-style29">
                <asp:HyperLink ID="HyperLink10" runat="server" CssClass="auto-style27" NavigateUrl="~/Dodamarg.aspx">Dodamarg</asp:HyperLink>
                </span>
                </strong>
                </span><span class="auto-style29">
                <strong>
                <br />
                <asp:HyperLink ID="HyperLink15" runat="server" CssClass="auto-style27" NavigateUrl="~/Kankavli.aspx">Kankavli</asp:HyperLink>
                <br />
                <asp:HyperLink ID="HyperLink14" runat="server" CssClass="auto-style27" NavigateUrl="~/Kudal.aspx">Kudal</asp:HyperLink>
                <br class="auto-style27" />
                <asp:HyperLink ID="HyperLink9" runat="server" CssClass="auto-style27" NavigateUrl="~/Malwan.aspx">Malwan</asp:HyperLink>
                </strong>&nbsp;<strong><br class="auto-style27" />
                <asp:HyperLink ID="HyperLink11" runat="server" CssClass="auto-style27" NavigateUrl="~/Sawantwadi.aspx">Sawantwadi</asp:HyperLink>
                <br class="auto-style27" />
                <asp:HyperLink ID="HyperLink13" runat="server" CssClass="auto-style27" NavigateUrl="~/Vaibhavwadi.aspx">Vaibhavwadi</asp:HyperLink>
                <br />
                <asp:HyperLink ID="HyperLink12" runat="server" CssClass="auto-style27" NavigateUrl="~/Vengurla.aspx">Vengurla</asp:HyperLink>
                <br class="auto-style27" />
                <br class="auto-style27" />
                <br class="auto-style27" />
                <br class="auto-style27" />
                <br class="auto-style27" />
                </strong>
                </span>
                <span class="auto-style20">
                <br />
                </span>
            </td>
            <td style="background-image: url('pictures/background.jpeg');" class="auto-style31">
                <asp:Image ID="Image3" runat="server" Height="643px" ImageUrl="~/pictures/image5.jpeg" Width="611px" />
            </td>
        </tr>
    </table>

</asp:Content>
