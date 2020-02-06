<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserDetails_Page.aspx.cs" Inherits="SessionState.UserDetails_Page" MasterPageFile="~/StePage.Master" %>

<asp:Content ID="Content2" ContentPlaceHolderID="PlaceForContent" runat="server">

    <div>
        <div style="font-family: Arial">
            <table class="auto-style2" align="center">
                <tr>
                    <td colspan="2" class="auto-style5">
                        <h1 style="text-align: center;">SignUp Page</h1>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style22">
                        <b>First Name</b>
                    </td>
                    <td class="auto-style22">:<asp:TextBox ID="txtFirstName" runat="server">
                    </asp:TextBox>
                        &nbsp;
            <asp:RequiredFieldValidator ID="RequiredName" runat="server" ErrorMessage="First Name required*" ForeColor="Red" ControlToValidate="txtFirstName"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <br />
                <tr>
                    <td class="auto-style21">
                        <b>Last Name</b>
                    </td>
                    <td class="auto-style21">:<asp:TextBox ID="txtLastName" runat="server">
                    </asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredLastName" runat="server" ErrorMessage="Last Name required*" ForeColor="Red" ControlToValidate="txtLastName"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style20">
                        <b>Email</b>
                    </td>
                    <td class="auto-style20">:<asp:TextBox ID="txtEmail" runat="server">
                    </asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredEmail" runat="server" ErrorMessage="Email required*" ForeColor="Red" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style19">
                        <b>Age</b>
                    </td>
                    <td class="auto-style19">:<asp:TextBox ID="txtAge" runat="server">
                    </asp:TextBox>

                        <asp:RangeValidator ID="AgeValidation" runat="server" ErrorMessage="Age Between 20 to 26" MinimumValue="20" MaximumValue="26"
                            ControlToValidate="txtAge" Type="Integer" ForeColor="Red"></asp:RangeValidator>

                    </td>
                </tr>


                <tr>
                    <td class="auto-style15"><b>Qualification</b></td>
                    <td class="auto-style15">:
            <asp:DropDownList ID="ddlQualification" runat="server">
            </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredQualification" runat="server" ErrorMessage="Qualification required*" ForeColor="Red" ControlToValidate="ddlQualification"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr>
                    <td class="auto-style17"><b>City</b></td>
                    <td class="auto-style17">:


            <asp:DropDownList ID="ddlCity" runat="server">
            </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredCity" runat="server" ErrorMessage="City required*" ForeColor="Red" ControlToValidate="ddlCity"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style18">
                        <b>Address</b>
                    </td>
                    <td class="auto-style18">:<asp:TextBox ID="txtAddress" runat="server">
                    </asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredAddress" runat="server" ErrorMessage="Address required*" ForeColor="Red" ControlToValidate="txtAddress"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15">
                        <b>Pin Code</b>
                    </td>
                    <td class="auto-style15">:<asp:TextBox ID="txtPin" runat="server">
                    </asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredPincode" runat="server" ErrorMessage="Pincode required*" ForeColor="Red" ControlToValidate="txtPin"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16">
                        <b>Password</b>
                    </td>
                    <td class="auto-style16">:<asp:TextBox ID="txtPassword" TextMode="Password" runat="server">
                    </asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredPassword" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">
                        <b>Confirm Password</b>
                    </td>
                    <td class="auto-style11">:<asp:TextBox ID="txtConfirm" TextMode="Password" runat="server">
                    </asp:TextBox>
                        <asp:CompareValidator ID="RequiredField" runat="server" ErrorMessage="Password Mismatch" ForeColor="Red" ControlToValidate="txtConfirm" ControlToCompare="txtPassword"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Submit" runat="server" Height="51px" OnClick="Submit_Click" Text="Submit" Width="184px" BackColor="LimeGreen" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Error" runat="server" Text="Error occured"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Success_Label" runat="server" Text="Successfully created" Visible="false"></asp:Label>
                    </td>
                </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
    .auto-style2 {
        height: 1416px;
        width: 810px;
    }
    .auto-style3 {
        height: 164px;
    }
    .auto-style5 {
        height: 79px;
    }
    .auto-style11 {
        height: 85px;
    }
    .auto-style15 {
        height: 75px;
    }
    .auto-style16 {
        height: 73px;
    }
    .auto-style17 {
        height: 69px;
    }
    .auto-style18 {
        height: 71px;
    }
    .auto-style19 {
        height: 72px;
    }
    .auto-style20 {
        height: 74px;
    }
    .auto-style21 {
        height: 67px;
    }
    .auto-style22 {
        height: 64px;
    }
</style>
</asp:Content>

