<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Check out page.aspx.cs" Inherits="Check_out_page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="Items2">
        <asp:Label runat="server" ID="First" ForeColor="White"></asp:Label>
        <br />
        <br />
        <br />
        <asp:GridView runat="server" ID="Gridview1" HorizontalAlign="Center" AutoGenerateColumns="False" DataKeyNames="Id" Width="469px" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" ShowFooter="true" >
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
        <asp:Button ID="Button2" runat="server" OnClick="EDIT_CART" Text="EDIT CART" />
            </div>
    </div>
    <div>
        <br />
        <br />
        <br />
        <br />
        <asp:Label ID="LABELL" runat="server" Text="SHIPPING DETAILS" ForeColor="White" Font-Underline="true"></asp:Label>
        <br />
        <br />
        <table>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="FIRST NAME:" ForeColor="White"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:Label ID="Label5" runat="server" ForeColor="White"></asp:Label>
            </td>
            <td>

            </td>
        </tr>
            <tr>
            <td>
                <asp:Label ID="Label18" runat="server" Text="LAST NAME:" ForeColor="White"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:Label ID="Label19" runat="server" ForeColor="White"></asp:Label>
            </td>
            <td>

            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="EMAIL:" ForeColor="White"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:Label ID="Label7" runat="server" ForeColor="White"></asp:Label>
            </td>
            <td>

            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label8" runat="server" Text="ADDRESS:" ForeColor="White"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:Label ID="Label9" runat="server" ForeColor="White" ></asp:Label>
            </td>
            <td>

            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label10" runat="server" Text="CITY:" ForeColor="White"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:Label ID="Label11" runat="server" ForeColor="White" ></asp:Label>
            </td>
            <td>

            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label12" runat="server" Text="PIN:" ForeColor="White"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:Label ID="Label13" runat="server" ForeColor="White"></asp:Label>
            </td>
            <td>

            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label14" runat="server" Text="STATE:" ForeColor="White"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:Label ID="Label15" runat="server" ForeColor="White"></asp:Label>
            </td>
            <td>

            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label16" runat="server" Text="COUNTRY" ForeColor="White"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:Label ID="Label17" runat="server" ForeColor="White"></asp:Label>
            </td>
            <td>

            </td>
        </tr>
    </table>
    </div>
    <div>
        <br />
        <br />
        <br />
        <br />
        <asp:Label ID="LabelL1" runat="server" ForeColor="White" Text="CHOOSE MODE OF PAYMENT" Font-Underline="true"></asp:Label>
        <br />
        <br />
        <asp:RadioButton ID="Radiobutton1" runat="server" Text="CASH ON DELIVERY" GroupName="Payment" ForeColor="White"/>
        <br />
        <asp:RadioButton ID="Radiobutton2" runat="server" Text="CREDIT CARD" GroupName="Payment" ForeColor="White"/>
        <br />
        <asp:RadioButton ID="Radiobutton3" runat="server" Text="DEBIT CARD" GroupName="Payment" ForeColor="White"/>
    </div>
     <div style="text-align:center">
            <br />
            <br />
        <asp:Button ID="Button3" runat="server" OnClick="CHECK_OUT" Text="CHECK OUT"/>
            </div>
</asp:Content>
