<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PatientPage.aspx.cs" Inherits="HealthDiagnostic.PatientPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel ="stylesheet" type="text/css" href="css/style.css" />
    <title></title>
    <style type="text/css">


.btn {
  text-shadow: 0 1px 0 rgba(0, 0, 0, 0.05);
}

.btn-outline-warning {
  color: #DD5600;
  background-color: transparent;
  background-image: none;
  border-color: #DD5600;
}

.btn {
  display: inline-block;
  font-weight: 400;
  text-align: center;
  white-space: nowrap;
  vertical-align: middle;
  -webkit-user-select: none;
     -moz-user-select: none;
      -ms-user-select: none;
          user-select: none;
  border: 1px solid transparent;
  padding: 0.375rem 0.75rem;
  font-size: 1rem;
  line-height: 1.5;
  border-radius: 0.25rem;
  -webkit-transition: color 0.15s ease-in-out, background-color 0.15s ease-in-out, border-color 0.15s ease-in-out, -webkit-box-shadow 0.15s ease-in-out;
  transition: color 0.15s ease-in-out, background-color 0.15s ease-in-out, border-color 0.15s ease-in-out, -webkit-box-shadow 0.15s ease-in-out;
  transition: color 0.15s ease-in-out, background-color 0.15s ease-in-out, border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
  transition: color 0.15s ease-in-out, background-color 0.15s ease-in-out, border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out, -webkit-box-shadow 0.15s ease-in-out;
}

button,
html [type="button"],
[type="reset"],
[type="submit"] {
  -webkit-appearance: button;
}

button,
input {
  overflow: visible;
}

input,
button,
select,
optgroup,
textarea {
  margin: 0;
  font-family: inherit;
  font-size: inherit;
  line-height: inherit;
}

  *,
  *::before,
  *::after {
    text-shadow: none !important;
    -webkit-box-shadow: none !important;
            box-shadow: none !important;
  }
  
