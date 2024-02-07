var data;
var players = [];
var deck = [];

const msgType = 
{
    CREATE_HOST : 0,
    JOIN_HOST : 1,
    STOP_HOST : 2,
    SET_CARD_STAT : 3
}

server.on("connection", function (msg, rinfo) 
{
    console.log()
    data = JSON.parse(msg);
    switch(data.type)
    {
        case msgType.SET_CARD_STAT:
            set_card_stat(data,rinfo);
            break;

        case msgType.CREATE_HOST:
            create_host(data,rinfo);
            break;

        default:
            break;
    }

});

function set_card_stat(data, rinfo)
{
    buildDeck();
    shuffleDeck();
    dealCards(data, rinfo);

    console.log(JSON.stringify(data));
    server.send(JSON.stringify(data), rinfo.port, rinfo.address);
}

function create_host(data, rinfo)
{
    var hostNumber = hosts.length;
    
    data.hostNumber = hostNumber;
    data.playerNumber = 0;

    server.send(JSON.stringify(data), rinfo.port, rinfo.address);

    console.table(hosts);
}

function buildDeck()
{
    var values = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"];
    var types = ["Clubs", "Diamonds", "Hearts", "Spades"];
    deck = [];

    for(var i = 0; i < types.length; i++)
    {
        for(var j = 0; j < values.length; j++)
        {
            deck.push(values[j] + "-" + types[i]);
        }
    }


}

function shuffleDeck()
{
    for(var i = 0; i < deck.length; i++)
    {
        var j = Math.floor(Math.random() * deck.length);
        var temp = deck[i];
        deck[i] = deck[j];
        deck[j] = temp;
    }
}

function dealCards(data, rinfo)
{
    var cards = Array();

    for(var j = 0; j < 2; j++)
    {
        cards.push(deck.pop());
    }

    data.cards = JSON.stringify(cards);
}