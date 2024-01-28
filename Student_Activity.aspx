<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="Student_Activity.aspx.cs" Inherits="InternalMarkAllotmentSystem.Student_Activity" %>

<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
    
        <style>
            /* Your internal CSS styles go here */
            .container {
                display: flex;
                justify-content: center;
                align-items: center;
                
            }

            .form {
                padding: 25px;
                background: #fff;
                max-width: 500px;
                width: 100%;
                border-radius: 7px;
                box-shadow: 0 10px 15px rgba(0, 0, 0, 0.05);
                background: linear-gradient(45deg, rgba(66, 183, 245, 0.8) 0%, rgba(66, 245, 189, 0.4) 100%);
                margin-top: 50px;
            }

            .form h1 {
                font-size: 27px;
                text-align: center;
                margin: 0 0 30px;
                color: #dc3545;
            }

            .form-group {
                margin-bottom: 20px;
            }

            .form label {
                display: block;
                font-size: 15px;
                margin-bottom: 7px;
                color: #495057;
            }

            .form input,
            .form select {
                height: 45px;
                padding: 10px;
                width: 100%;
                font-size: 15px;
                outline: none;
                background: #fff;
                border-radius: 3px;
                border: 1px solid #bfbfbf;
            }

            .form input:focus,
            .form select:focus {
                border-color: #9a9a9a;
            }

            .form .btn {
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

            .form .btn-danger {
                background: #dc3545;
            }

            .form .btn:hover {
                background: #bd2130;
            }
        </style>
    
   <div class="container d-flex justify-content-center align-items-center vh-100">
        <div class="form">
            <h1 class="text-danger">Student Activity Form</h1>

            <div class="form-group">
                <label for="txtId">ID</label>
                <asp:TextBox ID="txtId" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <div class="form-group">
                <label for="txtName">Name</label>
                <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <div class="form-group">
                <label for="txtDept">Department</label>
                <asp:TextBox ID="txtDept" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <div class="form-group">
                <label for="txtActivityN">Activity Name</label>
                <asp:TextBox ID="txtActivityN" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <div class="form-group">
                <label for="txtOrg">Organization</label>
                <asp:TextBox ID="txtOrg" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <div class="form-group">
                <label for="txtDoa">Date Of Activity</label>
                <asp:TextBox ID="txtDoa" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <div class="form-group">
                <label for="txtRemark">Remark If Any</label>
                <asp:TextBox ID="txtRemark" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <div class="form-group">
                <asp:Button ID="BtnSubmit" runat="server" OnClick="BtnSubmit_Click" Text="Submit" CssClass="btn btn-danger" />
            </div>
        </div>
    </div>
    

</asp:Content>

