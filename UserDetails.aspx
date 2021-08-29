<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserDetails.aspx.cs" Inherits="AspnetUserDetails.UserDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
          <h3>UserDetails</h3>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="UserID"></asp:Label>

                    </td>
                    <td>
                        <asp:TextBox ID="txtUserID" runat="server"></asp:TextBox>
                    </td>
                </tr>
                  <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="UserName"></asp:Label>

                    </td>
                    <td>
                        <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                   <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="UserEmailId"></asp:Label>

                    </td>
                    <td>
                        <asp:TextBox ID="txtEmailId" runat="server" TextMode="Email"></asp:TextBox>
                    </td>
                </tr>
                 <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="UserPassword"></asp:Label>

                    </td>
                    <td>
                        <asp:TextBox ID="txtUserPassword" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                 <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="UserMobileNo"></asp:Label>

                    </td>
                    <td>
                        <asp:TextBox ID="txtUserMobileNo" runat="server" TextMode="Phone"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>

                    </td>
                    <td>
                        <asp:Button ID="btnSave" runat="server" Text="Save" ForeColor="Green" OnClick="btnSave_Click" />
                    </td>
                 </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblErrorMessage" runat="server" Text="" ForeColor="red"></asp:Label>
                    </td>
                </tr>
            </table>
            <asp:GridView ID="gvdUser" runat="server" AutoGenerateColumns="false">
                <Columns>
                    <asp:BoundField DataField="UserID" HeaderText="UserID" />
                    <asp:BoundField DataField="UserName" HeaderText="UserName" />
                    <asp:BoundField DataField="UserEmailId" HeaderText="UserEmailId" />
                    <asp:BoundField DataField="UserPassword" HeaderText="UserPassword" />
                    <asp:BoundField DataField="UserMobileNo" HeaderText="UserMobileNo" />

                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
