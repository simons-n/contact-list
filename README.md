# Contact List (and other assorted Ruby fun)
---
_Nick Simons_

The assorted files in this repository serve as various experiments in understanding Ruby -- from its inheritance rules to its scope.  Most important of these files is _contacts.rb_, which is a simple address book program interacted with through the command line.  This README will focus on contacts.rb, but feel free to look at and try out any of the other files in this repository.

---
### A Bit More About the Contact List Program
With contacts.rb, I sought to utilize and explore the object-oriented nature of Ruby.  The important objects in this program include, but are not limited to, but not limited to, Contacts themselves, Nodes, and the doubly linked List to hold the contacts.  Unfortunately, this project does not include a backend -- meaning that your contacts will not be stored between sessions of the program.  This may seem to defeat the purpose of a contact list, but the real motivation behind this project was to test out and employ some of the super-cool features that Ruby offers.  A more fleshed-out version of this project would include not only a backend for storing users' contacts, but also a GUI for more user-friendly interaction than the command line.

### Usage
Using this Contact List is quite simple.

1. Type 'ruby contacts.rb' at the command prompt.  This should run the program immediately.
```
$ ruby contacts.rb
```
2. Follow the instructions provided in the program.  You may exit by typing 0.
   You may also add contacts, update existing contacts, remove contacts, and print out lists of your contacts based on their categories.
--------------------------------------------------------------------------------

### Credits:
Special thanks to Dr. Benoit Razet, who taught Programming Language Design in Bucknell University's Department of Computer Science.
