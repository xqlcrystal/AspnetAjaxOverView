<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="5_CustomizeJavaScriptConverter.aspx.cs" Inherits="MsdnWebCast_WebSerivce2._5_CustomizeJavaScriptConverter" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="sm1" runat="server">
            <Services>
                <asp:ServiceReference Path="~/BoyGirlService.asmx" />
            </Services>
        </asp:ScriptManager>
    <div>
        <script type="text/javascript">
            function boyandgirl() {
                MsdnWebCast_WebSerivce2.BoyGirlService.GetBoyWithGirlFriend(onsuccess);
            }

            function onsuccess(result) {
                alert(result);
            }
        </script>
        <input type="button" name="boy" value="boy and girl" onclick="boyandgirl();" />
    </div>
    </form>
</body>
</html>
