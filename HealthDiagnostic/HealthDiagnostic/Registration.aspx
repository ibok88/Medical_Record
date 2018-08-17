<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="HealthDiagnostic.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel ="stylesheet" type="text/css" href="css/style.css" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 321px;
        }
        .auto-style2 {
            width: 435px;
        }
        .auto-style3 {
            width: 321px;
            height: 32px;
        }
        .auto-style4 {
            width: 435px;
            height: 32px;
        }
        .auto-style5 {
            height: 32px;
        }
        .auto-style6 {
            width: 321px;
            height: 33px;
        }
        .auto-style7 {
            width: 435px;
            height: 33px;
        }
        .auto-style8 {
            height: 33px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <table class="w-100">
                <tr>
                    <td class="auto-style1">
                        <asp:Button ID="BtnHomePatient" class="btn btn-primary"  runat="server" Text="Home" CausesValidation="False" OnClick="BtnHomePatient_Click" />
                    </td>
                    <th class="auto-style2"><h1>Register your Account</h1></th>
                </tr>
                <tr>
                    <td class="auto-style1">
                        &nbsp;</td>
                    <th class="auto-style2">&nbsp;</th>
                </tr>
                <tr>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td class="auto-style4">
                        <asp:Label ID="LblName" runat="server" Text="Name"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TxtName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtName" ErrorMessage="Please enter field" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td class="auto-style4">
                        &nbsp;</td>
                    <td class="auto-style5">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        &nbsp;</td>
                    <td class="auto-style2">
                        <asp:Label ID="LblSurname" runat="server" Text="Surname"></asp:Label>
                     </td>
                    <td>
                        <asp:TextBox ID="TxtSurname" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtSurname" ErrorMessage="Please enter field" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                     </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        &nbsp;</td>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                 <tr>
                    <td class="auto-style1">
                        &nbsp;</td>
                    <td class="auto-style2">
                        <asp:Label ID="LblEmail" runat="server" Text="Email"></asp:Label>
                     </td>
                    <td>
                        <asp:TextBox ID="TxtEmail" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtEmail" ErrorMessage="Please enter field" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                     </td>
                </tr>
                 <tr>
                    <td class="auto-style1">
                        &nbsp;</td>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                 <tr>
                    <td class="auto-style1">
                        &nbsp;</td>
                    <td class="auto-style2">
                        <asp:Label ID="LblGender" runat="server" Text="Gender"></asp:Label>
                     </td>
                    <td>
                        <asp:DropDownList ID="DrpDwnGender" runat="server" CausesValidation="True">
                            <asp:ListItem>---Select---</asp:ListItem>
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rqfdGender" runat="server" ControlToValidate="DrpDwnGender" ErrorMessage="Please enter field" ForeColor="#CC0000" SetFocusOnError="True" InitialValue="--Select--">*</asp:RequiredFieldValidator>
                     </td>
                </tr>
                 <tr>
                    <td class="auto-style1">
                        &nbsp;</td>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                 <tr>
                    <td class="auto-style1">
                        &nbsp;</td>
                    <td class="auto-style2">
                        <asp:Label ID="LblDob" runat="server" Text="Date of Birth"></asp:Label>
                     </td>
                    <td>
                        <asp:TextBox ID="TxtDOB" runat="server" Width="189px" CausesValidation="True"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RqfdDob" runat="server" ControlToValidate="TxtDOB" ErrorMessage="Please enter field" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                     </td>
                </tr>
                 <tr>
                    <td class="auto-style1">
                        &nbsp;</td>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                 <tr>
                    <td class="auto-style6">
                    </td>
                    <td class="auto-style7">
                        <asp:Label ID="LblCountRes" runat="server" Text="Country of Residence"></asp:Label>
                     </td>
                    <td class="auto-style8">
                        <asp:DropDownList ID="DrpdwnResidence" runat="server" CausesValidation="True">
                            <asp:ListItem>Select Country</asp:ListItem>
                            <asp:ListItem>USA</asp:ListItem>
                            <asp:ListItem>United Kingdom</asp:ListItem>
                            <asp:ListItem>Germany</asp:ListItem>
                            <asp:ListItem>Ghana</asp:ListItem>
                            <asp:ListItem>Nigeria</asp:ListItem>
                            <asp:ListItem>Canada</asp:ListItem>
                            <asp:ListItem>Brazil</asp:ListItem>
                            <asp:ListItem>South Africa</asp:ListItem>
                            <asp:ListItem>United Arab Emirate</asp:ListItem>
                            <asp:ListItem>India</asp:ListItem>
                            <asp:ListItem>China</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rqdCOR" runat="server" ControlToValidate="DrpdwnResidence" ErrorMessage="Please enter field" ForeColor="#CC0000" InitialValue="--Select Country--" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                     </td>
                </tr>
                 <tr>
                    <td class="auto-style6">
                        &nbsp;</td>
                    <td class="auto-style7">
                        &nbsp;</td>
                    <td class="auto-style8">
                        &nbsp;</td>
                </tr>
                 <tr>
                    <td class="auto-style1">
                        &nbsp;</td>
                    <td class="auto-style2">
                        <asp:Label ID="LblUsername" runat="server" Text="Username"></asp:Label>
                     </td>
                    <td>
                        <asp:TextBox ID="TxtUserName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TxtUserName" ErrorMessage="Please enter field" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                     </td>
                </tr>
                 <tr>
                    <td class="auto-style1">
                        &nbsp;</td>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                 <tr>
                    <td class="auto-style1">
                        &nbsp;</td>
                    <td class="auto-style2">
                        <asp:Label ID="LblPassword" runat="server" Text="Password"></asp:Label>
                     </td>
                    <td>
                        <asp:TextBox ID="TxtPass" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TxtPass" ErrorMessage="Please enter field" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                     </td>
                </tr>
                 <tr>
                    <td class="auto-style1">
                        &nbsp;</td>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                 <tr>
                    <td class="auto-style1">
                        &nbsp;</td>
                    <td class="auto-style2">
                        <asp:Label ID="LblNationality" runat="server" Text="Nationality"></asp:Label>
                     </td>
                    <td>
                        <asp:DropDownList ID="DrpdwnNation" runat="server">
                            <asp:ListItem>Select Country</asp:ListItem>
                            <asp:ListItem>USA</asp:ListItem>
                            <asp:ListItem>United Kingdom</asp:ListItem>
                            <asp:ListItem>Germany</asp:ListItem>
                            <asp:ListItem>Ghana</asp:ListItem>
                            <asp:ListItem>Nigeria</asp:ListItem>
                            <asp:ListItem>Canada</asp:ListItem>
                            <asp:ListItem>Brazil</asp:ListItem>
                            <asp:ListItem>South Africa</asp:ListItem>
                            <asp:ListItem>United Arab Emirate</asp:ListItem>
                            <asp:ListItem>India</asp:ListItem>
                            <asp:ListItem>China</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RqdNation" runat="server" ControlToValidate="DrpdwnNation" ErrorMessage="Please enter field" ForeColor="#CC0000" InitialValue="--Select Country--" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                     </td>
                </tr>
                    
                 <tr>
                    <td class="auto-style1">
                        &nbsp;</td>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                    
                 <tr>
                    <td class="auto-style1">
                        &nbsp;</td>
                    <td class="auto-style2">
                        <asp:Label ID="LblPatImage" runat="server" Text="Image"></asp:Label>
                     </td>
                    <td>
                        <asp:FileUpload ID="FileUploadPatientReg" runat="server" />
                     </td>
                </tr>
                    
                 <tr>
                    <td class="auto-style1">
                        &nbsp;</td>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                    
                 <tr>
                    <td class="auto-style1">
                        &nbsp;</td>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="BtnSave" runat="server" class="btn btn-success" Text="Submit Registration" OnClick="BtnSave_Click" />
                     </td>
                </tr>
                    
           </table>
        </div>
    </form>
</body>
</html>
