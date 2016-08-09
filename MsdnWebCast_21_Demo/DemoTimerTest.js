var app = Sys.Application;
app.add_init(applicationInithandler);

function applicationInithandler() {
    $create(Demo.Timer,
        {
            enabled: true,
            id: "timer1",
            interval: 2000
        },
        {
            tick: ontick
        },
        null
        );
}
count = 0;
function ontick() {
    document.getElementById("info").innerHTML = count++;
}