<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage admin.master" AutoEventWireup="true" CodeFile="Feedback_admin.aspx.cs" Inherits="Feedback_admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <div style="text-align:center">
    <asp:Label ID="Label1" runat="server" Text="FEEDBACK" Font-Bold="true" BackColor="Yellow" ForeColor="Black" Font-Size="Larger"></asp:Label>
    </div>
        <asp:GridView runat="server" ID="Gridview1" HorizontalAlign="Center" AutoGenerateColumns="False" DataKeyNames="Id" Width="469px" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" >
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="NAME">
                    <ItemTemplate>
                        <asp:Label ID="Label1" Text='<%# Eval("Name") %>' runat="server"></asp:Label>
                    </ItemTemplate>
                    
                </asp:TemplateField>
                <asp:TemplateField HeaderText="EMAIL ID">
                    <ItemTemplate>
                        <asp:Label ID="Label2" Text='<%# Eval("Email") %>' runat="server"></asp:Label>
                    </ItemTemplate>
                    
                </asp:TemplateField>
                <asp:TemplateField HeaderText="FEEDBACK">
                    <ItemTemplate>
                        <asp:Label ID="Label3" Text='<%# Eval("Message") %>' runat="server"></asp:Label>
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
</asp:Content>

