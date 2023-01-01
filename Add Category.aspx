<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage admin.master" AutoEventWireup="true" CodeFile="Add Category.aspx.cs" Inherits="Add_Category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="category">
        <table>
            <tr>
            <td>
           <asp:Label ID="Label1" runat="server" Text="Category" ></asp:Label>
                </td>
                <td>
           <asp:TextBox ID="Textbox1" runat="server" Width="400px" Height="25px"></asp:TextBox>
                    </td>
                </tr>
            <tr>
                <td>

                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Save" BackColor="White" BorderStyle="Solid" ForeColor="Black" Height="30px" Width="80px" OnClick="Button1_Click"  />
                &nbsp;
                    <asp:Button ID="Button2" runat="server" Text="Update" BackColor="White" BorderStyle="Solid" ForeColor="Black" Height="30px" Width="80px" OnClick="Button2_Click" Visible="false" />
                    &nbsp;
                    <asp:Button ID="Button3" runat="server" Text="Cancel" OnClick="Button3_Click" BackColor="White" BorderStyle="Solid" ForeColor="Black" Height="30px" Width="80px" />
                </td>
            </tr>
            </table>
    </div>
    <div class="Items2">
         <asp:Label runat="server" ID="Lastlabel"></asp:Label>
        <asp:Label runat="server" ID="Shortcut" Visible="false" ></asp:Label>
        <br />
        <asp:GridView runat="server" ID="Gridview1" HorizontalAlign="Center" AutoGenerateColumns="False" OnRowEditing="Gridview1_RowEditing"  OnRowDeleting="Gridview1_RowDeleting" DataKeyNames="Id" Width="469px" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" >
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="Category">
                    <ItemTemplate>
                        <asp:Label ID="Label2" Text='<%# Eval("Category") %>' runat="server"></asp:Label>
                    </ItemTemplate>
                    
                </asp:TemplateField>
                <asp:TemplateField >
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" Text="Edit" CommandName="Edit"  ></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField >
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton3" runat="server" Text="Delete" CommandName="Delete" OnClientClick="return confirm('Are you sure you want to delete this record?');"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
       

    </div>
</asp:Content>
