<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="7_FunctionTypeExtension.aspx.cs" Inherits="MsdnWebCast_NaiveTypes1._7_FunctionTypeExtension" %>

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
        <input type="button" value="Click Me" id="btn" />
        <script type="text/javascript">
            var obj =
                {
                    text: "hello",
                    onclick: function (e,arg) {
                        alert(this.text +" "+ arg);
                    }

                };

            //obj.onclick();
            //$addHandler($get("btn"), "click", obj.onclick);
            //var onclickdelegate = Function.createDelegate(obj, obj.onclick);
            var onclickdelegate = Function.createCallback(
                Function.createDelegate(obj, obj.onclick),
                "world"
                );
           // onclickdelegate();
            $addHandler($get("btn"), "click", onclickdelegate);
        </script>
    </div>
    </form>
</body>
</html>
