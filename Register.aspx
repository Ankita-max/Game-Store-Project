<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body style="height:100%; margin:0; background-image:url(https://images.unsplash.com/photo-1607513746994-51f730a44832?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80)" >
    <form id="form1" runat="server">
    <div style="position:absolute; top:40px; left:40px; right:40px; bottom:40px">
     <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/0.jpg" Height="450px" Width="1450px"/>
        <div style=" margin:0 auto; background-image:url(https://images.unsplash.com/photo-1612093978633-baacc28ea3c3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1176&q=80)" >
   </br>
            </br>
            &nbsp;
             <table style="margin:0 auto">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" ToolTip="Enter first name"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="This field cannot be blank"></asp:RequiredFieldValidator>
            </td>
            <td>

            </td>
           
            <td>

            </td>
                <td>
                <asp:Label ID="Label6" runat="server" Text="Address1"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server" ToolTip="Enter address"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="This field cannot be blank"></asp:RequiredFieldValidator>
            </td>
            </tr>
         <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" ToolTip="Enter last name"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="This field cannot be blank"></asp:RequiredFieldValidator>
            </td>
            <td>

            </td>
             <td>

             </td>
            
                <td>
                <asp:Label ID="Label7" runat="server" Text="City"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server" ToolTip="Enter city"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox7" ErrorMessage="This field cannot be blank"></asp:RequiredFieldValidator>
            </td>
            </tr>
         <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="User ID"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" ToolTip="Enter email id"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="This field cannot be blank"></asp:RequiredFieldValidator>
            </td>
             <td>

             </td>
             <td>

             </td>
            
                <td>
                <asp:Label ID="Label8" runat="server" Text="Postal Code"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox8" runat="server" ToolTip="Enter postal code"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox8" ErrorMessage="This field cannot be blank"></asp:RequiredFieldValidator>
            </td>
            </tr>
         <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" TextMode="Password" ToolTip="Enter password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="This field cannot be blank"></asp:RequiredFieldValidator>
            </td>
             <td>

             </td>
             <td>

             </td>
            
                <td>
                <asp:Label ID="Label9" runat="server" Text="State"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox9" runat="server" ToolTip="Enter state"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox9" ErrorMessage="This field cannot be blank"></asp:RequiredFieldValidator>
            </td>
            </tr>
         <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Confirm Password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" TextMode="Password" ToolTip="Reenter password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="This field cannot be blank"></asp:RequiredFieldValidator>
            </td>
             <td>

             </td>
             <td>

             </td>
          
                <td>
                <asp:Label ID="Label10" runat="server" Text="Country"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox10" runat="server" ToolTip="Enter country"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox10" ErrorMessage="This field cannot be blank"></asp:RequiredFieldValidator>
            </td>
            </tr>
        <tr>
            <td>

            </td>
            <td>

            </td>
            
            <td>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox4" ErrorMessage="Password does not match" ControlToValidate="TextBox5"></asp:CompareValidator>
            </td>
        </tr>
      <tr>
              <td>

              </td>
              <td>

              </td>
              <td style="text-align:center">
<asp:Button ID="Button1" runat="server" Text="REGISTER" OnClick="Button1_click" Font-Bold="True" BackColor="LightYellow" ForeColor="Black" />
              </td>
          </tr>
        <tr>
              <td>

              </td>
              <td>

              </td>
            
              <td>
                  <br />
                  <asp:Label ID="LastLabel" runat="server"></asp:Label>
                  <br />
                  <asp:Label ID="FinalLabel1" runat="server"></asp:Label>
              </td>
          </tr>
        </table>
            </div>
    </div>
    </form>
</body>
</html>
