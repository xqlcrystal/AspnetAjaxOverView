function throwError() {
    throw new Error("Customer Error");
}

function getNiceError() {
    var e = Error.create("Error Message",
		{ customMessage: "Custom Message" });

    //e.popStackFrame();
    return e;
}