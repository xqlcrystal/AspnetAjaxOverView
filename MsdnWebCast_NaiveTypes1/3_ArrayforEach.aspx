<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="3_ArrayforEach.aspx.cs" Inherits="MsdnWebCast_NaiveTypes1._3_ArrayforEach" %>

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

        <script type="text/javascript">
            function method(ele,index,array) {
                this.result += "[" + index + "." + ele + "]";
            }
            var items = "I am jeffrey zhao".split(' ');
            var ojb = { result: "" };
            Array.forEach(items, method, ojb);
            alert(ojb.result);
        </script>
    </div>
    </form>
</body>
</html>
