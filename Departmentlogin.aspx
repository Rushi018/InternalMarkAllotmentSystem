<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Departmentlogin.aspx.cs" Inherits="InternalMarkAllotmentSystem.Departmentlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        /* Your existing styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Open Sans', sans-serif;
        }

        body {
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 0 10px;
            min-height: 100vh;
            background: #1BB295;
        }

        form {
            padding: 25px;
            background: #fff;
            max-width: 500px;
            width: 100%;
            border-radius: 7px;
            box-shadow: 0 10px 15px rgba(0, 0, 0, 0.05);
            background: linear-gradient(45deg, rgba(66, 183, 245, 0.8) 0%, rgba(66, 245, 189, 0.4) 100%);
            margin-top: 50px;
        }

        form h1 {
            font-size: 27px;
            text-align: center;
            margin: 0 0 30px;
            color: #dc3545; /* Red color for better visibility */
        }

        form .form-group {
            margin-bottom: 20px;
        }

        form label {
            display: block;
            font-size: 15px;
            margin-bottom: 7px;
            color: #495057; /* Dark color for better visibility */
        }

        form input,
        form select {
            height: 45px;
            padding: 10px;
            width: 100%;
            font-size: 15px;
            outline: none;
            background: #fff;
            border-radius: 3px;
            border: 1px solid #bfbfbf;
        }

        form input:focus,
        form select:focus {
            border-color: #9a9a9a;
        }

        form .btn {
            color: white;
            border: none;
            height: auto;
            font-size: 16px;
            padding: 13px 0;
            border-radius: 5px;
            cursor: pointer;
            font-weight: 500;
            text-align: center;
            transition: 0.2s ease;
        }

        form .btn-danger {
            background: #dc3545; /* Red color for danger button */
        }

        form .btn:hover {
            background: #bd2130; /* Darker red color on hover */
        }
    </style>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 class="text-center text-danger">Department Login</h1>

            <div class="form-group">
                <label for="txtFid">Enter Faculty ID:</label>
                <asp:TextBox ID="txtFid" runat="server" CssClass="form-control" placeholder="Enter Faculty ID"></asp:TextBox>
            </div>

            <div class="form-group">
                <label for="txtFpass">Enter Password:</label>
                <asp:TextBox ID="txtFpass" runat="server" CssClass="form-control" TextMode="Password" placeholder="Enter Password"></asp:TextBox>
            </div>

            <div class="form-group">
                <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-danger" OnClick="btnLogin_Click" />
            </div>
        </div>
    </form>
</body>
</html>
