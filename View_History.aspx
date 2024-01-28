<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="View_History.aspx.cs" Inherits="InternalMarkAllotmentSystem.View_History" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .outer-border {
            width: 800px;
            height: 650px;
            padding: 20px;
            text-align: center;
            border: 10px solid #673AB7;
            margin-left: 21%;
        }

        .inner-dotted-border {
            width: 750px;
            height: 600px;
            padding: 20px;
            text-align: center;
            border: 5px solid #673AB7;
            border-style: dotted;
        }

        .certification {
            font-size: 50px;
            font-weight: bold;
            color: #663ab7;
        }

        .certify {
            font-size: 25px;
        }

        .name {
            font-size: 30px;
            color: green;
        }

        .fs-30 {
            font-size: 30px;
        }

        .fs-20 {
            font-size: 20px;
        }
    </style>

    <div class="outer-border">
        <div class="inner-dotted-border">
            <span class="certification">Certificate of Completion</span>
            <br><br>
            <span class="certify"><i>This is to certify that</i></span>
            <br><br>
            <span class="name"><b><asp:Label ID="lblName1" runat="server" Text="Label"></asp:Label></b></span><br /><br />
            <span class="certify"><i>with ID: </i></span>
            <span class="fs-30"><asp:Label ID="lblId" runat="server" Text="Label"></asp:Label></span><br /><br />
            <span class="certify"><i>of department </i></span>
            <span class="fs-30"><asp:Label ID="lblDept1" runat="server" Text="Label"></asp:Label></span><br /><br />
            <span class="certify"><i>has successfully completed the activity</i></span> <br /><br />
            <span class="fs-20">with Mark alloted <b><asp:Label ID="lblMarkalloted" runat="server" Text="Label"></asp:Label></b></span> <br /><br /><br /><br />
        </div>
    </div>
</asp:Content>
