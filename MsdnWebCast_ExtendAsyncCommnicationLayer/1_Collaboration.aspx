<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="1_Collaboration.aspx.cs" Inherits="MsdnWebCast_ExtendAsyncCommnicationLayer._1_Collaboration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script type="text/javascript">
        function senrequest() {
            debugger;
            var request = new Sys.Net.WebRequest();
            request.set_url("Handlers/Simple.ashx");
            request.set_httpVerb("POST");
            request.add_completed(onCompleted);
            request.invoke();
        }

        function onCompleted(response,eventargs) {
            debugger;
            alert(response.get_responseData());
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    </div>
        <input type="button" name="nameshow" value="show debug" onclick="senrequest();" />
    </form>
</body>
</html>
