<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="5_ClientProxy.aspx.cs" Inherits="MsdnWebCast_WebSerivce1._5_ClientProxy" %>

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
               <asp:ServiceReference Path="~/ErrorHandler.asmx" />
           </Services>
        </asp:ScriptManager>
        <script type="text/javascript">
            MsdnWebCast_WebSerivce1.ErrorHandler.set_defaultFailedCallback(onFailed);
            MsdnWebCast_WebSerivce1.ErrorHandler.set_timeout(2000);
            function getDevision(a, b) {
                MsdnWebCast_WebSerivce1.ErrorHandler.GetDevision(a, b, onSuccess);
            }

            function onSuccess(result) {
                alert(result);
            }

            function timeout() {
                
                MsdnWebCast_WebSerivce1.ErrorHandler.TimeOut(onSuccess, onFailed);
            }

            function onFailed(error) {
                var msg = String.format("Timeout:{0}\nMessage:{1}\nException Type:{2}\nStacktrace:{3}"
                    , error.get_timedOut()
                    , error.get_message()
                    , error.get_exceptionType()
                    , error.get_stackTrace());
                alert(msg);
            }
        </script>
        <input type="button" name="test" value="show Devision"  onclick="getDevision(5, 0);" />
        <input type="button" name="testTimeout" value="Time out" onclick="timeout();" />
    </div>
    </form>
</body>
</html>
