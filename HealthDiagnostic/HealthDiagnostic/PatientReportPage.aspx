<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PatientReportPage.aspx.cs" Inherits="HealthDiagnostic.PatientReportPage" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
&nbsp;<br />
            <asp:Label ID="LblSessionId" runat="server"></asp:Label>
            <br />
            <rsweb:ReportViewer ID="ReportViewerPatientMed" runat="server" Width="100%" BackColor="" ClientIDMode="AutoID" Height="580px" HighlightBackgroundColor="" InternalBorderColor="204, 204, 204" InternalBorderStyle="Solid" InternalBorderWidth="1px" LinkActiveColor="" LinkActiveHoverColor="" LinkDisabledColor="" PrimaryButtonBackgroundColor="" PrimaryButtonForegroundColor="" PrimaryButtonHoverBackgroundColor="" PrimaryButtonHoverForegroundColor="" SecondaryButtonBackgroundColor="" SecondaryButtonForegroundColor="" SecondaryButtonHoverBackgroundColor="" SecondaryButtonHoverForegroundColor="" SplitterBackColor="" ToolbarDividerColor="" ToolbarForegroundColor="" ToolbarForegroundDisabledColor="" ToolbarHoverBackgroundColor="" ToolbarHoverForegroundColor="" ToolBarItemBorderColor="" ToolBarItemBorderStyle="Solid" ToolBarItemBorderWidth="1px" ToolBarItemHoverBackColor="" ToolBarItemPressedBorderColor="51, 102, 153" ToolBarItemPressedBorderStyle="Solid" ToolBarItemPressedBorderWidth="1px" ToolBarItemPressedHoverBackColor="153, 187, 226">
                <LocalReport ReportPath="PatientReport.rdlc">
                    <DataSources>
                        <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="DataSet1" />
                        <rsweb:ReportDataSource DataSourceId="ObjectDataSource2" Name="DataSetProblem" />
                        <rsweb:ReportDataSource DataSourceId="ObjectDataSource3" Name="DataSetAllergy" />
                        <rsweb:ReportDataSource DataSourceId="ObjectDataSource4" Name="DataSetTestProcedure" />
                        <rsweb:ReportDataSource DataSourceId="ObjectDataSource5" Name="DataSetMedicine" />
                    </DataSources>
                </LocalReport>
            </rsweb:ReportViewer>
            <asp:ObjectDataSource ID="ObjectDataSource5" runat="server" SelectMethod="GetData" TypeName="HealthDiagnostic.PatientMedicineDataSetTableAdapters.PatientMedicineTableAdapter"></asp:ObjectDataSource>
            <asp:ObjectDataSource ID="ObjectDataSource4" runat="server" SelectMethod="GetData" TypeName="HealthDiagnostic.PatientTestProcedureDataSetTableAdapters.PatientTestProcedureTableAdapter"></asp:ObjectDataSource>
            <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" SelectMethod="GetData" TypeName="HealthDiagnostic.PatientAllergyDataSetTableAdapters.PatientAllergyTableAdapter"></asp:ObjectDataSource>
            <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="GetData" TypeName="HealthDiagnostic.PatientProblemDataSetTableAdapters.PatientProblemTableAdapter"></asp:ObjectDataSource>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetData" TypeName="HealthDiagnostic.PatientInfoDataSetTableAdapters.PatientTableAdapter"></asp:ObjectDataSource>
            <br />
        </div>
    </form>
</body>
</html>
