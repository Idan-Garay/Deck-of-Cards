void main() {
  Deck deck = new Deck();
   
  deck.printCards();
  print("\nshuffling cards...\n");
  deck.shuffle();
  deck.printCards();
  print("\nFinding cards with a certain suit(Spades)...\n");
  deck.cardsWithSuit('Spades');
}

class Card {
  String rank;
  String suit;
  
  Card(this.rank, this.suit);
  
  @override
  String toString() => "$rank of $suit";
  
}

class Deck {
  List<Card> cards = [];
  
  Deck() {
    newDeck();
  }
  
  void newDeck() {
    List<String> suits = ['Diamonds', 'Hearts', 'Clubs', 'Spades'];
    List<String> ranks = ['Ace', 'Two', 'Three', 'Four', 'Five', 'Six', 'Seven', 'Eight', 'Nine', 'Jack', 'Queen', 'King'];
    
    for (var suit in suits) {
      for (var rank in ranks) {
        cards.add(new Card(rank, suit));
      }
    }
  }
  
  void printCards() {
    for (var card in cards) {
      print(card.toString());
    }
  }
  
  void shuffle() {
    cards.shuffle();
  }
  
  void cardsWithSuit(String suit) {
    cards.where((card) => card.suit == suit).forEach( (card) => {print(card.toString())});
    // or print(cards.where((card) => card.suit == suit).toString());
  }
  
}
