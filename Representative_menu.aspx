<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Representative_menu.aspx.cs" Inherits="Milestone3._1.Representative_menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 392px;
            height: 174px;
            position: absolute;
            top: 157px;
            left: 71px;
            z-index: 1;
        }
        .auto-style3 {
            position: absolute;
            top: 14px;
            left: 558px;
            z-index: 1;
            width: 285px;
            height: 78px;
            margin-top: 2px;
        }
        .auto-style4 {
            width: 330px;
            height: 182px;
            position: absolute;
            top: 159px;
            left: 541px;
            z-index: 1;
        }
        .auto-style5 {
            position: absolute;
            top: 23px;
            left: 1036px;
            z-index: 1;
            width: 233px;
            height: 77px;
            bottom: 490px;
            right: 350px;
        }
        .auto-style6 {
            width: 319px;
            height: 167px;
            position: absolute;
            top: 207px;
            left: 982px;
            z-index: 1;
            margin-bottom: 5px;
        }
        .auto-style7 {
            position: absolute;
            top: 171px;
            z-index: 1;
            left: 1067px;
        }
        .auto-style8 {
            position: absolute;
            top: 137px;
            left: 1089px;
            z-index: 1;
            text-align:center;
            width: 124px;
        }
        .auto-style9 {
            position: absolute;
            top: 440px;
            left: 659px;
            z-index: 1;
            width: 307px;
            height: 124px;
            margin-bottom: 1px;
            margin-top: 4px;
        }
        .auto-style10 {
            position: absolute;
            top: 454px;
            left: 306px;
            z-index: 1;
        }
        .auto-style11 {
            position: absolute;
            top: 523px;
            left: 302px;
            z-index: 1;
        }
        .auto-style12 {
            position: absolute;
            top: 455px;
            left: 68px;
            z-index: 1;
            width: 125px;
        }
        .auto-style13 {
            position: absolute;
            top: 523px;
            left: 67px;
            z-index: 1;
            width: 115px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <asp:Button ID="Button1" runat="server" CssClass="auto-style1" Text="Club Information" onClick="club_information" Height="73px" style="margin-left: 84px; margin-bottom: 0px" Width="358px"/>
            <asp:Button ID="Button2" runat="server" CssClass="auto-style3" Text="Club Upcoming matches" onClick="upcoming_matches"/>
            <asp:Button ID="Button3" runat="server" CssClass="auto-style5" Text="avaliableStadiums" onClick="available_stadiums"/>
        </div>
        <asp:GridView ID="informationView" runat="server" CssClass="auto-style2">
        </asp:GridView>
        <asp:GridView ID="upcoming_matches_View" runat="server" CssClass="auto-style4">
        </asp:GridView>
        <p>
            &nbsp;</p>
        <p>
            <asp:Label ID="Label1" runat="server" CssClass="auto-style8" Text="Date Time"></asp:Label>
        <asp:TextBox ID="datetimebox" runat="server" CssClass="auto-style7"></asp:TextBox>
        </p>
        <asp:GridView ID="Stadiumsview" runat="server" CssClass="auto-style6">
        </asp:GridView>
        <p>
        <asp:Button ID="Button4" runat="server" CssClass="auto-style9" Text="Send a Host Request" OnClick="host_request" />
        </p>
        <asp:TextBox ID="start" runat="server" CssClass="auto-style10"></asp:TextBox>
        <asp:TextBox ID="Stadium" runat="server" CssClass="auto-style11"></asp:TextBox>
        <asp:Label ID="Label3" runat="server" CssClass="auto-style13" Text="Stadium Name"></asp:Label>
        <asp:Label ID="Label2" runat="server" CssClass="auto-style12" Text="start time of the match"></asp:Label>
    </form>
</body>
</html>
