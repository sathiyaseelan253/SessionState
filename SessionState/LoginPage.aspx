<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="SessionState.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
    <style type="text/css">
        .auto-style1 {
            height: 120px;
        }
        .auto-style3 {
            height: 171px;
        }
        .auto-style4 {
            height: 69px;
        }
        .auto-style5 {
            height: 65px;
        }
        .auto-style6 {
            height: 120px;
            margin-left: 80px;
        }
    </style>
</head>
<body>
    <form id="loginform" runat="server">
        <div style="font-family: Arial">
<table align="center">
    <tr>
        <td colspan="2" class="auto-style3">
            <h1>
                Welcome to Login Page

            </h1>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
            <b style="column-width:initial;">FirstName</b>
        </td>
        <td class="auto-style4">
            :<asp:TextBox ID="txtName" runat="server" BorderColor="yellow">
            </asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredUsername" runat="server" ErrorMessage="Username Required"  ControlToValidate="txtName" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
   
      <tr>
        <td class="auto-style5">
            <b>Password</b>
        </td>
        <td class="auto-style5">
            :<asp:TextBox ID="txtPass" TextMode="Password" runat="server" BorderColor="yellow">
            </asp:TextBox>
          
            <asp:RequiredFieldValidator ID="RequiredPassword" runat="server" ErrorMessage="Password Required" ControlToValidate="txtPass" ForeColor="Red"></asp:RequiredFieldValidator>
            <%--<asp:CompareValidator ID="ComparePassword" runat="server" ErrorMessage="CompareValidator"  ControlToValidate="txtPass" ControlToCompare="txtPass"></asp:CompareValidator>--%>
          
        </td>
    </tr>
    
 

    <tr>
        <td colspan="2" class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnLogin" runat="server" OnClick="Button1_Click" Text="Login"  />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="SubmitBtn" runat="server" Text="Signup" Width="68px" OnClick="SubmitBtn_Click"  />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lbltext" runat="server"  Text="Incorrect UserName and Password" ></asp:Label>
          </td>
    </tr>
   
 

    <tr>
        <td colspan="2" class="auto-style1">&nbsp;</td>
    </tr>
   
   </table>
            </div>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
