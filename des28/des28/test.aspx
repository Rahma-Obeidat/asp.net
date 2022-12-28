<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="des28.test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <div>
        </div>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style1" Width="206px"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style1" OnClick="Button1_Click" Text="Button" />
                <asp:Label ID="Label1" runat="server" CssClass="auto-style1"></asp:Label>
                <asp:Label ID="Label2" runat="server" CssClass="auto-style1"></asp:Label>
                <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick">
                </asp:Timer>
                <br />
                <asp:Image ID="Image1" runat="server" Height="136px" ImageUrl="~/img/1.png" />
                <br />
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
            </Triggers>
        </asp:UpdatePanel>
        <asp:UpdateProgress ID="UpdateProgress1" runat="server">
            <ProgressTemplate>
<br />
                <br />
            </ProgressTemplate>
        </asp:UpdateProgress>
    </form>
</body>
</html>
