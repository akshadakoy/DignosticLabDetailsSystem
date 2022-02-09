<%@ Page Title="" Language="C#" MasterPageFile="~/Labreportingsystem.Master" AutoEventWireup="true" CodeBehind="MyAccount.aspx.cs" Inherits="Diagnostic_lab_Reporting_System.MyAccount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            width: 100%;
            height: 713px;
        }
        .auto-style13 {
            height: 2px;
            font-weight: 700;
        }
        .auto-style14 {
            height: 60px;
        }
        .auto-style15 {
            font-size: large;
        }
        .auto-style30 {
            height: 90px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="auto-style10">
        <tr>
            <td class="auto-style30" style="border-style: inset; font-family: Arial; color: #FFFFFF; background-color: #6666FF; font-size: large; background-image: url('pictures/texture.jpeg'); font-weight: 700;">
&nbsp;<br />
                &nbsp;&nbsp; &nbsp;<asp:HyperLink ID="HyperLink4" runat="server" ForeColor="White" NavigateUrl="~/Homepage.aspx" style="font-weight: 700">Home</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;<asp:HyperLink ID="HyperLink16" runat="server" ForeColor="White" NavigateUrl="~/TestSearch.aspx">Test Search</asp:HyperLink>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:HyperLink ID="HyperLink17" runat="server" Font-Names="Arial" ForeColor="White" NavigateUrl="~/Bookappointment.aspx">Book Appointment</asp:HyperLink>
                &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink18" runat="server" ForeColor="White" NavigateUrl="~/CancelBooking.aspx" style="font-size: large">Cancel Appointment</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink19" runat="server" ForeColor="White" NavigateUrl="~/Feedbackform.aspx">Feedback</asp:HyperLink>
&nbsp; <asp:Button ID="btnLogout" runat="server" Height="39px" style="font-size: large; font-weight: 700; margin-left: 1261px; margin-top: 0px; background-color: #FFFFFF;" Text="Logout" Width="103px" BorderColor="Black" ForeColor="Red" OnClick="btnLogout_Click"  />
            &nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td class="auto-style14" style="border-style: none; background-image: url('pictures/background.jpeg')">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label15" runat="server" style="font-size: x-large; font-weight: 700" Text="MY ACCOUNT"></asp:Label>
                &nbsp;<br />
            </td>
        </tr>
        <tr>
            <td class="auto-style13" style="background-image: url('pictures/background.jpeg')">
                <br />
                <asp:Label ID="Label5" runat="server" Text="Patient Id" CssClass="auto-style15"></asp:Label>
                <span class="auto-style15">&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                <asp:TextBox ID="txtPid" runat="server" style="margin-left: 0px" BorderColor="Black" CssClass="auto-style15" OnTextChanged="txtPid_TextChanged"></asp:TextBox>
                <span class="auto-style15">&nbsp;&nbsp;&nbsp;
                </span>
                <br class="auto-style15" />
                <br class="auto-style15" />
                <asp:Label ID="Label6" runat="server" Text="Full Name" CssClass="auto-style15"></asp:Label>
                <span class="auto-style15">&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; </span>
                <asp:TextBox ID="txtFname" runat="server" style="margin-left: 3px" BorderColor="Black" CssClass="auto-style15"></asp:TextBox>
                <br class="auto-style15" />
                <br class="auto-style15" />
                <asp:Label ID="Label7" runat="server" Text="Age" CssClass="auto-style15"></asp:Label>
                <span class="auto-style15">&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; </span>
                <asp:TextBox ID="txtAge" runat="server" style="margin-left: 8px" BorderColor="Black" CssClass="auto-style15"></asp:TextBox>
                <br class="auto-style15" />
                &nbsp;<br class="auto-style15" />
                <span class="auto-style15">
                <asp:Label ID="Label8" runat="server" Text="Gender" CssClass="auto-style15"></asp:Label>
                &nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                <asp:RadioButton ID="rdb_male" runat="server" Text="Male" CssClass="auto-style15" />
&nbsp;&nbsp; <asp:RadioButton ID="rdb_female" runat="server" Text="Female" CssClass="auto-style15" />
                <br class="auto-style15" />
                <br class="auto-style15" />
                <asp:Label ID="Label10" runat="server" Text="Address" CssClass="auto-style15"></asp:Label>
                <span class="auto-style15">&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; </span>
                <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" style="margin-left: 4px; font-weight: 700;" BorderColor="Black" CssClass="auto-style15"></asp:TextBox>
                <br class="auto-style15" />
                <br class="auto-style15" />
                <asp:Label ID="Label9" runat="server" Text="Contact no" CssClass="auto-style15"></asp:Label>
                <span class="auto-style15">&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                <asp:TextBox ID="txtCno" runat="server" BorderColor="Black" CssClass="auto-style15"></asp:TextBox>
                <br />
                <br class="auto-style15" />
                <asp:Label ID="Label11" runat="server" Text="Email Id" CssClass="auto-style15"></asp:Label>
                <span class="auto-style15">&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; </span>
                <asp:TextBox ID="txtEid" runat="server" TextMode="Email" BorderColor="Black" CssClass="auto-style15"></asp:TextBox>
&nbsp;<br class="auto-style15" />
                <br class="auto-style15" />
                <asp:Label ID="Label12" runat="server" Text="User name" CssClass="auto-style15"></asp:Label>
                <span class="auto-style15">&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; </span><asp:TextBox ID="txtUname" runat="server" style="margin-left: 26px" BorderColor="Black" CssClass="auto-style15"></asp:TextBox>
                <br class="auto-style15" />
                <br class="auto-style15" />
                <asp:Label ID="Label13" runat="server" Text="Password" CssClass="auto-style15"></asp:Label>
                <span class="auto-style15">&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; </span>
                &nbsp;
                <asp:TextBox ID="txtPswd1" runat="server" BorderColor="Black" style="font-size: large; background-color: #FFFFFF"></asp:TextBox>
                <br />
                <span class="auto-style15">
                <br />
                <asp:Label ID="Label14" runat="server" Text="Confirm password"></asp:Label>
                &nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtConfpswd1" runat="server" BorderColor="Black" style="font-size: large"></asp:TextBox>
                &nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp; 
                </span>
                <br />
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td style="background-image: url('pictures/background.jpeg')">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnUpdate" runat="server" Height="34px" style="font-size: large; font-weight: 700; margin-left: 0px; margin-top: 0px;" Text="Update" BackColor="White" Width="150px" OnClick="btnUpdate_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:Button ID="btnDeleteacc" runat="server" style="font-size: large; font-weight: 700; margin-left: 15px; margin-top: 17px;" Text="Delete Account" BackColor="White" Width="229px" Height="37px" OnClick="btnDeleteacc_Click" />
                &nbsp;<br />
                <br />
            </td>
        </tr>
    </table>

</asp:Content>
