<%@ Page Title="" Language="C#" MasterPageFile="~/Labreportingsystem.Master" AutoEventWireup="true" CodeBehind="FeedbackReport.aspx.cs" Inherits="Diagnostic_lab_Reporting_System.FeedbackReport" %>
<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <br />
        <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" Height="199px" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt">
            <LocalReport ReportEmbeddedResource="Diagnostic_lab_Reporting_System.Report2.rdlc" ReportPath="C:\Users\Akshu\Documents\Diagnostic lab Reporting System\Diagnostic lab Reporting System\Report2.rdlc">
                <DataSources>
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="DataSet1" />
                </DataSources>
            </LocalReport>
        </rsweb:ReportViewer>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="Diagnostic_lab_Reporting_System.TestbookingDataSet1TableAdapters.FeedbackTableAdapter">
            <InsertParameters>
                <asp:Parameter Name="Full_Name" Type="String" />
                <asp:Parameter Name="Feedback" Type="String" />
            </InsertParameters>
        </asp:ObjectDataSource>
        <br />
        <br />
    
</asp:Content>
