<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterExpert.aspx.cs" Inherits="HealthDiagnostic.Expert" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <link rel ="stylesheet" type="text/css" href="css/style.css" />

    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 23px;
        }
        .auto-style2 {
            width: 438px;
        }
        .auto-style3 {
            height: 23px;
            width: 438px;
        }

.btn-success {
  background-image: -webkit-gradient(linear, left top, left bottom, from(#88c149), color-stop(60%, #73A839), to(#699934));
  background-image: linear-gradient(#88c149, #73A839 60%, #699934);
  background-repeat: no-repeat;
}

.btn {
  text-shadow: 0 1px 0 rgba(0, 0, 0, 0.05);
}

.btn-success {
  color: #fff;
  background-color: #73A839;
  border-color: #73A839;
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

        </style>
</head>
<body>
    <form id="form1" class="bs-docs-section" runat="server" >
        <div>
            <table class="table table-hover" style="width:100%;">
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="BtnHomeExpert" class="btn btn-primary"  runat="server" Text="Home" CausesValidation="False" OnClick="BtnHomeExpert_Click" />
                    </td>
                    <th class="auto-style2"><h1>Register your Account</h1></th>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Label ID="LblExpName" runat="server" Text="Name"></asp:Label>
                        :</td>
                    <td>
                        <asp:TextBox ID="TxtExpName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RFVExpName" runat="server" ControlToValidate="TxtExpName" ErrorMessage="Please Enter Field" ForeColor="#CC0000" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style3">
                        <asp:Label ID="LblExpSurname" runat="server" Text="Surname"></asp:Label>
                        :</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="TxtExpSurname" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RFVExpSurname" runat="server" ControlToValidate="TxtExpSurname" ErrorMessage="Please enter field" ForeColor="#CC0000" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Label ID="LblExpEmail" runat="server" Text="Email"></asp:Label>
                        :</td>
                    <td>
                        <asp:TextBox ID="TxtEmail" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RFDExpEmail" runat="server" ControlToValidate="TxtEmail" ErrorMessage="Please enter the field" ForeColor="#CC0000" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Label ID="LblSpecialization" runat="server" Text="Specialization"></asp:Label>
                        :</td>
                    <td>
                        <asp:DropDownList ID="DrdExpSpecialization" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceExpert" DataTextField="Occupation" DataValueField="Occupation" OnSelectedIndexChanged="DrdExpSpecialization_SelectedIndexChanged">
                            <asp:ListItem>--Select-- </asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSourceExpert" runat="server" ConnectionString="<%$ ConnectionStrings:HealthDB %>" SelectCommand="SELECT [Occupation] FROM [Expert]"></asp:SqlDataSource>
                        <asp:RequiredFieldValidator ID="RFDExpSpecialization" runat="server" ControlToValidate="DrdExpSpecialization" ErrorMessage="Please enter field" ForeColor="#CC0000" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Label ID="LblExpUsname" runat="server" Text="User Name"></asp:Label>
                        :</td>
                    <td>
                        <asp:TextBox ID="TxtExpUsName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RFDExpUsname" runat="server" ControlToValidate="TxtExpUsName" ErrorMessage="PLease enter field" ForeColor="#CC0000" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Label ID="LblPassExpert" runat="server" Text="Password"></asp:Label>
                        :</td>
                    <td>
                        <asp:TextBox ID="TxtExpPass" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RFVExpPass" runat="server" ControlToValidate="TxtExpPass" ErrorMessage="Please enter field" ForeColor="#CC0000" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Label ID="LblExpLocation" runat="server" Text="Location"></asp:Label>
                        :</td>
                    <td>
                        <asp:DropDownList ID="DrdLocation" runat="server">
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
                        <asp:RequiredFieldValidator ID="RqfVLocation" runat="server" ControlToValidate="DrdLocation" ErrorMessage="RequiredFieldValidator" ForeColor="#CC0000" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style2">Image:</td>
                    <td>
                        <asp:FileUpload ID="FileUploadExpert" runat="server" />
&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style2">Id:</td>
                    <td>
                        <asp:Label ID="LblSpecialId" runat="server" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Button ID="BtnExpSave" runat="server" class="btn btn-success" Text="Submit Registration" OnClick="BtnExpSave_Click" />
                     </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
