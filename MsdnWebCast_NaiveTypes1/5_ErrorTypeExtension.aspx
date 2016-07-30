<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="5_ErrorTypeExtension.aspx.cs" Inherits="MsdnWebCast_NaiveTypes1._5_ErrorTypeExtension" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script type="text/javascript" src="Error.js"></script>
</head>
<body>
    <form id="form1" runat="server">
       
    
        <asp:ScriptManager ID="ScriptManager1" runat="server" />

    <script type="text/javascript">
        try {
            throw getNiceError();
        }
        catch (e) {
            var errorMsg = ("Message: " + e.message + "\n");
            errorMsg += ("Line Number: " + e.lineNumber + "\n");
            errorMsg += ("File Name: " + e.fileName + "\n\n");
            errorMsg += ("Stack Trace:\n" + e.stack);
            alert(errorMsg);
        }

    </script>
   
    </form>
</body>
</html>
