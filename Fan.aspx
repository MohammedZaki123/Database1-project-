<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Fan.aspx.cs" Inherits="Milestone3._1.Fan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
.auto-style1 {
            position: absolute;
            top: 15px;
            left: 506px;
            z-index: 1;
            text-align:center;
            width: 406px;
            font-size:50px;
        }
        .auto-style2 {
            position: absolute;
            top: 92px;
            font-size:25px;
            left: 61px;
            z-index: 1;
            width: 174px;
            right: 562px;
            height: 33px;
        }
        .auto-style3 {
            position: absolute;
            top: 150px;
            left: 61px;
            z-index: 1;
            width: 127px;
            font-size:25px;
        }
        .auto-style4 {
            position: absolute;
            top: 207px;
            left: 62px;
            z-index: 1;
            font-size:25px;
            width: 103px;
        }
        .auto-style5 {
            position: absolute;
            top: 268px;
            left: 53px;
            z-index: 1;
            width: 109px;
            font-size:25px;
        }
        .auto-style6 {
            position: absolute;
            top: 96px;
            left: 178px;
            z-index: 1;
        }
        .auto-style7 {
            position: absolute;
            top: 157px;
            left: 179px;
            z-index: 1;
            bottom: 362px;
        }
        .auto-style8 {
            position: absolute;
            top: 211px;
            left: 178px;
            z-index: 1;
        }
        .auto-style9 {
            position: absolute;
            top: 275px;
            left: 179px;
            z-index: 1;
        }
        .auto-style10 {
            position: absolute;
            top: 146px;
            left: 535px;
            z-index: 1;
            width: 376px;
            margin-bottom: 0px;
            height: 110px;
        }
        .auto-style11 {
            position: absolute;
            top: 332px;
            left: 25px;
            z-index: 1;
            height: 24px;
            font-size:25px;
            width: 153px;
        }
        .auto-style12 {
            position: absolute;
            top: 336px;
            left: 179px;
            z-index: 1;
        }
        .auto-style13 {
            position: absolute;
            top: 406px;
            left: 31px;
            z-index: 1;
            font-size:25px;
            width: 121px;
        }
        .auto-style14 {
            position: absolute;
            top: 411px;
            left: 176px;
            z-index: 1;
        }
        .auto-style15 {
            position: absolute;
            top: 477px;
            left: 35px;
            z-index: 1;
            font-size: 25px;
            width: 106px;
        }
        .auto-style16 {
            position: absolute;
            top: 479px;
            left: 169px;
            z-index: 1;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" CssClass="auto-style1" Text="Fan"></asp:Label>
            <asp:Label ID="Label2" runat="server" CssClass="auto-style2" Text="Name"></asp:Label>
            <asp:Label ID="Label4" runat="server" CssClass="auto-style4" Text="Password"></asp:Label>
            <asp:TextBox ID="national_id" runat="server" CssClass="auto-style9"></asp:TextBox>
            <asp:Label ID="Label3" runat="server" CssClass="auto-style3" Text="Username"></asp:Label>
            <asp:Label ID="Label5" runat="server" CssClass="auto-style5" Text="national id"></asp:Label>
            <asp:TextBox ID="Fan_name" runat="server" CssClass="auto-style6"></asp:TextBox>
            <asp:TextBox ID="Username" runat="server" CssClass="auto-style7"></asp:TextBox>
            <asp:TextBox ID="Password" runat="server" CssClass="auto-style8"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" CssClass="auto-style10" Text="Add Fan"  onClick="add_fan"/>
        </div>
        <asp:Label ID="Label6" runat="server" CssClass="auto-style11" Text="phone number"></asp:Label>
        <asp:TextBox ID="phone_number" runat="server" CssClass="auto-style12"></asp:TextBox>
        <asp:Label ID="Label7" runat="server" CssClass="auto-style13" Text="Birth date"></asp:Label>
        <asp:TextBox ID="birth_date" runat="server" CssClass="auto-style14"></asp:TextBox>
        <asp:Label ID="Label8" runat="server" CssClass="auto-style15" Text="address"></asp:Label>
        <asp:TextBox ID="address" runat="server" CssClass="auto-style16"></asp:TextBox>
    </form>
</body>
</html>
