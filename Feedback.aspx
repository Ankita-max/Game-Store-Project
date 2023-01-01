<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="width:320px; padding:30px; border:5px Groove white; margin:0 auto; vertical-align:central" > 
    <table style="margin:0 auto">
        <tr>
            <td>
                <asp:Label ID="First" runat="server" Text="FEEDBACK" ForeColor="Yellow" Font-Bold="true" Font-Size="Medium" ></asp:Label>
            </td>
            <td>

            </td>
        </tr>
        <tr>
            <td>

            </td>
            <td>

            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Name" BackColor="Black" ForeColor="White"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="Textbox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                 <asp:Label ID="Label2" runat="server" Text="Email" BackColor="Black" ForeColor="White"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="Textbox2" runat="server" OnTextChanged="Textbox2_TextChanged"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Message" ForeColor="White" BackColor="Black"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="Textbox3" runat="server" OnTextChanged="Textbox2_TextChanged"></asp:TextBox>
                
            </td>
            
        </tr>
         <tr>
              <td>

              </td>
              <td>
                  &emsp;
                  <asp:Button ID="Button2" runat="server" Text="SUBMIT" OnClick="Button2_click" Font-Bold="True" BackColor="Yellow" ForeColor="Black"
                       style="margin-top: 5px" />
              </td>
             
          </tr>
        <tr>
            <td>

            </td>
            <td>
                 <asp:Label ID="LastLabel" runat="server" ForeColor="White"></asp:Label>
            </td>
        </tr>
    </table>
        </div>
</asp:Content>
