<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebServiceAccess.aspx.cs" Inherits="AspnetAjaxOverView.WebServiceAccess" %>

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
                <asp:ServiceReference Path="~/EmployeeService.asmx" />
            </Services>
        </asp:ScriptManager>
          <script type="text/javascript">
              function showEmployee(firstname, lastname, title) {
                  AspnetAjaxOverView.EmployeeService.GetEmployee(firstname, lastname, title, onsuccess, null);
              }

              function onsuccess(employee) {
                 
                     
                      alert(String.format("{0},{1},{2}", employee.Firstname, employee.Lastname, employee.Title));
                 
              }
        </script>
        <input type="button" name="bill" value="show bill" onclick="showEmployee('bill', 'Gate', 'chireman');" />
    </div>
    </form>
</body>
</html>
