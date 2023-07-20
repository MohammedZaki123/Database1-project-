<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SystemAdmin.aspx.cs" Inherits="Milestone3._1.SystemAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 140px;
            left: 15px;
            z-index: 1;
            width: 198px;
            height: 31px;
        }
        .auto-style2 {
            position: absolute;
            top: 139px;
            left: 238px;
            z-index: 1;
            width: 153px;
        }
        .auto-style3 {
            position: absolute;
            top: 211px;
            left: 19px;
            z-index: 1;
            width: 158px;
            right: 1380px;
            height: 34px;
        }
        .auto-style4 {
            position: absolute;
            top: 215px;
            left: 235px;
            z-index: 1;
        }
        .auto-style5 {
            position: absolute;
            top: 294px;
            left: 21px;
            z-index: 1;
            width: 159px;
            height: 22px;
        }
        .auto-style6 {
            position: absolute;
            top: 283px;
            left: 231px;
            z-index: 1;
            height: 20px;
            margin-top: 14px;
            right: 1158px;
        }
        .auto-style7 {
            position: absolute;
            top: 227px;
            left: 485px;
            z-index: 1;
            width: 154px;
        }
        .auto-style8 {
            position: absolute;
            top: 360px;
            left: 338px;
            font-size:30px;
            z-index: 1;
            width: 235px;
            right: 984px;
            height: 29px;
        }
        .auto-style9 {
            position: absolute;
            top: 461px;
            z-index: 1;
            width: 145px;
            height: 34px;
            left: 36px;
            right: 1376px;
        }
        .auto-style10 {
            position: absolute;
            top: 457px;
            left: 540px;
            z-index: 1;
            width: 168px;
            height: 35px;
        }
        .auto-style11 {
            position: absolute;
            top: 458px;
            left: 289px;
            z-index: 1;
            height: 27px;
            }
        .auto-style12 {
            position: absolute;
            top: 546px;
            left: 359px;
            z-index: 1;
            font-size: 30px;
            width: 232px;
            height: 40px;
        }
        .auto-style13 {
            position: absolute;
            top: 610px;
            left: 31px;
            z-index: 1;
            width: 154px;
        }
        .auto-style14 {
            position: absolute;
            top: 618px;
            left: 282px;
            z-index: 1;
            margin-top: 0px;
        }
        .auto-style15 {
            position: absolute;
            top: 611px;
            left: 533px;
            z-index: 1;
            width: 186px;
        }
        .auto-style16 {
            position: absolute;
            top: 80px;
            left: 190px;
            font-size:30px;
            z-index: 1;
            width: 255px;
        }
        .auto-style17 {
            position: absolute;
            top: 175px;
            left: 925px;
            z-index: 1;
            width: 198px;
            height: 31px;
        }
        .auto-style18 {
            position: absolute;
            top: 65px;
            left: 1054px;
            z-index: 1;
            font-size: 30px;
            width: 233px;
            height: 31px;
            margin-top: 0px;
        }
        .auto-style19 {
            position: absolute;
            top: 529px;
            left: 1160px;
            z-index: 1;
            width: 158px;
            right: 532px;
            height: 34px;
        }
        .auto-style20 {
            position: absolute;
            top: 264px;
            left: 915px;
            z-index: 1;
            width: 201px;
            right: 734px;
            height: 34px;
        }
        .auto-style21 {
            position: absolute;
            top: 233px;
            left: 1410px;
            z-index: 1;
            width: 159px;
            height: 22px;
        }
        .auto-style22 {
            position: absolute;
            top: 179px;
            left: 1187px;
            z-index: 1;
        }
        .auto-style23 {
            position: absolute;
            top: 264px;
            left: 1184px;
            z-index: 1;
            width: 174px;
        }
        .auto-style24 {
            position: absolute;
            top: 360px;
            left: 988px;
            z-index: 1;
            font-size:30px;
            width: 302px;
            height: 32px;
        }
        .auto-style25 {
            position: absolute;
            top: 459px;
            left: 886px;
            z-index: 1;
            width: 198px;
            height: 31px;
        }
        .auto-style26 {
            position: absolute;
            top: 452px;
            left: 1144px;
            z-index: 1;
            width: 214px;
        }
        .auto-style27 {
            position: absolute;
            top: 22px;
            left: 560px;
            z-index: 1;
            width: 329px;
            text-align:center;
            height: 55px;
            font-size:50px;
        }
        </style>
