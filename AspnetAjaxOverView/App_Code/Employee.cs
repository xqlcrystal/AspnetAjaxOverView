using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AspnetAjaxOverView.App_Code
{
    public class Employee
    {
        private String firstname;

        public String Firstname
        {
            get { return firstname; }
            set { firstname = value; }
        }
        private String lastname;

        public String Lastname
        {
            get { return lastname; }
            set { lastname = value; }
        }
        private string title;

        public string Title
        {
            get { return title; }
            set { title = value; }
        }

        public Employee()
        {

        }

        public Employee(string firstname,string lastname,string title)
        {
            this.firstname = firstname;
            this.lastname = lastname;
            this.title = title;

        }
    }
}