*,
*::before,
*::after {
  -webkit-box-sizing: border-box;
          box-sizing: border-box;
}

        .auto-style1 {
            width: 374px;
        }
        .auto-style2 {
            width: 455px;
        }
        .auto-style3 {
            margin-bottom: 1;
        }
        .auto-style6 {
            width: 215px;
        }
        .auto-style7 {
            width: 243px;
        }
        .auto-style8 {
            margin-top: 179px;
        }
        .auto-style10 {
            width: 374px;
            height: 58px;
        }
        .auto-style11 {
            height: 58px;
        }
        .auto-style12 {
            width: 374px;
            height: 312px;
        }
        .auto-style13 {
            height: 312px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class = "bs-component">
            <table class="table table-hover" style="width: 100%;">
                <tr>
                    <td class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        <asp:Button ID="BtnHome" runat="server" class="btn btn-outline-info" Text="Home" OnClick="BtnHome_Click" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="BtnLogout" runat="server" class="btn btn-outline-info" Text="Log Out" OnClick="BtnLogout_Click" />
                        </td>
                    <td class="auto-style2" rowspan="5">
                        
                            
                           
                        <asp:FormView ID="FormViewDiagnosis" runat="server" BackColor="#FFCCFF" BorderColor="#CC9966" BorderStyle="None" BorderWidth="0px" CellPadding="4" Height="16px"  Width="409px" CssClass="auto-style8">
                            <EditItemTemplate>
                                PatientGender:
                                <asp:TextBox ID="PatientGenderTextBox" runat="server" Text='<%# Bind("PatientGender") %>' />
                                <br />
                                PatientDOB:
                                <asp:TextBox ID="PatientDOBTextBox" runat="server" Text='<%# Bind("PatientDOB") %>' />
                                <br />
                                PatientCOR:
                                <asp:TextBox ID="PatientCORTextBox" runat="server" Text='<%# Bind("PatientCOR") %>' />
                                <br />
                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </EditItemTemplate>
                            <EditRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                            <InsertItemTemplate>
                                PatientGender:
                                <asp:TextBox ID="PatientGenderTextBox0" runat="server" Text='<%# Bind("PatientGender") %>' />
                                <br />
                                PatientDOB:
                                <asp:TextBox ID="PatientDOBTextBox0" runat="server" Text='<%# Bind("PatientDOB") %>' />
                                <br />
                                PatientCOR:
                                <asp:TextBox ID="PatientCORTextBox0" runat="server" Text='<%# Bind("PatientCOR") %>' />
                                <br />
                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </InsertItemTemplate>
                            <ItemTemplate>
                                &nbsp;<br />
                                <table style="width:100%;">
                                    <tr>
                                        <td class="auto-style6">Patient Gender:</td>
                                        <td class="auto-style7">
                                            <asp:Label ID="PatientGenderLabel" runat="server" Text='<%# Bind("PatientGender") %>' />
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style6">Patient Date Of Birth: </td>
                                        <td class="auto-style7">
                                            <asp:Label ID="PatientDOBLabel" runat="server" Text='<%# Bind("PatientDOB", "{0:dd/MM/yyyy}") %>' />
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style6">Patient Residence: </td>
                                        <td class="auto-style7">
                                            <asp:Label ID="PatientCORLabel" runat="server" Text='<%# Bind("PatientCOR") %>' />
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style6">Symptoms felt: </td>
                                        <td class="auto-style7">
                                            <asp:TextBox ID="TxtSymtom" runat="server" CssClass="auto-style3"></asp:TextBox>
                                            <asp:Label ID="LblDiagnosis" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Button ID="BtnSymptom" runat="server" class="btn btn-primary" OnClick="BtnSymptom_Click" Text="Check" />
                                        </td>
                                    </tr>
                                </table>
                                <br />
                                <br />
                                <br />
                                <br />
                            </ItemTemplate>
                            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                            <RowStyle BackColor="White" ForeColor="#330099" />
                        </asp:FormView>
                        
                            
                           
                            <br />
                            <asp:DetailsView ID="DetailsViewAcctInfo" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="White" BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="None" Height="142px" Width="365px" CssClass="auto-style8">
                                <EditRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                                <Fields>
                                    <asp:TemplateField HeaderText="Name">
                                        <ItemTemplate>
                                            <asp:Label ID="LblPatName" runat="server" Text='<%# Bind("PatientName") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Surname:">
                                        <ItemTemplate>
                                            <asp:Label ID="LblPatSurname" runat="server" Text='<%# Bind("PatientSurname") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Email:">
                                        <ItemTemplate>
                                            <asp:Label ID="LblPatEmail" runat="server" Text='<%# Bind("PatientEmail") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Gender:">
                                        <ItemTemplate>
                                            <asp:Label ID="LblPatGender" runat="server" Text='<%# Bind("PatientGender") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Date Of Birth:">
                                        <ItemTemplate>
                                            <asp:Label ID="LblPatDOB" runat="server" Text='<%# Bind("PatientDOB","{0:dd/MM/yyyy}") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Country Of Residence:">
                                        <ItemTemplate>
                                            <asp:Label ID="LblPatCOR" runat="server" Text='<%# Bind("PatientCOR") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="User Name:">
                                        <ItemTemplate>
                                            <asp:Label ID="LblPatUsName" runat="server" Text='<%# Bind("PatientUserName") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Password:">
                                        <ItemTemplate>
                                            <asp:Label ID="LblPatPass" runat="server" Text='<%# Bind("PatientPassword") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Nationality:">
                                        <ItemTemplate>
                                            <asp:Label ID="LblPatNation" runat="server" Text='<%# Bind("PatientNationality") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Fields>
                                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                                <RowStyle BackColor="White" ForeColor="#330099" />
                            </asp:DetailsView>
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
                        
                            
                           
                    </td>
                    <td>
                        &nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Lblidentity" runat="server" ForeColor="#0000CC"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        </td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp; 
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">
                        <asp:Button ID="BtnDiagnosisPatient" runat="server" class="btn btn-outline-warning" Text="Diagnosis" OnClick="BtnDiagnosisPatient_Click" />
                        <asp:Image ID="Image2" runat="server" Height="69px" ImageUrl="~/images/diagnosis_pic.png" Width="71px" />
                        <table style="width:100%;">
                            <tr>
                                <td>&nbsp;
                                    <br />
                                </td>
                            </tr>
                        </table>
                        </td>
                    <td class="auto-style13">
                        <asp:Button ID="BtnMedRec" runat="server" class="btn btn-outline-success" Text="Medical Record" OnClick="BtnMedRec_Click" />
                        <asp:Image ID="Image3" runat="server" Height="69px" ImageUrl="~/images/MedRecordpic.jpg" Width="71px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">
                        <asp:Button ID="BtnAccountInfo" class="btn btn-outline-success" runat="server" Text="Account Information" OnClick="BtnAccountInfo_Click" />
                        <asp:Image ID="Image1" runat="server" Width="71px" Height="69px" ImageUrl="~/images/settings.jpg" />
                        </td>
                    <td class="auto-style13">
                        <br />
                        <asp:Button ID="BtnMeetExpert" class="btn btn-outline-warning" runat="server" Text="Meet Expert" OnClick="BtnMeetExpert_Click" />
                        <asp:Image ID="Image4" runat="server" Height="69px" ImageUrl="~/images/Expert_Pic.jpg" Width="71px" />
                        <br />
                        <br />
                        <asp:DropDownList ID="DrpDwnPatExpert" runat="server" AutoPostBack="True" CssClass="form-check-label" DataSourceID="SqlDataSourcePatientExpert" DataTextField="Occupation" DataValueField="Occupation" Visible="False">
                            <asp:ListItem>--Select</asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSourcePatientExpert" runat="server" ConnectionString="<%$ ConnectionStrings:HealthDB %>" SelectCommand="SELECT [Occupation] FROM [Expert]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        &nbsp;</td>
                    <td class="auto-style11">
                        &nbsp;</td>
                </tr>
               
                </table>
        </div>
    </form>
</body>
</html>
