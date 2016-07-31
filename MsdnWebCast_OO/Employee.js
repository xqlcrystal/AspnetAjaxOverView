Type.registerNamespace("MyNameSpace");

MyNameSpace.EmployeeType = function () {
    throw Error.notImplemented();
}
MyNameSpace.EmployeeType.prototype = {
    Intern: 0,
    Vendor: 1,
    FullTimeEmployee: 2
}

MyNameSpace.EmployeeType.registerEnum("MyNameSpace.EmployeeType");

MyNameSpace.IEmployee = function () {
    throw Error.notImplemented();
}

MyNameSpace.IEmployee.prototype = {
    calculateSalary: function () {
        throw Error.notImplemented();
    },
    get_type: function () {
        throw Error.notImplemented();
    }
}

MyNameSpace.IEmployee.registerInterface("MyNameSpace.IEmployee");





MyNameSpace.Employee = function (name) {
    this._name = name ? name : "{ananymous}";
    this._year = 0;
}

MyNameSpace.Employee.prototype = {
    get_name: function () {
        return this._name;
    },

    get_year: function () {
        return this._year;
    },

    set_year: function (value) {
        this._year = value;
    },

    calculateSalary: function () {
        throw Error.notImplemented();
    },

    getDescription: function () {
        return String.format("{0} get {1} yuan per month",
            this._name,
            this.calculateSalary());
    }
}
MyNameSpace.Employee.registerClass("MyNameSpace.Employee", null, MyNameSpace.IEmployee);


MyNameSpace.Intern = function (name) {
    MyNameSpace.Intern.initializeBase(this, [name]);
}

MyNameSpace.Intern.prototype = {
    calculateSalary: function () {
        return 2000;
    },

    getDescription: function () {
        var description = MyNameSpace.Intern.callBaseMethod(this, "getDescription");
        return description += "what a poor inten";
    },
    get_type: function () {
        return MyNameSpace.EmployeeType.Intern;
    }
}

MyNameSpace.Intern.registerClass("MyNameSpace.Intern", MyNameSpace.Employee, MyNameSpace.IEmployee);


MyNameSpace.Vendor = function (name) {
    MyNameSpace.Vendor.initializeBase(this, [name]);
}

MyNameSpace.Vendor.prototype = {
    calculateSalary: function () {
        return 5000 + this.get_year() * 1000;
    },
    get_type: function () {
        return MyNameSpace.EmployeeType.Vendor;
    }
}

MyNameSpace.Vendor.registerClass("MyNameSpace.Vendor", MyNameSpace.Employee, MyNameSpace.IEmployee);


MyNameSpace.FullTimeEmployee = function (name) {
    MyNameSpace.FullTimeEmployee.initializeBase(this, [name]);
}

MyNameSpace.FullTimeEmployee.prototype = {
    calculateSalary: function () {
        return 15000 + this.get_year() * 2000;
    },
    get_type: function () {
        return MyNameSpace.EmployeeType.FullTimeEmployee;
    }
}

MyNameSpace.FullTimeEmployee.registerClass("MyNameSpace.FullTimeEmployee", MyNameSpace.Employee, MyNameSpace.IEmployee);

MyNameSpace.MyFlags = function () {
    throw Error.notImplemented();
}

MyNameSpace.MyFlags.prototype = {
    Item1: 1,
    Item2: 2,
    Item3: 4,
    None: 0,
    All:7
}

MyNameSpace.MyFlags.registerEnum("MyNameSpace.MyFlags");



