using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MsdnWebCast_WebSerivce2.ComplexType
{
    public abstract class Employee
    {
        private int _Years;
        public int Years
        {
            get
            {
                return this._Years;
            }
            set
            {
                this._Years = value;
            }
        }

        public string RealStatus
        {
            get
            {
                return this.GetType().Name;
            }
        }

        public abstract int CalculateSalary();
    }

    public class Intern : Employee
    {
        public override int CalculateSalary()
        {
            return 2000;
        }
    }

    public class Vendor : Employee
    {
        public override int CalculateSalary()
        {
            return 5000 + 1000 * (Years - 1);
        }
    }

    public class FulltimeEmployee : Employee
    {
        public override int CalculateSalary()
        {
            return 15000 + 2000 * (Years - 1);
        }
    }
}