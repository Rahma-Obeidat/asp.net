<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Des27Task.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
         .big_div{
           /* position:relative;*/
          /*  background-image: url("images/Register.PNG");*/
         
         display:flex;
         flex-direction:row;
        }
        .div_form{
            position:relative;
            border:solid 5px #2B3467;
            width:400px;
            height:520px;
            border-radius:12px;
           /* margin-top:-43%;*/
           margin-top:10%;
            z-index:10;
            margin-left:15%;


        }
        img{
            width:100%;
            height:750px;
            opacity:0.4;
        }
        h3{
            color:#2B3467;
            margin-left:33%;
            margin-top:5%;
        }
        .textbox{
            margin-left:25%;
            width:220px;
        }
        .button{
            color:white;
            background-color:#2B3467;
            border:solid 5px #2B3467;
            padding:5px;
            border-radius:12px;
            margin-left:32%;
        }
        .link{
            text-decoration:none;
            color:#2B3467;

        }
        p{
 color:#2B3467;
 margin-left:25%;
 margin-top:5%;

        }
        .l{
            margin-left:32%;
            color:green;
            font-weight:bold;
        }
        .error{
            color:red;
             margin-left:33%;
        }
    </style>
     <form id="form1">
        <div class="big_div">
            
            <div class="div_form">
                <div>
                    <h3>REGISTER</h3><br />
                    <%--         <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox" placeholder="First Name" ></asp:TextBox><br /><br /><br />--%>
                     <asp:TextBox ID="email" runat="server" CssClass="textbox" placeholder="Email"></asp:TextBox><br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter Correct Email" ControlToValidate="email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="error" ValidationGroup="reg"></asp:RegularExpressionValidator>
                    <br /><br />
                    <%--                <asp:TextBox ID="TextBox3" runat="server" CssClass="textbox" placeholder="Phone Number"></asp:TextBox><br /><br /><br />--%>
                     <asp:TextBox ID="pass" runat="server" CssClass="textbox" placeholder="Password" type="password"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="pass" ErrorMessage="Fill Your Password" CssClass="error" ValidationGroup="reg"></asp:RequiredFieldValidator>
                    <br /><br />
                     <asp:TextBox ID="repass" runat="server" CssClass="textbox" placeholder="Comfirm Password" type="password"></asp:TextBox><br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="pass" ControlToValidate="repass" ErrorMessage="Password not match" CssClass="error" ValidationGroup="reg"></asp:CompareValidator>
                    <br /><br />
                    <asp:Button ID="Button1" runat="server" Text="CREAT ACCOUNT" CssClass="button" OnClick="Button1_Click" ValidationGroup="reg"  /><br />
                    <asp:Label ID="Label1" runat="server" Text="Account Created" CssClass="l" Visible="false"></asp:Label>
                    <p>Already have an account? <a href="Login.aspx" class="link">Login</a></p>

                </div>

            </div>
             
            <div class="div_form">
                <div>
                    <h3>Login</h3><br />
                    <%--         <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox" placeholder="First Name" ></asp:TextBox><br /><br /><br />--%>
                     <asp:TextBox ID="email2" runat="server" CssClass="textbox" placeholder="Email"></asp:TextBox><br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter Correct Email" ControlToValidate="email2" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="error" ValidationGroup="login"></asp:RegularExpressionValidator>
                    <br /><br />
                    <%--                <asp:TextBox ID="TextBox3" runat="server" CssClass="textbox" placeholder="Phone Number"></asp:TextBox><br /><br /><br />--%>
                     <asp:TextBox ID="TextBox2" runat="server" CssClass="textbox" placeholder="Password" type="password"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Fill Your Password" CssClass="error" ValidationGroup="login"></asp:RequiredFieldValidator>
                    <br /><br />
                    <%-- <asp:TextBox ID="TextBox3" runat="server" CssClass="textbox" placeholder="Comfirm Password" type="password"></asp:TextBox><br />
                    <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="pass" ControlToValidate="repass" ErrorMessage="Password not match" CssClass="error"></asp:CompareValidator>--%>
                    <br /><br />
                    <%--<asp:Button ID="Button3" runat="server" Text="Login" CssClass="button" OnClick="Button2_Click" ValidationGroup="login" />--%>
                    <asp:Button ID="Button4" runat="server" Text="Login" ValidationGroup="login"  class="button" />
                    <br />
                    <%--<asp:Button ID="Button2" runat="server" Text="Login" CssClass="button" OnClick="Button2_Click" ValidationGroup="login"/>--%>
                    <asp:Label ID="Label2" runat="server" Text="Account Created" CssClass="l" Visible="false"></asp:Label>
                     <p class="p1">Need an account? <a href="Register.aspx" class="link"> SIGN UP</a></p>
                    <%--   <p>Already have an account? <a href="Login.aspx" class="link">Login</a></p>--%>

                </div>

            </div>
        </div>
    </form>

</asp:Content>
 