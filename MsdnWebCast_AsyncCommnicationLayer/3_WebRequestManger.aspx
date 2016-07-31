<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="3_WebRequestManger.aspx.cs" Inherits="MsdnWebCast_AsyncCommnicationLayer._3_WebRequestManger" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <% =DateTime.Now %><br />
                <asp:Button ID="button1" runat="server" Text="button1" />
            </ContentTemplate>
        </asp:UpdatePanel>

        <script type="text/javascript">
            Sys.Net.WebRequestManager.add_invokingRequest(function (sender, eventargs) {

                if (confirm("ccccc")) {
                    eventargs.set_cancel(true);
                }
            });

            Sys.Net.WebRequestManager.add_completedRequest(function () {

                alert("completed");
            });
        </script>
    </div>
    </form>
</body>
</html>
