<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage admin.master" AutoEventWireup="true" CodeFile="Add Items.aspx.cs" Inherits="Add_Items" %>

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
    <div class="item">
        
        <asp:Label ID="Label1" runat="server" Text="Add Items"></asp:Label>
        <br />
        <table class="table">
            <tr>
                <td>
        <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
                    </td>
                <td>
        <asp:TextBox ID="Textbox1" runat="server" Width="400px" Height="25px"></asp:TextBox>
                    </td>
       </tr>
            <tr>
                <td>
        <asp:Label ID="Label3" runat="server" Text="Short Description" ></asp:Label>
                    </td>
                    <td>
        <asp:TextBox ID="Textbox2" runat="server" Width="400px" Height="25px"></asp:TextBox>
                        </td>
        </tr>
            <tr>
                <td>
        <asp:Label ID="Label4" runat="server" Text="Long Description" ></asp:Label>
                    </td>
                    <td>
        <asp:TextBox ID="Textbox3" runat="server" Width="400px" Height="25px" TextMode="MultiLine"></asp:TextBox>
                        </td>
                </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label8" runat="server" Text="Category" ></asp:Label>
                </td>
                <td class="auto-style2">
                   <asp:DropDownList ID="Dropdownlist3" AppendDataBoundItems="true" DataTextField="Category" DataValueField="Id" runat="server" Height="35px" Width="500px" >
                    <asp:ListItem Value="">Select</asp:ListItem>
                </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label9" runat="server" Text="Quantity" ></asp:Label>
                </td>
                <td style="text-align:left">
                    <asp:DropDownList ID="Dropdownlist1" runat="server" Height="25px"  >
                    <asp:ListItem  Text="Select Quantity"></asp:ListItem>
                    <asp:ListItem Text ="10"></asp:ListItem>
                    <asp:ListItem Text="20"></asp:ListItem>
                    <asp:ListItem Text="30"></asp:ListItem>
                    <asp:ListItem Text="40"></asp:ListItem>
                    <asp:ListItem Text="50" ></asp:ListItem>
                </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label10" runat="server" Text="Price" ></asp:Label>
                </td>
                <td style="text-align:left">
                <asp:DropDownList ID="Dropdownlist2" runat="server" Height="25px" >
                    <asp:ListItem Text="Select Range"></asp:ListItem>
                    <asp:ListItem Text="1000"></asp:ListItem>
                    <asp:ListItem Text="2000"> </asp:ListItem>
                    <asp:ListItem Text="3000"></asp:ListItem>
                    <asp:ListItem Text="4000"></asp:ListItem>
                    <asp:ListItem Text="5000"></asp:ListItem>
                    </asp:DropDownList>
                    </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label14" runat="server" Text="Image" ></asp:Label>
                </td>
                <td style="text-align:left">
                     <asp:FileUpload ID="Fileupload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">

                </td>
                <td class="auto-style1">
                    <asp:Button ID="Button1" runat="server" Text="Save" BackColor="White" BorderStyle="Solid" ForeColor="Black" Height="30px" Width="80px" OnClick="Button1_Click" />
                    &nbsp;
                    <asp:Button ID="Button2" runat="server" Text="Update" BackColor="White" BorderStyle="Solid" ForeColor="Black" Height="30px" Width="80px" OnClick="Button2_Click" Visible="false" CausesValidation="false"/>
                &nbsp;
                    <asp:Button ID="Button3" runat="server" Text="Cancel" OnClick="Button3_Click" BackColor="White" BorderStyle="Solid" ForeColor="Black" Height="30px" Width="80px" CausesValidation="false" />
                    <<asp:Button ID="Button4" runat="server" Text="TRY" OnClick="Button4_Click" BackColor="White" BorderStyle="Solid" ForeColor="Black" Height="30px" Width="80px" CausesValidation="false" Visible="false"/>
                </td>
            </tr>
        </table>
        </div>
   
    <div class="Items2">
        <asp:Label runat="server" ID="Lastlabel"></asp:Label>
        <asp:Label runat="server" ID="Shortcut" Visible="false" ></asp:Label>
        <br />
        <br />
        <br />
        <asp:GridView runat="server" ID="Gridview1" HorizontalAlign="Center" AutoGenerateColumns="False" OnRowEditing="Gridview1_RowEditing"  OnRowDeleting="Gridview1_RowDeleting" DataKeyNames="Id" OnSelectedIndexChanged="Gridview1_SelectedIndexChanged" Width="469px" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" >
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="Name">
                    <ItemTemplate>
                        <asp:Label ID="Label5" Text='<%# Eval("Name") %>' runat="server"></asp:Label>
                    </ItemTemplate>
                    
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Short Description">
                    <ItemTemplate>
                        <asp:Label ID="Label6" Text='<%# Eval("Short_description") %>' runat="server"></asp:Label>
                    </ItemTemplate>
                    
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Long description">
                    <ItemTemplate>
                        <asp:Label ID="Label7" Text='<%# Eval("Long_description") %>' runat="server"></asp:Label>
                    </ItemTemplate>
                    
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Category">
                    <ItemTemplate>
                        <asp:Label ID="Label11" Text='<%# Eval("Category") %>' runat="server"></asp:Label>
                    </ItemTemplate>
                    
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Quantity">
                    <ItemTemplate>
                        <asp:Label ID="Label12" Text='<%# Eval("Quantity") %>' runat="server"></asp:Label>
                    </ItemTemplate>
                    
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Price">
                    <ItemTemplate>
                        <asp:Label ID="Label13" Text='<%# Eval("Price") %>' runat="server"></asp:Label>
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

