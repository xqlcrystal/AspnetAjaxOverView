<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="2_InheritProblem.aspx.cs" Inherits="MsdnWebCast_OO2._2_InheritProblem" %>

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
            Type.registerNamespace("Demo");

            Demo.Parent = function () {

            }

            Demo.Parent.prototype = {
                toString: function () {
                    return Object.getTypeName(this);
                }
            }

            Demo.Parent.registerClass("Demo.Parent");

            Demo.Child = function () {
                Demo.Child.initializeBase(this);
            }

            Demo.Child.prototype = {

            }

            Demo.Child.registerClass("Demo.Child", Demo.Parent);

            function test() {
                alert(new Demo.Parent().toString());
                alert(new Demo.Child().toString());
            }

        </script>

        <input type="button" name="name1" value="child1" onclick="test()" />
    </div>
    </form>
</body>
</html>
