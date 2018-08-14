# Problem 2: Implement Card Class  for deck of playing cards

This code provides implementation to create **card**  class using oops concept 
## Files

- **card.py**
- **card_const.py**

## How to run
 pip install 

   
    $ pip install enum34
    $ python card.py
    $python
    from card_const import CardConst
    from card import Card
    c1 = Card(CardConst.Suit.CLUB, CardConst.Rank.TWO)
    c2 = Card(CardConst.Suit.CLUB, CardConst.Rank.ACE)
    print c1
    print c2
    print cmp(c1,c2)
    
## Sample Execution

    
    $ python 
    Python 2.7.14 (default, Mar 22 2018, 15:04:47)
    [GCC 4.2.1 Compatible Apple LLVM 9.0.0 (clang-900.0.39.2)] on darwin
    Type "help", "copyright", "credits" or "license" for more information.
    >>>from card_const import CardConst
    >>> from card import Card
    >>> c1 =  Card(CardConst.Suit.SPADE, CardConst.Rank.TWO)
    >>> print c1
    TWO of SPADE








