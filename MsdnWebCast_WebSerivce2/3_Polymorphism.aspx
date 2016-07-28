<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="3_Polymorphism.aspx.cs" Inherits="MsdnWebCast_WebSerivce2._3_Polymorphism" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="sm1" runat="server">
        <Services>
            <asp:ServiceReference Path="~/EmployeeService.asmx" />
        </Services>
    </asp:ScriptManager>
    <div>
    Years:<input type="text" id="txtYears"  />
    </div>
        <div>
            Status:
            <select id="comboStatus">
                <option value="MsdnWebCast_WebSerivce2.ComplexType.Intern">Intern</option>
                 <option value="MsdnWebCast_WebSerivce2.ComplexType.Vendor">Vendor</option>
                 <option value="MsdnWebCast_WebSerivce2.ComplexType.FulltimeEmployee">FulltimeEmployee</option>
            </select>
        </div>
        <input type="button" name="calc" value="calculator! " onclick="calculatorSalory();" />
        <script type="text/javascript">
            function calculatorSalory() {
                //var emp = new Object();
                //emp.__type = $get("comboStatus").value;
                var emp = null;
                var combo = $get("comboStatus");
                switch (combo.options[combo.selectedIndex].text) {
                    case "Intern":
                        emp = new MsdnWebCast_WebSerivce2.ComplexType.Intern();
                        break;
                    case "Vendor":
                        emp = new MsdnWebCast_WebSerivce2.ComplexType.Vendor();
                        break;
                    case "FulltimeEmployee":
                        emp = new MsdnWebCast_WebSerivce2.ComplexType.FulltimeEmployee();
                        break;
                    default:

                }
                emp.Years = parseInt($get("txtYears").value,10);
                MsdnWebCast_WebSerivce2.EmployeeService.CalculateSalary(emp, onsuccess);
            }

            function onsuccess(result) {
                alert(result);
            }
        </script>
    </form>
</body>
</html>
