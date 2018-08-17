<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MedRecord.aspx.cs" Inherits="HealthDiagnostic.MedRecord" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel ="stylesheet" type="text/css" href="css/style.css" />
    <title>Medical Record</title>
    <style type="text/css">
        .auto-style3 {
            width: 238px;
        }
        .auto-style4 {
            width: 99%;
        }
        .auto-style5 {
            width: 53px;
        }
        .auto-style7 {
            width: 100%;
            height: 210px;
        }
        .auto-style8 {
            height: 21px;
        }
        .auto-style9 {
            height: 36px;
        }
        .auto-style14 {
            width: 100%;
            height: 161px;
        }
        .auto-style15 {
            width: 178px;
        }
        .auto-style18 {
            float: left;
            height: 10px;
            width: 325px;
        }
        .auto-style19 {
            margin-top: 0px;
        }
        .auto-style20 {
            width: 271px;
        }
        .auto-style23 {
            width: 649px;
        }
        .auto-style24 {
            width: 160px;
        }
        .auto-style26 {
            float: left;
            height: 10px;
        }
        .auto-style29 {
            width: 279px;
        }
        .auto-style30 {
            width: 490px;
        }
        .auto-style31 {
            width: 94px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        

          <div >      
            <asp:Panel ID="Panel2" runat="server" Width="100%">
                <table class="table table-hover">
                    <tr>
                        <td class="auto-style3">
                            <asp:Button class="btn btn-outline-success" ID="BtnHomeMedRec" runat="server" Text="Home" OnClick="BtnHomeMedRec_Click" CausesValidation="False" />
                        </td>
                        <td class="auto-style3">
                            &nbsp;</td>
                        <td class="auto-style31">
                            <asp:Button class="btn btn-outline-primary" ID="BtnPatPageMedRec" runat="server" Text="Patient Page" CausesValidation="False" OnClick="BtnPatPageMedRec_Click" />
                        </td>
                        <td class="auto-style23">&nbsp;</td>
                        <td class="auto-style29">
                            
                            &nbsp;&nbsp;&nbsp;
                            <asp:Button ID="BtnLogoutMedRec" runat="server" CausesValidation="False" class="btn btn-outline-warning" Height="38px" OnClick="BtnLogoutMedRec_Click" Text="Logout" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="BtnReportMed" runat="server" CausesValidation="False" class="btn btn-info" Height="38px" OnClick="BtnReportMed_Click" Text="Report" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="LblPatId" runat="server" Visible="False"></asp:Label>
                            </td>
                        <td class="auto-style30">&nbsp;&nbsp;&nbsp;<asp:Image ID="Image1" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3" colspan="2">Patient Information</td>
                        <td class="auto-style31" style="background-color: lightyellow">
                            <table class="auto-style7" >
                                <tr>
                                    <th class="auto-style8" colspan="2" style="float: left; height: 10px">Problem list</th>
                                    <th class="auto-style8" colspan="2" style="float: left; height: 10px">&nbsp;</th>
                                </tr>
                                <tr>
                                    <td class="auto-style9">Description:</td>
                                    <td class="auto-style9" colspan="2">
                                        <asp:TextBox ID="TxtProbDescription" runat="server"></asp:TextBox>
                                        &nbsp;&nbsp;&nbsp;
                                    </td>
                                    <td rowspan="5">
                                        <asp:GridView ID="GrdProblem" runat="server" AutoGenerateColumns="False" AllowPaging="True" CssClass="auto-style19" OnRowDeleting="GrdProblem_RowDeleting" OnRowEditing="GrdProblem_RowEditing" OnRowUpdating="GrdProblem_RowUpdating">
                                            <Columns>
                                                <asp:TemplateField HeaderText="Id" Visible="False">
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Description">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Description") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Description") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Start Date">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("StartDate", "{0:d}") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("StartDate", "{0:d}") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="End Date">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("EndDate", "{0:d}") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("EndDate", "{0:d}") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Patient Id" Visible="False">
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("PatientId") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:CommandField ButtonType="Button" ShowEditButton="True">
                                                <ControlStyle BackColor="#996600" />
                                                </asp:CommandField>
                                                <asp:CommandField ButtonType="Button" ShowDeleteButton="True">
                                                <ControlStyle BackColor="#996600" />
                                                </asp:CommandField>
                                            </Columns>
                                        </asp:GridView>
                                        <br />
                                        <asp:SqlDataSource ID="SqlDataSourceProblem" runat="server" >
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="LblPatId" Name="PatientId" PropertyName="Text" Type="Int32" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Active:</td>
                                    <td colspan="2">
                                        <asp:CheckBox ID="ChckBoxActiveProblem" runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>Date Started:</td>
                                    <td colspan="2">
                                        <asp:TextBox ID="TxtDateProbStart" runat="server" TextMode="Date"></asp:TextBox>
                                        &nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TxtProbEnd" ControlToValidate="TxtDateProbStart" ErrorMessage="*" ForeColor="Red" Operator="LessThanEqual" SetFocusOnError="True" Display="Dynamic" Type="Date"></asp:CompareValidator>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td>Date Ended:</td>
                                    <td colspan="2">
                                        <asp:TextBox ID="TxtProbEnd" runat="server" TextMode="Date"></asp:TextBox>
                                        &nbsp;<br />
                                        <asp:CompareValidator ID="CompareValidatorDateEnd" runat="server" ControlToCompare="TxtDateProbStart" ControlToValidate="TxtProbEnd" ErrorMessage="*" ForeColor="Red" Operator="GreaterThanEqual" SetFocusOnError="True" Type="Date" Display="Dynamic"></asp:CompareValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Button class="btn btn-primary" ID="BtnAddProblem" runat="server" Text="Add Problem" OnClick="BtnAddProblem_Click" />
                                    </td>
                                    <td colspan="2">
                                        <asp:Button class="btn btn-primary" ID="BtnViewProblem" runat="server"  Text="View Problem" OnClick="BtnViewProblem_Click" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td class="auto-style23" style="background-color: lightyellow">&nbsp;</td>
                        <td class="auto-style29" style="background-color: lightyellow">
                            <table class="auto-style4" style="position: relative" >
                                <tr>
                                    <th colspan="2" style="float: left; height: 10px"> Allergy</th>
                                    
                                </tr>
                                <tr>
                                    <td>Allergen Cause:</td>
                                    <td class="auto-style5">Allergen Reaction</td>
                                    <td rowspan="3">
                                        <asp:GridView ID="GridAllergy" runat="server" AutoGenerateColumns="False" OnRowDeleting="GridAllergy_RowDeleting" OnRowEditing="GridAllergy_RowEditing" OnRowUpdating="GridAllergy_RowUpdating">
                                            <Columns>
                                                <asp:TemplateField HeaderText="id">
                                                    <ItemTemplate>
                                                        <asp:Label ID="LblTryAllergy" runat="server" Text='<%# Bind("Id") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Allergen Name">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="LblAllergName" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Allergy Cause">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("AllergenCategory") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("AllergenCategory") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Reaction">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("AllergenReaction") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="LblReaction" runat="server" Text='<%# Bind("AllergenReaction") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:CommandField ButtonType="Button" ShowEditButton="True">
                                                <ControlStyle BackColor="#996600" />
                                                </asp:CommandField>
                                                <asp:CommandField ButtonType="Button" ShowDeleteButton="True">
                                                <ControlStyle BackColor="#996600" />
                                                </asp:CommandField>
                                            </Columns>
                                        </asp:GridView>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:DropDownList ID="DrpdwnAllergy" runat="server">
                                            <asp:ListItem>-- please select --</asp:ListItem>
                                            <asp:ListItem>Dust</asp:ListItem>
                                            <asp:ListItem>Polen</asp:ListItem>
                                            <asp:ListItem>Food</asp:ListItem>
                                            <asp:ListItem>Insect stings</asp:ListItem>
                                            <asp:ListItem>Animal dander</asp:ListItem>
                                            <asp:ListItem>Mold</asp:ListItem>
                                            <asp:ListItem>Medications</asp:ListItem>
                                            <asp:ListItem>Latex</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td class="auto-style5">
                                        <asp:TextBox ID="TxtAllergyReaction" runat="server"></asp:TextBox>
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td>Name:
                                        <asp:TextBox ID="TxtAllergyName" runat="server"></asp:TextBox>
                                    </td>
                                    <td class="auto-style5">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                    <td class="auto-style5">
                                        &nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Button class ="btn btn-primary" ID="BtnNewAllergy" runat="server" OnClick="BtnNewAllergy_Click" Text="Add Allergy" />
                                    </td>
                                    <td class="auto-style5">
                                        <asp:Button class ="btn btn-primary" ID="BtnViewAllergy" runat="server" Text="View Allergy" OnClick="BtnViewAllergy_Click" />
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                            </table>
                        </td>
                        <td class="auto-style30" style="background-color: lightyellow">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style3" colspan="2">
                            
                        </td>
                        <td class="auto-style31" style="background-color: lightyellow">
                            <table class="auto-style7">
                                <tr>
                                    <th colspan="2" class="auto-style18">Test &amp; Procedure</th>
                                    <th colspan="2" class="auto-style26"></th>
                                    <th class="auto-style26">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</th>
                                </tr>
                                <tr>
                                    <td>Type:<br />
                                        <br />
                                       
                                        <asp:Label ID="LblgoBlood" runat="server" Visible="False"></asp:Label>
                                    </td>
                                    <td colspan="2" class="auto-style20">
                                        <asp:DropDownList ID="DrpTypeTest" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DrpTypeTest_SelectedIndexChanged" >
                                            <asp:ListItem>--Please Select--</asp:ListItem>
                                            <asp:ListItem>Blood</asp:ListItem>
                                            <asp:ListItem>Bone Density Study</asp:ListItem>
                                            <asp:ListItem>Computer Axial Tomography(CT)</asp:ListItem>
                                            <asp:ListItem>Complete Blood Count(CDC)</asp:ListItem>
                                            <asp:ListItem>Colonoscopy</asp:ListItem>
                                            <asp:ListItem>Echocardiography</asp:ListItem>
                                            <asp:ListItem>Electrocardiogram(EKG)</asp:ListItem>
                                            <asp:ListItem>Mammography</asp:ListItem>
                                            <asp:ListItem>Magnetic Resonance Imaging(MRI)</asp:ListItem>
                                            <asp:ListItem>Prothrombin Time(PT)</asp:ListItem>
                                            <asp:ListItem>Prostate Specific Antigen(PSA Test)</asp:ListItem>
                                            <asp:ListItem></asp:ListItem>
                                        </asp:DropDownList>
                                        <br />
                                        <br />
                                        <asp:DropDownList ID="DrpDownBloodType" runat="server" DataSourceID="SqlDataSourceBlood" DataTextField="Name" DataValueField="Name" Visible="False" AutoPostBack="True" OnSelectedIndexChanged="DrpDownBloodType_SelectedIndexChanged">
                                            <asp:ListItem>--Select--</asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSourceBlood" runat="server" ConnectionString="<%$ ConnectionStrings:HealthDB %>" SelectCommand="SELECT [Name] FROM [Blood_Test]"></asp:SqlDataSource>
                                    </td>
                                    <td rowspan="5" class="auto-style24">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:GridView ID="GrdTestProceedure" runat="server" AutoGenerateColumns="False" CssClass="auto-style16" Width="283px" OnRowEditing="GrdTestProceedure_RowEditing" OnRowUpdating="GrdTestProceedure_RowUpdating" style="margin-right: 0px" OnRowDeleting="GrdTestProceedure_RowDeleting">
                                            <Columns>
                                                <asp:TemplateField HeaderText="Id">
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label10" runat="server" Text='<%# Bind("Id") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Type">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Type") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="LblTestType" runat="server" Text='<%# Bind("Type") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Value">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("Value") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label7" runat="server" Text='<%# Bind("Value") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Date">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("Date", "{0:d}") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="LblTestDate" runat="server" Text='<%# Bind("Date", "{0:d}") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Patient Id" Visible="False">
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label8" runat="server" Text='<%# Bind("PatientId") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Normal Range">
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label9" runat="server" Text='<%# Bind("Normal_Value") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:CommandField ButtonType="Button" ShowEditButton="True">
                                                <ControlStyle BackColor="#996600" />
                                                </asp:CommandField>
                                                <asp:CommandField ButtonType="Button" ShowDeleteButton="True">
                                                <ControlStyle BackColor="#996600" />
                                                </asp:CommandField>
                                            </Columns>
                                        </asp:GridView>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <br />
                                    </td>
                                
                                </tr>
                                <tr>
                                    <td>Result:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                    <td colspan="2" class="auto-style20">
                                        <asp:TextBox ID="TxtValTest" runat="server"></asp:TextBox>
                                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtValTest" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True" ValidationGroup="ValGroupTest"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Date Active:</td>
                                    <td colspan="2" class="auto-style20">
                                        <asp:TextBox ID="TxtDateTest" runat="server" CssClass="offset-sm-0" TextMode="Date" Width="179px"></asp:TextBox>
                                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtDateTest" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True" ValidationGroup="ValGroupTest"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Normal Value:</td>
                                    <td colspan="2" class="auto-style20">
                                        <asp:Label ID="LblNormalVal" runat="server" Text="*"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Button class="btn btn-primary" ID="BtnAddTest" runat="server" Text="Add Test" OnClick="BtnAddTest_Click" ValidationGroup="ValGroupTest" />
                                    </td>
                                    <td colspan="2" class="auto-style20">
                                        <asp:Button class="btn btn-primary" ID="BtnViewTest" runat="server" Text="View Test" OnClick="BtnViewTest_Click" CausesValidation="False" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td class="auto-style23" style="background-color: lightyellow">&nbsp;</td>
                        <td class="auto-style29" style="background-color:lightyellow">
                            <table class="auto-style14" >
                                <tr>
                                    <th colspan="2" style="float: left ; height: 10px"> Medicine</th>
                                    <th colspan="2" style="float: left ; height: 10px">&nbsp;</th>
                                </tr>
                                <tr>
                                    <td class="auto-style15">Medicine Name</td>
                                    <td colspan="2">
                                        <asp:DropDownList ID="DrpdMedicine" runat="server">
                                        </asp:DropDownList>
                                    </td>
                                    <td rowspan="5">
                                        <asp:GridView ID="GridMed" runat="server">
                                        </asp:GridView>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style15">Directions:</td>
                                    <td colspan="2">
                                        <asp:TextBox ID="TxtDirectMedicine" runat="server"></asp:TextBox>
                                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtDirectMedicine" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True" ValidationGroup="ValGroupMedicine"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style15">Date Started:</td>
                                    <td colspan="2">
                                        <asp:TextBox ID="TxtStartMed" runat="server" TextMode="Date"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TxtStartMed" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True" ValidationGroup="ValGroupMedicine"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style15">Active:</td>
                                    <td colspan="2">
                                        <asp:CheckBox ID="ChkboxMed" runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style15">End date:</td>
                                    <td colspan="2">
                                        <asp:TextBox ID="TxtEndMed" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style15">
                                        <asp:Button class="btn btn-primary" ID="BtnAddMedicine" runat="server" Text="Add Medicine" ValidationGroup="ValGroupMedicine" />
                                    </td>
                                    <td colspan="2">&nbsp;&nbsp;
                                        <asp:Button class="btn btn-primary" ID="BtnViewMed" runat="server" Text="View Medicine" CausesValidation="False" />
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                            </table>
                        </td>
                        <td class="auto-style30" style="background-color:lightyellow">&nbsp;</td>
                    </tr>
                </table>
            </asp:Panel>
        </div>
       
    </form>
</body>
</html>
