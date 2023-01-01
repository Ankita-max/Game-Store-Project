<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Description.aspx.cs" Inherits="Description" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">
        .auto-style1 {
            width: 69px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <asp:Label ID="Label1" runat="server" ForeColor="White"></asp:Label>
    </br>
                 <asp:Label ID="First" runat="server" ForeColor="White"></asp:Label>
    <div style="width:600px">
    <div style="float:left">
          <table>
        <tr>
                <td>
                    <asp:Image ID="Image1" runat="server" Height="279px" Width="279px" />
                </td>
            </tr>
    </table>
     </div>   
    <br />
    <div style="float:right" >
    <table>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Name:" ForeColor="Yellow"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:Label ID="Label3" runat="server" ForeColor="White"></asp:Label>
            </td>
            <td>

            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Short Description:" ForeColor="Yellow"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:Label ID="Label5" runat="server" ForeColor="White"></asp:Label>
            </td>
            <td>

            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="Long Description:" ForeColor="Yellow"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:Label ID="Label7" runat="server" ForeColor="White"></asp:Label>
            </td>
            <td>

            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label8" runat="server" Text="Category:" ForeColor="Yellow"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:Label ID="Label9" runat="server" ForeColor="White" ></asp:Label>
            </td>
            <td>

            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label10" runat="server" Text="Stock:" ForeColor="Yellow"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:Label ID="Label11" runat="server" ForeColor="White"></asp:Label>
            </td>
            <td>

            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label12" runat="server" Text="Price (in Rs):" ForeColor="Yellow"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:Label ID="Label13" runat="server" ForeColor="White"></asp:Label>
            </td>
            <td>

            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label14" runat="server" Text="Quantity?" ForeColor="Yellow"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="Textbox1" runat="server"></asp:TextBox>
            </td>
            <td>

            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td></td>
            <td></td>
        </tr>
         <tr>
            <td>
                
            </td>
            <td class="auto-style1">
               <asp:Button ID="Button1" runat="server" Text="ADD TO CART" OnClientClick="Button1_Click" OnClick="Button1_Click" BackColor="Black" ForeColor="Yellow" />
            </td>
            <td>
                
            </td>
        </tr>
        <tr>
            <td>
                
            </td>
            <td class="auto-style1">
               <asp:Label ID="Lastlabel" runat="server" ForeColor="White"></asp:Label>
            </td>
            <td>

            </td>
        </tr>
    </table>
        </div>
       </div>
</asp:Content>
