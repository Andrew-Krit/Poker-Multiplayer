class Player
{
    constructor(id, name)
    {
        this.id = id;
        this.name = name;
    }
    cards = [];

    getInfo()
    {
        return {id: this.id, name: this.name};
    }

    drawCard(card)
    {
        this.cards.push(card);
    }
}

module.exports = Player;