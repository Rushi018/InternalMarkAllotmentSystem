<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="InternalMarkAllotmentSystem._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Internal Mark Allotment System</title>
    <!-- Add the latest Bootstrap CSS link -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
    <style>
        body {
    background: url('/Images/b332f73fc8261caf033fdd35b5dd99d2.jpg') center center fixed;
    background-size: cover;
}

        .container {
            margin-top: 50px;
        }

        h1 {
            text-align: center;
            color: royalblue;
        }

        #form1 {
            background: rgba(255, 255, 255, 0.8);
            padding: 20px;
            border-radius: 10px;
        }

        .button-container {
            text-align: center;
            margin-top: 20px;
        }

        #btnStudent,
        #btnDept {
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="container">
        <div>
            <h1>Internal Mark Allotment System</h1>
        </div><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<div class="row">
            <div class="col-md-6" style="left:230px">
                <asp:Image ID="Image1" runat="server" Height="233px" Width="320px" ImageUrl="~/Images/images.jpg" />
            </div>
            <div class="col-md-6">
                <asp:Image ID="Image2" runat="server" Height="233px" Width="320px" ImageUrl="~/Images/icon-ico-files-admin-system-admi.jpg" />
            </div>
        </div>&nbsp;&nbsp;
        <div class="button-container">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnStudent" runat="server" Text="Student Login" Width="314px" CssClass="btn btn-primary" OnClick="btnStudent_Click" />&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnDept" runat="server" Text="Department Login" Width="314px" CssClass="btn btn-success" OnClick="btnDept_Click" />
        </div>
    </form>

    <!-- Add the latest Bootstrap JS and Popper.js scripts -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
