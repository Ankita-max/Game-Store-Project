<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Signin.aspx.cs" Inherits="Signin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        container {
            position:relative;
        }
        .Firstlabel{
            font-size:75px;
            position:absolute;
            top:30%;
            color:royalblue;
            font-family:Ebrima;
            left:100px;
            height: 51px;
            
        }
        .Table1 {
            position:absolute;
            top:45%;
            font-size:20px;
            color:cornflowerblue;
            font-family:Ebrima;
            
            left:100px;
        }
        .Secondlabel {
            font-size:25px;
            position:absolute;
            top:40%;
            color:royalblue;
            font-family:Ebrima;
            left:100px;
            height: 38px;
        }
    </style>
</head>
<body style="background-image:url(https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/dce3647b-6179-463c-b4c8-bd642f5bb216/da4f4ln-dc0b0a30-923c-4e38-86bb-b6498de9c9cb.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOiIsImlzcyI6InVybjphcHA6Iiwib2JqIjpbW3sicGF0aCI6IlwvZlwvZGNlMzY0N2ItNjE3OS00NjNjLWI0YzgtYmQ2NDJmNWJiMjE2XC9kYTRmNGxuLWRjMGIwYTMwLTkyM2MtNGUzOC04NmJiLWI2NDk4ZGU5YzljYi5wbmcifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6ZmlsZS5kb3dubG9hZCJdfQ.2dMHfvRImAlKmZZd4MEaCGd2kvwslix4PbFO2c9L4Ek)">
        <form id="form1" runat="server">
    <div class="container">
    <asp:Image ID="Image1" runat="server" ImageUrl="https://wallpaperaccess.com/full/2582172.jpg" Width="1200px" Height="900px" ImageAlign="Right" style="margin-left: 36px" />
        
    <asp:Label ID="Firstlabel" runat="server" Text="SIGN IN" Font-Bold="True" CssClass="Firstlabel" Font-Size="XX-Large" ForeColor="White"></asp:Label>
        
        <asp:Label ID="Seccondlabel" CssClass="Secondlabel" runat="server" Text="Don't have an account? <a href='Register.aspx'>Sign Up</a> !!" ForeColor="Yellow"></asp:Label>
        <br />
        <table class="Table1">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="User ID" ForeColor="White"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" ToolTip="Enter User ID" Width="300px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldVlidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="This field cannot be blank" ForeColor="Black"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Password" ForeColor="White"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" ToolTip="Enter Password" TextMode="Password" Width="300px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="This field cannot be blank" ForeColor="Black"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>

                </td>
                <td>
                     <asp:Button ID="Button1" runat="server" Text="Login" OnClick="SignIn" Font-Bold="true" ForeColor="Yellow" BackColor="Black" Width="100px" Height="30px"/>
                </td>
            </tr>
            <tr>
                <td>

                </td>
                <td>
                    <asp:Label ID="LastLabel" runat="server" ForeColor="Yellow" Font-Bold="True"></asp:Label>
                </td>
            </tr>
        </table>
       
    </div>
    </form>
</body>
</html>
