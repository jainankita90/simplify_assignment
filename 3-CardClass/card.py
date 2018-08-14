#!/usr/bin/env python

from card_const import CardConst

class Card(object):
  """ Card class to create object card with attributes as
    - suit
    - rank
    - color
  """
  def __init__(self, suit, rank):  
    """
    Constructor to create Card Object
    Takes input are as rank and suit of type Enums
    and initialize Card members with rank suit and color
    if the args are not enum type then throws TypeError
    Th
    """
    if not isinstance(rank, CardConst.Rank):
      raise TypeError('rank must be an instance of Rank Enum')
    if not isinstance(suit, CardConst.Suit):
      raise TypeError('suit must be an instance of Suit Enum')
    self.__suit = suit
    self.__rank = rank
    # color can be decided by suit
    if self.__suit in [CardConst.Suit.CLUB,CardConst.Suit.SPADE]:
        self.__color = CardConst.Color.BLACK
    else:
        self.__color = CardConst.Color.RED

  def __str__(self):
    """
    This method with overwrite existing str method for card class
    """
    return '%s of %s' % (self.__rank.name ,self.__suit.name)

  def __cmp__(self, other_card):
    """
    Compares card on basis of suit and rank
    first compare suit, if suit is different then return
    if suit are same then compare rank of card
    return 1, 0, -1
    return -1 str1 < str2
    return 1 str1 > str2
    return 0 str1 = str2
    """
    c1 = self.__suit.value, self.__rank.value
    c2 = other_card.__suit.value, other_card.__rank.value
    return cmp(c1, c2)

  @property
  def get_rank(self):
    # returns rank of class as enum 
    return self.__rank

  @property
  def get_suit(self):
    # returns suit of class as enum 
    return self.__suit

  @property
  def get_color(self):
    # returns color of class as enum 
    return self.__color




