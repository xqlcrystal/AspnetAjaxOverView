Type.registerNamespace("MyNameSpace");
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
MyNameSpace.Employee.registerClass("MyNameSpace.Employee");


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
    }
}

MyNameSpace.Intern.registerClass("MyNameSpace.Intern", MyNameSpace.Employee);


MyNameSpace.Vendor = function (name) {
    MyNameSpace.Vendor.initializeBase(this, [name]);
}

MyNameSpace.Vendor.prototype = {
    calculateSalary: function () {
        return 5000 + this.get_year() * 1000;
    }
}

MyNameSpace.Vendor.registerClass("MyNameSpace.Vendor", MyNameSpace.Employee);


MyNameSpace.FullTimeEmployee = function (name) {
    MyNameSpace.FullTimeEmployee.initializeBase(this, [name]);
}

MyNameSpace.FullTimeEmployee.prototype = {
    calculateSalary: function () {
        return 15000 + this.get_year() * 2000;
    }
}

MyNameSpace.FullTimeEmployee.registerClass("MyNameSpace.FullTimeEmployee", MyNameSpace.Employee);



