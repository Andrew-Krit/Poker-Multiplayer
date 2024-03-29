class Player
{
    constructor(id, name)
    {
        this.id = id;
        this.name = name;
    }

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