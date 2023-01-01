<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Cart page.aspx.cs" Inherits="Cart_page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 38px;
        }
    .auto-style2 {
        height: 35px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <div class="Items2">
        <asp:Label runat="server" ID="First" ForeColor="White"></asp:Label>
        <asp:Label runat="server" ID="Lastlabel"></asp:Label>
        <asp:Label runat="server" ID="Shortcut" Visible="false" ></asp:Label>
        <asp:Label runat="server" ID="Label4" ForeColor="White"></asp:Label>
        <br />
        <br />
        <br />
        <asp:GridView runat="server" ID="Gridview1" HorizontalAlign="Center" AutoGenerateColumns="False" OnRowEditing="Gridview1_RowEditing"  OnRowDeleting="Gridview1_RowDeleting" OnRowCancelingEdit="Gridview1_RowCancelingEdit" OnRowUpdating="Gridview1_RowUpdating" DataKeyNames="Id" Width="469px" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" OnSelectedIndexChanged="Gridview1_SelectedIndexChanged" >
            <Columns>
                <asp:TemplateField HeaderText="Product Name">
                    <ItemTemplate>
                        <asp:Label ID="Label1" Text='<%# Eval("Product_name") %>' runat="server"></asp:Label>
                    </ItemTemplate>
                    
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Quantity">
                    <ItemTemplate>
                        <asp:Label ID="Label2" Text='<%# Eval("Quantity") %>' runat="server"></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="Textbox1" Text='<%# Eval("Quantity") %>' runat="server"></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Price Per Unit">
                    <ItemTemplate>
                        <asp:Label ID="Label3" Text='<%# Eval("Price") %>' runat="server"></asp:Label>
                    </ItemTemplate>
                    
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Image">
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Image") %>' Height="80px" Width="100px" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField >
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" Text="Edit" CommandName="Edit" ></asp:LinkButton>
                        <asp:LinkButton ID="LinkButton2" runat="server" Text="Delete" CommandName="Delete" OnClientClick="return confirm('Are you sure you want to delete this record?');"></asp:LinkButton>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:LinkButton ID="LinkButton3" runat="server" Text="Update" CommandName="Update" ></asp:LinkButton>
                        <asp:LinkButton ID="LinkButton4" runat="server" Text="Cancel" CommandName="Cancel" ></asp:LinkButton>
                    </EditItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
        <div style="text-align:center">
            <br />
            <br />
        <asp:Button ID="Button1" runat="server" OnClick="CONTINUE_SHOPPING" Text="CONTINUE SHOPPING"/>
        <asp:Button ID="Button2" runat="server" OnClick="CHECKOUT" Text="CHECKOUT" />
            </div>
    </div>
</asp:Content>
