<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="2_ComplexTypeProxy.aspx.cs" Inherits="MsdnWebCast_WebSerivce2._2_ComplexTypeProxy" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
            <Services>
                <asp:ServiceReference Path="~/ColorService.asmx" />
            </Services>
        </asp:ScriptManager>
        <script type="text/javascript">
            function reverse() {
                var color = new MsdnWebCast_WebSerivce2.ComplexType.Color();
                color.Red = 50;
                color.Green = 100;
                color.Blue = 29;
                MsdnWebCast_WebSerivce2.ColorService.Reverse(color, onsuccess);
            }
            function onsuccess(result) {
                alert(result.Red+":"+result.Green+":"+result.Blue);
            }
        </script>
        <input type="button" name="showcolor" value="show color" onclick="reverse();" />
    </div>
    </form>
</body>
</html>
