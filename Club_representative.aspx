<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Club_representative.aspx.cs" Inherits="Milestone3._1.Club_representative" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 15px;
            left: 452px;
            z-index: 1;
            text-align:center;
            font-size:50px;
            width: 482px;
            height: 57px;
        }
        .auto-style2 {
            position: absolute;
            top: 128px;
            left: 192px;
            z-index: 1;
            width: 271px;
            font-size:30px;
            height: 48px;
        }
        .auto-style3 {
            position: absolute;
            top: 216px;
            left: 190px;
            font-size:30px;
            z-index: 1;
            width: 251px;
        }
        .auto-style4 {
            position: absolute;
            top: 310px;
            left: 135px;
            z-index: 1;
            font-size: 30px;
            width: 284px;
        }
        .auto-style5 {
            position: absolute;
            top: 382px;
            left: 182px;
            z-index: 1;
            font-size:30px;
            width: 211px;
        }
        .auto-style6 {
            position: absolute;
            top: 141px;
            left: 506px;
            z-index: 1;
        }
        .auto-style7 {
            position: absolute;
            top: 230px;
            left: 507px;
            z-index: 1;
            bottom: 107px;
        }
        .auto-style8 {
            position: absolute;
            top: 315px;
            left: 506px;
            z-index: 1;
        }
        .auto-style9 {
            position: absolute;
            top: 389px;
            left: 507px;
            z-index: 1;
            margin-bottom: 0px;
        }
        .auto-style10 {
            position: absolute;
            top: 216px;
            left: 966px;
            z-index: 1;
            width: 330px;
            height: 116px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Label ID="Label1" runat="server" CssClass="auto-style1" Text="Club Representative"></asp:Label>
        <asp:Label ID="Label2" runat="server" CssClass="auto-style2" Text="Usernname"></asp:Label>
        <asp:Label ID="Label3" runat="server" CssClass="auto-style3" Text="password"></asp:Label>
        <asp:TextBox ID="Name" runat="server" CssClass="auto-style8"></asp:TextBox>
        <asp:Label ID="Label4" runat="server" CssClass="auto-style4" Text="Representative name"></asp:Label>
        <asp:Label ID="Label5" runat="server" CssClass="auto-style5" Text="Club name"></asp:Label>
        <asp:TextBox ID="Username" runat="server" CssClass="auto-style6"></asp:TextBox>
        <asp:TextBox ID="Password" runat="server" CssClass="auto-style7"></asp:TextBox>
        <asp:TextBox ID="Clubname" runat="server" CssClass="auto-style9"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" CssClass="auto-style10" Text="Register" onClick="add_representative"/>
    </form>
</body>
</html>
