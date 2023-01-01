<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
     <style type="text/css">
        .auto-style2 {
            width: 205px;
        }
        .auto-style3 {
            height: 34px;
        }
    </style>
</head>
<body style="background-image:url(https://www.passionateinmarketing.com/wp-content/uploads/2021/06/10-BEST-ONLINE-MULTIPLAYER-GAMES-FOR-PC-2019.jpg)">
    <form id="form1" runat="server">
    <div style="width:500px; height:150px; background-color:white; position:absolute; top:300px; left:500px; background-image:url(https://i.pinimg.com/originals/ec/08/a3/ec08a3ac42f8430a4e4874e73f69ea7e.jpg)" >
    <table class="Table1">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="User ID" Font-Bold="True"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" ToolTip="Enter User ID" Width="250px" OnTextChanged="TextBox1_TextChanged" Font-Size="Medium"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldVlidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="This field cannot be blank"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Password" Font-Bold="True"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" ToolTip="Enter Password" TextMode="Password" Width="250px" OnTextChanged="TextBox2_TextChanged" Font-Size="Medium"></asp:TextBox>
                    </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="This field cannot be blank"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>

                </td>
                <td style="text-align:center">
                     <asp:Button ID="Button2" runat="server" Text="Login" OnClick="Button2_Click" Font-Bold="true" ForeColor="White" BackColor="Black" Width="100px" Height="30px"/>
                </td>
            </tr>
            <tr>
                <td>

                </td>
                <td>
                    <asp:Label ID="Label3" runat="server" ForeColor="#990000" Font-Bold="True"></asp:Label>
                </td>
            </tr>
        </table>
        &emsp;
        &emsp;
        &emsp;
        &emsp;
        &emsp;
        &emsp;
            
    <br />
     
    </div>
    </form>
</body>
</html>
