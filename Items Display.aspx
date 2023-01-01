<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Items Display.aspx.cs" Inherits="Items_Display" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Testlabel" runat="server" ForeColor="White"></asp:Label>
    <asp:Label ID="First" runat="server" ForeColor="White"></asp:Label>
    <asp:DataList ID="Datalist1" runat="server" DataKeyField="Id" RepeatColumns="4" OnSelectedIndexChanged="Datalist1_SelectedIndexChanged" OnItemCommand="More" >
        <ItemStyle BorderStyle="Groove" BorderWidth="1px" BorderColor="White" />
        <ItemTemplate>
            <table>
            <tr>
                <td style="text-align:center">
            <%---Product Name-----%>
                    <asp:Label ID="Label1" runat="server" Text='<%#Eval("Name") %>' Font-Bold="true" ForeColor="Yellow"></asp:Label>
                </td>
            </tr>
            <%----Product image---%>
            <tr>
                <td>
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("Image") %>' Height="279px" Width="279px" />
                </td>
            </tr>
            <%----Product price----%>
            <tr>
                <td>
                    <asp:Label ID="Price" runat="server" Text="Price (in Rs):" ForeColor="Yellow"></asp:Label>
                    <asp:Label ID="Label2" runat="server" Text='<%#Eval("Price") %>' ForeColor="White"></asp:Label>
               &emsp; &emsp; &emsp; &emsp;  &emsp; &emsp; &nbsp;
                    <asp:Label ID="Label3" runat="server" Text='<%#Eval("Id") %>' Visible="false"></asp:Label>
                    <asp:LinkButton ID="Linkbutton1" runat="server" CommandName="More" ForeColor="White">More</asp:LinkButton>
                </td>
           </tr>
                </table>
        </ItemTemplate>
        <SeparatorTemplate>
            <table style="width:20px">
                <tr>
                    <td>
                        &nbsp;
                    </td>
                </tr>
            </table>
        </SeparatorTemplate>
        </asp:DataList>>
    <%---Displaying products ends here---%>

</asp:Content>
