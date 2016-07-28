<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="4_ComplexType.aspx.cs" Inherits="MsdnWebCast_WebSerivce1._4_ComplexType" %>

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
                <asp:ServiceReference Path="~/ComplexType.asmx" />
            </Services>
        </asp:ScriptManager>
        <script type="text/javascript">
            function doubleSalary() {
                var employee = new Object();
                employee.FirstName = "jeffry";
                employee.LastName = "zhao";
                employee.Salary = 4000;
                MsdnWebCast_WebSerivce1.ComplexType.DoubleSalary(employee, onSuccess);
            }

            function reverse(array) {
                MsdnWebCast_WebSerivce1.ComplexType.Reverse(array, function (result) { alert(result); });
            }

            function getemployes() {
                MsdnWebCast_WebSerivce1.ComplexType.GetEmployees(onGetEmployeeSuccess, null);
            }

            function onGetEmployeeSuccess(result) {
                for (var name in result) {
                    alert(name+":"+result[name].Salary);
                }
            }

            function onSuccess(result) {
                alert(result.FullName+result.Salary);
            }
        </script>
        <input type="button" name="comply" value="Double Salary " onclick="doubleSalary();" />
                <input type="button" name="comply2" value="Reverse " onclick="reverse([3,5,8,9]);" />
        <input type="button" name="getemploybutton" value="Get employ" onclick="getemployes();" />
    </div>
    </form>
</body>
</html>
