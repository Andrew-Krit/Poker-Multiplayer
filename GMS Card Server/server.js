var dgram = require("dgram");
var server = dgram.createSocket("udp4");
var player = require("./player.js");
const Player = require("./player.js");

var hosts = [];

const messageType =
{
    CREATE_HOST : 0,
    JOIN_HOST : 1,
    STOP_HOST : 2,
    GET_NEW_PLAYERS : 3,

}

server.on('error', (error) => 
{
    console.log('Error occured: ' + error.message);
    server.close();
});

server.on('listening', () =>
{
    const address = server.address();
    console.log('Server is listening on ' + address.address + ":" + address.port); 
}
);

server.on('message', (msg, rinfo) =>
{
    data = JSON.parse(msg);

    switch(data.type)
    {
        case messageType.CREATE_HOST:
            create_host(data, rinfo);
            break;

         case messageType.JOIN_HOST:

            break;

        case messageType.STOP_HOST:
            stop_host(data, rinfo);
            break;

        case messageType.GET_NEW_PLAYERS:
            get_new_players(data, rinfo);
            break;

        default:
            console.log('default message!!!!!');
            break;
    }

});

function get_new_players(data, rinfo)
{

}

function create_host(data, rinfo)
{
    var hostNumber = hosts.length;
    hosts.push(new Player(0,data.username));

    data.hostNumber = hostNumber;
    data.playerNumber = 0;

    server.send(JSON.stringify(data), rinfo.port, rinfo.address);
    console.table(hosts);
}

function stop_host(data, rinfo)
{
    console.log("host stopped!");
    var host_to_stop = hosts.indexOf(data.hostNumber);
    hosts.splice(host_to_stop, 1);
    console.table(hosts);
}

server.bind(8080);