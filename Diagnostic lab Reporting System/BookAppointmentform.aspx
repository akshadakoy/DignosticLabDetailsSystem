<%@ Page Title="" Language="C#" MasterPageFile="~/Labreportingsystem.Master" AutoEventWireup="true" CodeBehind="BookAppointmentform.aspx.cs" Inherits="Diagnostic_lab_Reporting_System.BookAppointmentform" %>

<script runat="server">

    
    
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style14 {
            height: 82px;
            width: 1531px;
        }
        .auto-style13 {
            height: 364px;
            width: 1531px;
        }
        .auto-style15 {
            height: 90px;
            width: 1531px;
        }
        .auto-style16 {
            width: 1531px;
        }
        </style>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script type="text/javascript">
    $(function () {
        var today = new Date();
        var month = ('0' + (today.getMonth() + 1)).slice(-2);
        var day = ('0' + today.getDate()).slice(-2);
        var year = today.getFullYear();
        var date = year + '-' + month + '-' + day;
        $('[id*=txtAdate]').attr('min', date);
    });
</script>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style10" style="height: 643px; width: 1604px">
        <tr>
            <td class="auto-style15" style="border-style: outset; background-image: url('http://localhost:60579/pictures/texture.jpeg'); font-size: large; font-family: Arial;">
                <br />
                &nbsp;
                <asp:HyperLink ID="HyperLink4" runat="server" ForeColor="White" NavigateUrl="~/Homepage.aspx" style="font-weight: 700">Home</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:HyperLink ID="HyperLink6" runat="server" ForeColor="White" NavigateUrl="~/MyAccount.aspx" style="font-weight: 700"> My Account</asp:HyperLink>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink16" runat="server" ForeColor="White" NavigateUrl="~/TestSearch.aspx" style="font-weight: 700">Test Search</asp:HyperLink>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink19" runat="server" ForeColor="White" NavigateUrl="~/Feedbackform.aspx" style="font-weight: 700">Feedback</asp:HyperLink>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnLogout" runat="server" Height="39px" style="font-size: large; font-weight: 700; margin-left: 1261px; margin-top: 0px; background-color: #FFFFFF;" Text="Logout" Width="103px" BorderColor="Black" ForeColor="Red" OnClick="btnLogout_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td class="auto-style14" style="border-style: ridge; background-image: url('http://localhost:60579/pictures/background.jpeg')">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:Label ID="Label4" runat="server" style="font-weight: 700; font-size: x-large" Text=" Book Appointment"></asp:Label>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13" style="background-image: url('http://localhost:60579/pictures/background.jpeg'); font-family: Arial; font-size: large; font-weight: 700; table-layout: inherit;">
                &nbsp;<asp:Label ID="Label15" runat="server" Text="Appointment No"></asp:Label>
                &nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:TextBox ID="txtAno" runat="server" BorderColor="Black" style="font-size: large" Width="208px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnNew" runat="server" BorderColor="Black" OnClick="btnNew_Click" style="font-size: medium; background-color: #FFFFFF" Text="New" />
                <br />
                <br />
                <asp:Label ID="Label5" runat="server" Text="Taluka"></asp:Label>
                :<asp:DropDownList ID="DropDownList1" runat="server" style="margin-left: 270px; font-size: large;" Width="208px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" DataValueField="Laboratory_Name" DataTextField="Taluka">
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
                <br />
                <br />
                <br />
                <asp:Label ID="Label6" runat="server" Text="Laboratory Name"></asp:Label>
                &nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList2" runat="server" style="font-size: large; margin-left: 0px" Width="209px" AppendDataBoundItems="True" DataValueField="Laboratory_Name"  >
                    <asp:ListItem Selected="True">--select laboratory--</asp:ListItem>
                </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnButton" runat="server" OnClick="btnShow_Click" style="font-size: large" Text="Show" />
                <br />
                <br />
                <asp:Label ID="Label7" runat="server" Text="Laboratory Address"></asp:Label>
                &nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;<asp:TextBox ID="txtLabaddress" runat="server" BorderColor="Black" style="font-size: large" TextMode="MultiLine" Width="208px" ></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label8" runat="server" Text="Laboratory  Contactno"></asp:Label>
                &nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtLabcno" runat="server" BorderColor="Black" style="font-size: large; margin-left: 0px;"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label9" runat="server" Text="Patient Id"></asp:Label>
                &nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:TextBox ID="txtPid" runat="server" BorderColor="Black" style="font-size: large" ></asp:TextBox>
                <asp:Button ID="btnShow" runat="server" OnClick="btnShow_Click1" Text="show" style="margin-left: 36px" />
                <br />
                <br />
                <asp:Label ID="Label10" runat="server" Text="Patient Name"></asp:Label>
                &nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtPname" runat="server" BorderColor="Black" style="font-size: large; margin-left: 0px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label13" runat="server" Text="Contact No"></asp:Label>
                &nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtCno" runat="server" BorderColor="Black" style="font-size: large; margin-left: 13px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label12" runat="server" Text="Reason"></asp:Label>
                &nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtReason" runat="server" BorderColor="Black" style="font-size: large; margin-left: 38px" TextMode="MultiLine" Width="208px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label16" runat="server" Text="Appointment Date"></asp:Label>
&nbsp;:<asp:TextBox ID="txtAdate" runat="server" BorderColor="Black" style="font-size: large; margin-left: 190px" TextMode="Date" ></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label17" runat="server" Text="Appointment Time"></asp:Label>
                :&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtAtime" runat="server" BorderColor="Black" style="font-size: large; margin-left: 175px" TextMode="Time"></asp:TextBox>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style16" style="background-image: url('http://localhost:60579/pictures/background.jpeg')">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="btnBookapp" runat="server" BorderColor="Black" style="font-weight: 700; font-size: large" Text="Book Appointment" OnClick="btnBookapp_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnReset" runat="server" BorderColor="Black" style="font-weight: 700; font-size: large" Text="Reset" OnClick="btnReset_Click1" />
                <br />
                <br />
            </td>
        </tr>
    </table>

</asp:Content>
