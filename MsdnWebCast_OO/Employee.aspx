<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="MsdnWebCast_OO.Employee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    
</head>
<body>
    <form id="form1" runat="server">
         <asp:ScriptManager ID="ScriptManager1" runat="server">
            <Scripts>
                <asp:ScriptReference Path="/Employee.js" />
            </Scripts>
        </asp:ScriptManager>
    <div id="info">     
    </div>
        <script type="text/javascript">
            function display(text) {
                document.getElementById("info").innerHTML+=(text+"<br/>");
            }
            var jeffery = new MyNameSpace.Intern("jeffrey");
            jeffery.set_year(3);
            display(jeffery.getDescription());
           
            var vendor = new MyNameSpace.Vendor("lihongxing");
            vendor.set_year(5);
            display(vendor.getDescription());

          
            var hepinghui = new MyNameSpace.FullTimeEmployee("hepinghui");
            hepinghui.set_year(5);
            display(hepinghui.getDescription());

            display(
            MyNameSpace.IEmployee.isImplementedBy(hepinghui));

            var type = MyNameSpace.EmployeeType.toString(jeffery.get_type());
            display(type);
            

            var all = MyNameSpace.MyFlags.All;
            display(MyNameSpace.MyFlags.toString(all));

            display(MyNameSpace.MyFlags.parse("Item1"));

        </script>
    </form>
</body>
</html>
