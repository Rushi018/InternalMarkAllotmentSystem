<%@ Page Title="" Language="C#" MasterPageFile="~/Department.Master" AutoEventWireup="true" CodeBehind="depmarkreport.aspx.cs" Inherits="InternalMarkAllotmentSystem.depmarkreport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /* Your custom CSS */
       p{
           text-align:center;
       }

        .container {
            text-align: center;
            
        }

        .grid-container {
            text-align: center;
        }


        #lblCount {
            font-size: 18px;
            font-weight: bold;
            color: #333;
            margin-bottom: 10px;
        }

        #MarkReport {
            width: 100%;
            margin-top: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align:center;
           
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Number Of Student&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblCount" runat="server" Text="Label"></asp:Label>
    </p>
    <div class="grid-container">
    <p>
        <asp:GridView ID="MarkReport" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" style="margin-left: 300px; width: 800px;">
            <Columns>
                <asp:BoundField HeaderText="ID" DataField="ID" />
                <asp:BoundField HeaderText="NAME" DataField="Name" />
                <asp:BoundField HeaderText="DEPT" DataField="Dept" />
                <asp:BoundField HeaderText="ACTIVITY NAME" DataField="ActivityName" />
                <asp:BoundField HeaderText="ORGANIZATION NAME" DataField="OrganizationName" />
                <asp:BoundField HeaderText="MARK" DataField="Mark" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
    </p>
    </div>
</asp:Content>
