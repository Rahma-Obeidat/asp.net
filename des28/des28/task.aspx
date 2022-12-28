<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="task.aspx.cs" Inherits="des28.task" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style>
.l{
    color:green;
}
    </style>
</head>
   
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <div>
        </div>
        <br />
        <p>
            &nbsp;</p>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Label ID="Label1" runat="server" Text="Comment"></asp:Label>
<br />
<br />
<br />
                <asp:TextBox ID="TextBox1" runat="server" Height="51px" TextMode="MultiLine" Width="320px"></asp:TextBox>
<br />
<br />
<br />
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add Comment" />
<br />
<br />
                <asp:Label ID="Label2" runat="server" CssClass="l"></asp:Label>
                <br />
                <br />
                <br />
                <asp:Label ID="Label3" runat="server"></asp:Label>
            </ContentTemplate>
        </asp:UpdatePanel>
    </form>
</body>
</html>