</head>
<body style="height: 332px; margin-top: 16px;">
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" CssClass="auto-style1" Text="Stadium Name"></asp:Label>
            <asp:Label ID="Label8" runat="server" CssClass="auto-style16" Text="Add Stadium:"></asp:Label>
            <asp:Label ID="Label14" runat="server" CssClass="auto-style27" Text="System Admin"></asp:Label>
            </div>
        <asp:TextBox ID="Club_Location" runat="server" CssClass="auto-style23"></asp:TextBox>
        <asp:Label ID="Label2" runat="server" CssClass="auto-style3" Text="Stadium Location"></asp:Label>
        <asp:TextBox ID="StadiumLocation" runat="server" CssClass="auto-style4"></asp:TextBox>
        <asp:Label ID="Label3" runat="server" CssClass="auto-style5" Text="Stadium Capacity"></asp:Label>
        <asp:TextBox ID="StadiumCapacity" runat="server" CssClass="auto-style6" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
        <p>
            &nbsp;</p>
        <asp:Label ID="Label4" runat="server" CssClass="auto-style8" Text="Delete Stadium:"></asp:Label>
        <asp:Label ID="Label9" runat="server" CssClass="auto-style17" Text="Insert Club Name"></asp:Label>
        <asp:TextBox ID="StadiumName" runat="server" CssClass="auto-style2"></asp:TextBox>
        <asp:Label ID="Label10" runat="server" CssClass="auto-style20" Text="Insert Club Location"></asp:Label>
        <asp:TextBox ID="Club_name" runat="server" CssClass="auto-style22"></asp:TextBox>
        <asp:Label ID="Label11" runat="server" CssClass="auto-style18" Text="Club Name:"></asp:Label>
        <asp:Button ID="Delete_Club" runat="server" CssClass="auto-style19" onClick="deleting_Club" Text="Delete Club" />
        <p>
            &nbsp;</p>
        <asp:Button ID="Add_Stadium" runat="server" CssClass="auto-style7" Text="Add Stadium" OnClick="adding_Stadium" />
        <asp:Label ID="Label5" runat="server" CssClass="auto-style9" Text="Stadium Name"></asp:Label>
        <asp:Button ID="Delete_Stadium" runat="server" CssClass="auto-style10" onClick="deleting_Stadium" Text="Delete Stadium" />
        <asp:TextBox ID="delete_Stadium_name" runat="server" CssClass="auto-style11"></asp:TextBox>
        <asp:Label ID="Label6" runat="server" CssClass="auto-style12" Text="Block Fan:"></asp:Label>
        <asp:Label ID="Label7" runat="server" CssClass="auto-style13" Text="Fan National ID:"></asp:Label>
        <asp:TextBox ID="National_id" runat="server" CssClass="auto-style14"></asp:TextBox>
        <asp:Button ID="Block_Fan" runat="server" CssClass="auto-style15" onClick="blocking_Fan" Text="Block Fan" />

        <p>
            &nbsp;</p>
        <asp:Label ID="Label12" runat="server" CssClass="auto-style24" Text="Delete Existing Club:"></asp:Label>
        <asp:Label ID="Label13" runat="server" CssClass="auto-style25" Text="Club Name"></asp:Label>
        <asp:TextBox ID="Delete_club_name" runat="server" CssClass="auto-style26"></asp:TextBox>

        <p>
            <asp:Button ID="Add_Club" runat="server" CssClass="auto-style21" OnClick="Adding_Club" Text="Add Club" />
        </p>

    </form>
        </body>
</html>
