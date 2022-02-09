<%@ Page Title="" Language="C#" MasterPageFile="~/Labreportingsystem.Master" AutoEventWireup="true" CodeBehind="AppointmentReport.aspx.cs" Inherits="Diagnostic_lab_Reporting_System.AppointmentReport" %>
<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <br />
        <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" Height="372px" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="1355px">
            <LocalReport ReportEmbeddedResource="Diagnostic_lab_Reporting_System.Report1.rdlc" ReportPath="C:\Users\Akshu\Documents\Diagnostic lab Reporting System\Diagnostic lab Reporting System\Report1.rdlc">
                <DataSources>
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="TestbookingDataset1" />
                </DataSources>
            </LocalReport>
        </rsweb:ReportViewer>
        <br />
        <br />
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="Diagnostic_lab_Reporting_System.TestbookingDataSet1TableAdapters.Book_AppointmentTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_Appointment_No" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Appointment_No" Type="Int32" />
                <asp:Parameter Name="Taluka" Type="String" />
                <asp:Parameter Name="Laboratory_Name" Type="String" />
                <asp:Parameter Name="Laboratory_Address" Type="String" />
                <asp:Parameter Name="Laboratory_Contactno" Type="String" />
                <asp:Parameter Name="Patient_Id" Type="String" />
                <asp:Parameter Name="Patient_Name" Type="String" />
                <asp:Parameter Name="Contact_No" Type="String" />
                <asp:Parameter Name="Reason" Type="String" />
                <asp:Parameter Name="Appointment_Date" Type="String" />
                <asp:Parameter Name="Appointment_Time" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Taluka" Type="String" />
                <asp:Parameter Name="Laboratory_Name" Type="String" />
                <asp:Parameter Name="Laboratory_Address" Type="String" />
                <asp:Parameter Name="Laboratory_Contactno" Type="String" />
                <asp:Parameter Name="Patient_Id" Type="String" />
                <asp:Parameter Name="Patient_Name" Type="String" />
                <asp:Parameter Name="Contact_No" Type="String" />
                <asp:Parameter Name="Reason" Type="String" />
                <asp:Parameter Name="Appointment_Date" Type="String" />
                <asp:Parameter Name="Appointment_Time" Type="String" />
                <asp:Parameter Name="Original_Appointment_No" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    
</asp:Content>
