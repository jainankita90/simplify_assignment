from enum import Enum
# All constants  related to Card 

class CardConst:
  # Suit  of all four types
  class Suit(Enum):
    CLUB = 1
    DAIMOND = 2
    HEART = 3
    SPADE = 4
  
  # Ranks of cards with 2 is lowest and 14 as highest
  class Rank(Enum):
    TWO = 2
    THREE = 3
    FOUR = 4
    FIVE = 5
    SIX = 6
    SEVEN = 7 
    EIGHT = 8
    NINE = 9
    TEN = 10
    JACK = 11
    QUEEN = 12
    KING = 13
    ACE = 14
  
  # Colrs can be either red or black
  class Color(Enum):
    RED = 1
    BLACK = 2
