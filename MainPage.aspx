<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="Milestone3._1.MainPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 22px;
            left: 432px;
            text-align:center;
            font-size: 60px;
            z-index: 1;
            width: 760px;
        }
        .auto-style2 {
            position: absolute;
            top: 131px;
            left: 557px;
            z-index: 1;
            width: 358px;
            height: 85px;
        }
        .auto-style3 {
            position: absolute;
            top: 245px;
            left: 558px;
            z-index: 1;
            width: 359px;
            height: 96px;
        }
        .auto-style4 {
            position: absolute;
            top: 371px;
            left: 557px;
            z-index: 1;
            width: 360px;
            height: 90px;
        }
        .auto-style5 {
            position: absolute;
            top: 485px;
            left: 553px;
            z-index: 1;
            width: 363px;
            height: 87px;
        }
        .auto-style6 {
            position: absolute;
            top: 597px;
            left: 561px;
            z-index: 1;
            width: 354px;
            height: 87px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Label ID="Label1" runat="server" CssClass="auto-style1" Text="Matches Management System
            "></asp:Label>
        <asp:Button ID="Button1" runat="server" CssClass="auto-style2" Text="Register as a System Admin" onClick="System_admin_registred"/>
        <asp:Button ID="Button2" runat="server" CssClass="auto-style3" Text="Register as a Sports Association Manager" OnClick="association_manager_registred" />
        <asp:Button ID="Button3" runat="server" CssClass="auto-style4" Text="Register as a Club Representative" OnClick="club_representative_registred"/>
        <asp:Button ID="Button4" runat="server" CssClass="auto-style5" Text="Register as a Fan" OnClick="fan_registred"/>
        <asp:Button ID="Button5" runat="server" CssClass="auto-style6" Text="Register as a Stadium Manager" onClick="stadium_manager_registred"/>
    </form>
</body>
</html>
