<%@ Page Title="" Language="C#" MasterPageFile="~/Labreportingsystem.Master" AutoEventWireup="true" CodeBehind="Aboutus.aspx.cs" Inherits="Diagnostic_lab_Reporting_System.Aboutus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style12 {
        width: 100%;
        height: 518px;
    }
    .auto-style14 {
        height: 90px;
    }
    .auto-style13 {
        height: 261px;
            text-align: justify;
        }
        .auto-style15 {
            font-size: large;
        }
        .auto-style16 {
            color: #0033CC;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style12">
    <tr>
        <td class="auto-style14" style="background-image: url('pictures/texture.jpeg')">&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink4" runat="server" ForeColor="White" NavigateUrl="~/Aboutus.aspx" style="font-weight: 700; font-size: large">Contact Us</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td class="auto-style14" style="background-image: url('pictures/background.jpeg'); background-color: #FFFFFF;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label10" runat="server" style="text-align: center; font-size: x-large; font-weight: 700; color: #000000; background-color: #FFFFFF" Text="ABOUT US"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style13" style="background-image: url('pictures/background.jpeg')">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style15">&nbsp;<span class="auto-style16"> </span></span><span class="auto-style16"><span class="auto-style15">The purpose of th e project entitled as “ ONLINE DIAGNOSTIC LAB DETAILS SYSTEM ” is to develop website to computerize the Management of a Diagnostic System which is user friendly simple, fast, and cost-effective. It deals with the collection of patient’s information, diagnosis details, etc. Traditionally, it was done manually. The main function of the system is register and store patient details and staff details and retrieve these details as and when required, and also to manipulate these details meaningfully. System inputcontains patient details, diagnosis details, while system output is to get these details on to the screen. The Online Diagnostic Lab Details System can be entered using a username and password. It is accessible by every 
            level of user according to their role. Every user can view the data that they are accessible. Only that user can add data into the database who has editing permission. The data can be retrieved easily. The data are well protected for personaluse and makes the data processing very fast.0</span></span></td>
    </tr>
</table>
</asp:Content>
