<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PWMA_Application.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 337px;
            border-bottom-width: 2px;
            border-left-style: none;
            border-left-color: inherit;
            border-left-width: medium;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top-style: none;
            border-top-color: inherit;
            border-top-width: medium;
        }
        .auto-style2 {
            border-top: medium none rgb(85, 197, 192);
            border-left: medium none rgb(85, 197, 192);
            border-right: medium none rgb(85, 197, 192);
            border-bottom: 2px solid rgb(85, 197, 192);
            background-color:rgb(242,242,242);
            color:rgb(21,19,60);
        }
        .auto-style3 {
            border-radius:20px;
            border:none;
            background-color:rgba(236, 153, 75, 0.87);
            height:30px;
            width:90px;
            
        }
         input.auto-style3:hover
         {
             border-radius:20px;
            border:none;
            background-color:rgb(236, 153, 75);
            height:30px;
            width:90px;
         }
         input.auto-style3:active
         {
            transform:translateY(4px);
         }
        }
        .auto-style4 {
            accent-color:rgb(236, 153, 75);
        }
        .auto-style5 {
            width: 529px;

        }
        .auto-style6 {
            box-shadow:5px 5px 5px rgba(128, 128, 128, 0.83);
            border-radius:15px;
        }
        .auto-style7 {
            width: 553px;
        }
    </style>
</head>
<body style="background-color:rgba(246, 245, 245, 0.79)">
    <form id="form1" runat="server">
        <div style="text-align:center">
            <table style="width:100%;height:100%">
                <tr>
                    <td colspan="3" style="font-family: benne; font-size: 12px; background-color: #444444; margin-top: 33px; margin-right: 74px; margin-left: 74px; line-height: 85px;">
                       
                        <table style="width: 100%;">
                            <tr>
                                <td class="auto-style5" style="font-family: benne; font-size: 16px; color: #FFFFFF; text-align: left; vertical-align: bottom;"> <asp:Image ImageAlign="Left" ID="Image1" runat="server" Height="85px" ImageUrl="~/Resources/Logo 2.png" Width="116px" />PharmaWare, Pharmaceutical warehouse management application </td>
                                
                                <td colspan="2" style="font-family: benne; font-size: 30px; color: #FFFFFF; text-align: right;"><span>Login</span></td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style1">
            <asp:Login ID="Login1" OnAuthenticate="Login1_Authenticate" runat="server" BackColor="White">
                <LayoutTemplate>
                    <table cellpadding="1" cellspacing="0" style="border-collapse:collapse;" >
                        <tr>
                            <td>
                                <table >
                                    <tr>
                                        <td align="center" style="font-family: benne; font-size: 32px; color: #15133C; padding-top: 50px; padding-bottom: 40px;">log into your account</td>
                                    </tr>
                                    <tr>
                                        <td align="left">
                                            <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName" Font-Names="Benne" Font-Size="16px" ForeColor="#15133C">User Name</asp:Label>
                                        </td>
                                       
                                    </tr>
                                     <tr>
                                         <td align="left">
                                            <asp:TextBox ID="UserName" runat="server" CssClass="auto-style2" Width="211px" Height="23px"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" style="color:rgb(236,153,75);" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left">
                                            <asp:Label ID="UserNameLabel0" runat="server" AssociatedControlID="UserName" Font-Names="Benne" Font-Size="16px" ForeColor="#15133C">Password</asp:Label>
                                        </td>
                                       
                                    </tr>
                                     <tr>
                                        <td align="left">
                                            <asp:TextBox ID="Password" runat="server" TextMode="Password" CssClass="auto-style2" Width="211px" Height="23px"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" style="color:rgb(236,153,75);" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left">
                                            <asp:CheckBox CssClass="auto-style4"  ID="RememberMe" runat="server" Text="Remember me next time" Font-Names="Benne" ForeColor="#15133C" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" style="color:rgb(236,153,75);">
                                            <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left">
                                            <asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="Login" ValidationGroup="Login1" CssClass="auto-style3" Font-Size="20px" ForeColor="White" Font-Names="Benne" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
            </asp:Login>
     
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7" style="font-family: benne; color: #000000; text-align: left; vertical-align: bottom;">
                        <asp:Image CssClass="auto-style6" ImageAlign="Left" ID="Image2" runat="server" Height="67px" ImageUrl="~/Resources/Logo 1.png" Width="69px" />
                        </br>&nbsp;&nbsp;&nbsp;EXPECT MORE</td>
                    <td class="auto-style1">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
     
        </div>
    </form>
</body>
</html>
