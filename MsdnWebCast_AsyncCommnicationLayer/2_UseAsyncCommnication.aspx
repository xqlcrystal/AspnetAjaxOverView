<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="2_UseAsyncCommnication.aspx.cs" Inherits="MsdnWebCast_AsyncCommnicationLayer._2_UseAsyncCommnication" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script type="text/javascript">
        var webrequest = null;
        function sendRequest(action) {
            webrequest = new Sys.Net.WebRequest();
            webrequest.set_url("Handlers/Complex.ashx");
            webrequest.get_headers()["action"] = action;
           // webrequest.set_body("data=" + encodeURIComponent("Hello world"));
            webrequest.set_body("data=" + ("Hello world"));
            webrequest.set_httpVerb("POST");
            webrequest.set_timeout(3000);

            webrequest.add_completed(oncompleted);
            webrequest.invoke();

        }

        function ab() {
            webrequest.get_executor().abort();
        }

        function oncompleted(response,eventArgs) {
           // response=new Sys.Net.WebRequestExecutor();
            if (response.get_aborted()) {
                alert("request aborted");
            } else if (response.get_responseAvailable()) {
                var statusCode = response.get_statusCode();
                if (statusCode < 200 || statusCode >= 300) {
                    alert("Error accurred");
                } else {
                    alert(response.get_responseData());
                }
            } else if(response.get_timedOut()){
                alert("Request timeout!");
            } else {
                alert("Error occurred");
    
            }    
        

        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    </div>
        <input type="button" name="name" value="normal" onclick="sendRequest('normal');" />
         <input type="button" name="nameError" value="error" onclick="sendRequest('error');" />
         <input type="button" name="nameother" value="other" onclick="sendRequest('other');" />
        <input type="button" name="nameab" value="ab" onclick="ab();" />
    </form>
</body>
</html>
