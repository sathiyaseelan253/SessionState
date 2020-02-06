<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserDetails_Page.aspx.cs" Inherits="SessionState.UserDetails_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration For Gate Exam</title>
    <style type="text/css">
        .auto-style1 {
           height: 40px;
        }
        .auto-style2 {
            height: 892px;
            width: 517px;
        }
        .auto-style5 {
           height: 40px;
        }
        .auto-style6 {
           height: 40px;
        }
        .auto-style7 {
            height: 40px;
        }
        .auto-style9 {
           height: 40px;
        }
        .auto-style10 {
           height: 40px;
        }
        .auto-style11 {
          height: 40px;
        }
        .auto-style12 {
           height: 40px;
        }
        .auto-style13 {
            height: 43px;
        }
        .auto-style14 {
            height: 70px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div style=" font-family: Arial
            ">
<table class="auto-style2" align="center">
    <tr>
        <td colspan="2" class="auto-style5">
            <h1 style="                    text-align: center;
            ">
                SignUp Page</h1>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">
            <b>First Name</b>
        </td>
        <td class="auto-style7">
            :<asp:TextBox ID="txtFirstName" runat="server" >
            </asp:TextBox>
            &nbsp;
            <asp:RequiredFieldValidator ID="RequiredName" runat="server" ErrorMessage="First Name required*" ForeColor="Red" ControlToValidate="txtFirstName"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <br />
    <tr>
        <td class="auto-style10">
            <b>Last Name</b>
        </td>
        <td class="auto-style9">
            :<asp:TextBox ID="txtLastName" runat="server" >
            </asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredLastName" runat="server" ErrorMessage="Last Name required*"  ForeColor="Red" ControlToValidate="txtLastName"></asp:RequiredFieldValidator>
        </td>
    </tr>
     <tr>
        <td class="auto-style11">
            <b>Email</b>
        </td>
        <td class="auto-style12">
            :<asp:TextBox ID="txtEmail" runat="server" >
            </asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredEmail" runat="server" ErrorMessage="Email required*"  ForeColor="Red" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
        </td>
    </tr>
      <tr>
        <td>
            <b>Age</b>
        </td>
        <td class="auto-style1">
            :<asp:TextBox ID="txtAge" runat="server" >
            </asp:TextBox>
            
            <asp:RangeValidator ID="AgeValidation" runat="server" ErrorMessage="Age Between 20 to 26" MinimumValue="20" MaximumValue="26"
    ControlToValidate="txtAge" Type="Integer" ForeColor="Red"></asp:RangeValidator>
            
        </td>
    </tr>
    
  
     <tr>
        <td><b>Qualification</b></td>
        <td class="auto-style1">:
            <asp:DropDownList ID="ddlQualification" runat="server" >
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredQualification" runat="server" ErrorMessage="Qualification required*"  ForeColor="Red" ControlToValidate="ddlQualification"></asp:RequiredFieldValidator>
        </td>
    </tr>
   
    <tr>
        <td><b>City</b></td>
        <td class="auto-style1">:


            <asp:DropDownList ID="ddlCity"  runat="server" >
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredCity" runat="server" ErrorMessage="City required*"  ForeColor="Red" ControlToValidate="ddlCity"></asp:RequiredFieldValidator>
        </td>
    </tr>
      <tr>
        <td>
            <b>Address</b>
        </td>
        <td class="auto-style1">
            :<asp:TextBox ID="txtAddress" runat="server" >
            </asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredAddress" runat="server" ErrorMessage="Address required*"   ForeColor="Red" ControlToValidate="txtAddress"></asp:RequiredFieldValidator>
        </td>
    </tr>
     <tr>
        <td>
            <b>Pin Code</b>
        </td>
        <td class="auto-style1">
            :<asp:TextBox ID="txtPin" runat="server" >
            </asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredPincode" runat="server" ErrorMessage="Pincode required*"  ForeColor="Red" ControlToValidate="txtPin"></asp:RequiredFieldValidator>
        </td>
    </tr>
     <tr>
        <td>
            <b>Password</b>
        </td>
        <td class="auto-style1">
            :<asp:TextBox ID="txtPassword" TextMode="Password" runat="server" >
            </asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredPassword" runat="server" ErrorMessage="RequiredFieldValidator"  ForeColor="Red" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
        </td>
    </tr>
     <tr>
        <td class="auto-style13">
            <b>Confirm Password</b>
        </td>
        <td class="auto-style13">
            :<asp:TextBox ID="txtConfirm" TextMode="Password" runat="server" >
            </asp:TextBox>
            <asp:CompareValidator ID="RequiredField" runat="server" ErrorMessage="Password Mismatch"  ForeColor="Red" ControlToValidate="txtConfirm" ControlToCompare="txtPassword"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td colspan="2" class="auto-style14"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Submit" runat="server" Height="51px" OnClick="Submit_Click" Text="Submit" Width="184px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Error" runat="server" Text="Error occured" ></asp:Label>
        </td>
    </tr>
</table>
    </form>
</body>
</html>
