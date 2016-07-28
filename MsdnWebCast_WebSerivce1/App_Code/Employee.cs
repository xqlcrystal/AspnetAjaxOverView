using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MsdnWebCast_WebSerivce1.App_Code
{
    public class Employee
    {
        public string FirstName;
        public string LastName;
        public int Salary;

        public string FullName
        {
            get
            {
                return this.FirstName + " " + this.LastName;

            }
        }
    }
}