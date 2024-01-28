<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sturegs.aspx.cs" Inherits="InternalMarkAllotmentSystem.Sturegs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        /* Your existing styles */
        .form-group label {
            font-weight: 500;
            text-transform: uppercase;
            letter-spacing: .2em;
        }

        .form-control {
            border-radius: 0;
            font-weight: 500;
            width: 100%; /* Adjust this value as needed */
            margin: 0 auto; /* Centers the textbox */
        }

        .btn-primary {
            background-color: #4285F4;
            border-color: #4285F4;
            text-transform: uppercase;
        }

        .btn-success {
            background-color: #28a745;
            border-color: #28a745;
            text-transform: uppercase;
        }

        

        /* New CSS */
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
            
            left: 200px;
            
        }

        form h2 {
            font-size: 27px;
            text-align: center;
            margin: 0px 0 30px;
        }

        form .form-group {
            margin-bottom: 15px;
            position: relative;
        }

        form label {
            display: block;
            font-size: 15px;
            margin-bottom: 7px;
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

        form input.error,
        form select.error {
            border-color: #f91919;
            background: #f9f0f1;
        }

        form small {
            font-size: 14px;
            margin-top: 5px;
            display: block;
            color: #f91919;
        }

        form .password i {
            position: absolute;
            right: 0px;
            height: 45px;
            top: 28px;
            font-size: 13px;
            line-height: 45px;
            width: 45px;
            cursor: pointer;
            color: #939393;
            text-align: center;
        }

        .submit-btn {
            margin-top: 30px;
        }

        .submit-btn input {
            color: white;
            border: none;
            height: auto;
            font-size: 16px;
            padding: 13px 0;
            border-radius: 5px;
            cursor: pointer;
            font-weight: 500;
            text-align: center;
            background: #1BB295;
            transition: 0.2s ease;
        }

        .submit-btn input:hover {
            background: #179b81;
        }
    </style>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
</head>
<body class="bg-light">
    <form id="form1" runat="server">
        <div class="container mt-5">
        <div class="card">
            <div class="card-body">
                <h1 class="text-center text-danger">Student Registration</h1>

                <div class="form-group">
                    <label for="txtStudID">Student Id:</label>
                    <asp:TextBox ID="txtStudID" runat="server" CssClass="form-control" placeholder="Enter Student ID"></asp:TextBox>
                </div>

                <div class="form-group">
                    <label for="txtStudName">Student Name:</label>
                    <asp:TextBox ID="txtStudName" runat="server" CssClass="form-control" placeholder="Enter Student Name"></asp:TextBox>
                </div>

                <div class="form-group">
                    <label for="txtEmail">Email Id:</label>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Enter Email ID"></asp:TextBox>
                </div>

                <div class="form-group">
                    <label for="ddlStudDept">Select Department:</label>
                    <asp:DropDownList ID="ddlStudDept" runat="server" CssClass="form-control" AppendDataBoundItems="True" AutoPostBack="True" OnSelectedIndexChanged="ddlStudDept_SelectedIndexChanged">
                        <asp:ListItem Selected="True">CSE</asp:ListItem>
                        <asp:ListItem>IT</asp:ListItem>
                        <asp:ListItem>CIVIL</asp:ListItem>
                    </asp:DropDownList>
                </div>

                <div class="form-group">
                    <label for="txtPass">Password:</label>
                    <asp:TextBox ID="txtPass" runat="server" CssClass="form-control" TextMode="Password" placeholder="Enter Password"></asp:TextBox>
                </div>

               <div class="form-group">
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-danger" OnClick="btnSubmit_Click" />
                    <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-primary" OnClick="btnLogin_Click" />
                </div>
            </div>
        </div>
        </div>
    </form>

   
</body>
</html>
