<%@ Page Language="C#" MasterPageFile="~/StePage.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="SessionState.LoginPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="PlaceForContent" runat="server">

    <div style="font-family: Arial">
        <table align="center" class="auto-style13">
            <tr>
                <td colspan="2" class="auto-style9">
                    <h1 class="auto-style2"> &nbsp;&nbsp;&nbsp;&nbsp; Welcome to Login Page

                    </h1>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <b> FirstName</b>
                </td>
                <td class="auto-style11">:<asp:TextBox ID="txtName" runat="server" BorderColor="MediumTurquoise"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredUsername" runat="server" ErrorMessage="Username Required" ControlToValidate="txtName" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td class="auto-style8">
                    <b>Password</b>
                </td>
                <td class="auto-style12">:<asp:TextBox ID="txtPass" TextMode="Password" runat="server" BorderColor="MediumTurquoise"></asp:TextBox>

                    <asp:RequiredFieldValidator ID="RequiredPassword" runat="server" ErrorMessage="Password Required" ControlToValidate="txtPass" ForeColor="Red"></asp:RequiredFieldValidator>
                    <%--<asp:CompareValidator ID="ComparePassword" runat="server" ErrorMessage="CompareValidator"  ControlToValidate="txtPass" ControlToCompare="txtPass"></asp:CompareValidator>--%>
          
                </td>
            </tr>



            <tr>
                <td colspan="2" class="auto-style10">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnLogin" runat="server" OnClick="Button1_Click" Text="Login" Height="44px" Width="110px" BackColor="LightBlue"  />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lbltext" runat="server" Text="Incorrect UserName and Password" ForeColor="Black"></asp:Label>
                </td>
            </tr>



<%--            <tr>
                <td colspan="2" class="auto-style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="hypSignup" runat="server" NavigateUrl="~/UserDetails_Page.aspx" BackColor="MediumSeaGreen">SignUp</asp:HyperLink>
                </td>
            </tr>--%>

        </table>
    </div>
    <p>
        &nbsp;
    </p>

</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
    .auto-style1 {
        width: 605px;
        height: 519px;
    }
    .auto-style2 {
        width: 603px;
        height: 76px;
        margin-bottom: 19px;
    }
    .auto-style4 {
        width: 467px;
        height: 88px;
    }
    .auto-style7 {
        width: 467px;
        height: 81px;
    }
    .auto-style8 {
        width: 467px;
        height: 101px;
    }
    .auto-style9 {
        width: 467px;
        height: 95px;
    }
    .auto-style10 {
        width: 467px;
        }
        .auto-style11 {
            width: 711px;
            height: 88px;
        }
        .auto-style12 {
            width: 711px;
            height: 101px;
        }
    .auto-style13 {
        width: 692px;
        height: 492px;
        margin-right: 0px;
        margin-top: 0px;
    }
    </style>
</asp:Content>

