<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MasterPage.aspx.cs" Inherits="HealthDiagnostic.MasterPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="background-image: url('pic/solid.jpg'); height: 100%; background-repeat: no-repeat; background-size: cover;background-position: center " >
<head runat="server">
    <link rel ="stylesheet" type="text/css" href="css/style.css" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 157px;
        }
        .auto-style2 {
            width: 157px;
            height: 56px;
        }
        .auto-style3 {
            height: 56px;
        }
        .auto-style4 {
            width: 127px;
            height: 107px;
        }
        .auto-style5 {
            height: 56px;
            width: 355px;
        }
        .auto-style6 {
            width: 355px;
        }
        .auto-style7 {
            width: 513px;
            height: 48px;
        }
        </style>

</head>
<body>
    <form id="form1" runat="server" style="background-color: #FFFFFF"  >
        <div>
            <table class="w-100">
                <tr>
                    <td class="auto-style2">
                        <img alt="" class="auto-style4" src="images/hospital_pic.png" style="background:fixed" /></td>
                    <th class="auto-style5"><h1 class="auto-style7">
                        <asp:Label ID="Label1" runat="server" Text="DunAce Online Health"></asp:Label>
                        </h1></th>
                    <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="BtnLogin" runat="server" class="btn btn-outline-info" Text="Log In" OnClick="BtnLogin_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnRegister" runat="server" class="btn btn-outline-success" Text="Register  Free" OnClick="btnRegister_Click" />
                        &nbsp;&nbsp;
&nbsp;&nbsp;<asp:Button ID="btnRegExpert" runat="server" class="btn btn-outline-success" Text="Register Expert" OnClick="btnRegExpert_Click" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnDiagnosis" runat="server" class="btn btn-outline-warning" Text="Diagnosis" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
