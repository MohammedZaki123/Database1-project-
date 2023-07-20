<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Fans_Menu.aspx.cs" Inherits="Milestone3._1.Fans_Menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 36px;
            left: 41px;
            z-index: 1;
            height: 72px;
        }
        .auto-style2 {
            width: 232px;
            height: 152px;
            position: absolute;
            top: 199px;
            left: 54px;
            z-index: 1;
        }
        .auto-style3 {
            position: absolute;
            top: 84px;
            left: 863px;
            z-index: 1;
            height: 109px;
            width: 225px;
        }
        .auto-style4 {
            position: absolute;
            top: 139px;
            left: 18px;
            z-index: 1;
            width: 84px;
        }
        .auto-style5 {
            position: absolute;
            top: 140px;
            left: 81px;
            z-index: 1;
        }
        .auto-style6 {
            position: absolute;
            top: 144px;
            left: 473px;
            z-index: 1;
            width: 100px;
            height: 27px;
        }
        .auto-style7 {
            position: absolute;
            top: 143px;
            left: 604px;
            z-index: 1;
        }
        .auto-style8 {
            position: absolute;
            top: 204px;
            left: 476px;
            z-index: 1;
            width: 100px;
        }
        .auto-style9 {
            position: absolute;
            top: 200px;
            left: 603px;
            z-index: 1;
        }
        .auto-style10 {
            position: absolute;
            top: 262px;
            left: 604px;
            z-index: 1;
        }
        .auto-style11 {
            position: absolute;
            top: 265px;
            left: 476px;
            z-index: 1;
            width: 86px;
        }
        .auto-style12 {
            position: absolute;
            top: 87px;
            left: 477px;
            z-index: 1;
            width: 91px;
        }
        .auto-style13 {
            position: absolute;
            top: 83px;
            left: 604px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Button ID="Button1" runat="server" CssClass="auto-style1" Text="View available matches" onClick="view_matches"/>
        <asp:GridView ID="matches_view" runat="server" CssClass="auto-style2">
        </asp:GridView>
        <asp:Button ID="Button2" runat="server" CssClass="auto-style3" Text="Purchase Ticket" onClick="purchase_ticket"/>
        <asp:Label ID="Label1" runat="server" CssClass="auto-style4" Text="Date"></asp:Label>
        <asp:TextBox ID="datetimebox" runat="server" CssClass="auto-style5"></asp:TextBox>
        <asp:TextBox ID="host_club" runat="server" CssClass="auto-style7"></asp:TextBox>
        <asp:Label ID="Label2" runat="server" CssClass="auto-style6" Text="Host Club"></asp:Label>
        <asp:Label ID="Label3" runat="server" CssClass="auto-style8" Text="Guest Club"></asp:Label>
        <asp:TextBox ID="guest_club" runat="server" CssClass="auto-style9"></asp:TextBox>
        <asp:TextBox ID="Location" runat="server" CssClass="auto-style10"></asp:TextBox>
        <asp:Label ID="Label4" runat="server" CssClass="auto-style11" Text="location"></asp:Label>
        <asp:Label ID="Label5" runat="server" CssClass="auto-style12" Text="National_id"></asp:Label>
        <asp:TextBox ID="National_id" runat="server" CssClass="auto-style13"></asp:TextBox>
    </form>
</body>
</html>
