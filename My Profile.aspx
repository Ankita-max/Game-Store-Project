<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage admin.master" AutoEventWireup="true" CodeFile="My Profile.aspx.cs" Inherits="My_Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">
        .auto-style1 {
            width: 69px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
    <td>
    <asp:Image ID="Image1" ID-="Image" runat="server" ImageUrl="http://icons.iconarchive.com/icons/custom-icon-design/pretty-office-8/256/User-yellow-icon.png" />
    </td>
        </tr>
    </table>
    <br />
    <div>
    <table>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="ID:"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
            <td>

            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Name:"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:Label ID="Label4" runat="server"></asp:Label>
            </td>
            <td>

            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Email ID:"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:Label ID="Label6" runat="server"></asp:Label>
            </td>
            <td>

            </td>
        </tr>
        <tr id="ROW">
            <td>
                <asp:Label ID="Label7" runat="server" Text="Password:"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:Label ID="Label8" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Change Password" OnClick="Change_Password" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label9" runat="server" Text="New Password" Visible="false"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="Textbox1" runat="server" Visible="false" TextMode="Password"></asp:TextBox>
            </td>
            <td>

            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label10" runat="server" Text="Confirm Password" Visible="false"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="Textbox2" runat="server" Visible="false" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox1" ErrorMessage="Password does not match" ControlToValidate="TextBox2"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td>
                
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox2" ErrorMessage="This field cannot be blank" ></asp:RequiredFieldValidator>
            </td>
            <td>
               
            </td>
        </tr>
        <tr>
            <td>

            </td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="Confirm" OnClick="Confirm_Password" Visible="false" CausesValidation="true"/>
                <asp:Button ID="Button3" runat="server" Text="Cancel" OnClick="Cancel" Visible="false" CausesValidation="false"/>
            </td>
        </tr>

    </table>
        
        </div>
</asp:Content>
