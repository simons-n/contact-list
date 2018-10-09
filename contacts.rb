#Nick Simons
#Final Project

require 'readline'
include Readline

# a Node class for a doubly linked list
class Node
  attr_reader :data, :prev, :next
  def initialize(data)
    @data = data
  end

  def setPrev(node)
    @prev = node
  end

  def setNext(node)
    @next = node
  end
end

# a doubly linked list class
class LinkedList
  attr_reader :head, :tail, :size
  def initialize
    @head = nil
    @tail = nil
    @size = 0
  end

  def add(node)
    if @size == 0
      @head = node
      @tail = node
      @size = @size + 1
    else
      searchForABC(node)
    end
  end
  
  #searches the list for a specific contact based on name and returns the node if found
  def findContact(query)
    curNode = @head
    while curNode != nil
      if curNode.data.name == query
        return curNode
      elsif curNode.next == nil
        return -1
      else
        curNode = curNode.next
      end
    end
  end

  #walks through the list, printing each contact
  def walkthrough
    curNode = @head
    while curNode != nil
      curNode.data.print()
      curNode = curNode.next
    end
  end
  
  #Nodes will always be added to the list in alphabetical order
  def searchForABC(node)
    #find first letter of first name of given contact
    letter = node.data.name[0]
    curNode = @head
    while curNode != nil

      # if the given name comes before curNode in the alphabet
      if letter <= curNode.data.name[0]
        node.setNext(curNode)
        node.setPrev(curNode.prev)
        if curNode.prev != nil
          curNode.prev.setNext(node)
        end
        if @head == curNode
          @head = node
        end
        curNode.setPrev(node)
        @size = @size + 1
        return
      # if the end of the list is reached and the name has not come before any other name in the list
      elsif curNode.next == nil
        node.setPrev(curNode)
        curNode.setNext(node)
        @tail = node
        @size = @size + 1
        return
      else
        curNode = curNode.next
      end
    end
  end

  # finds and prints all contacts with a given relation to the user
  def findRelation(query)
    curNode = @head
    while curNode != nil
      if curNode.data.relation == query
        curNode.data.print
      end
      curNode = curNode.next
    end
  end

  # removes one specific contact from the list based on name
  def remove(query)
    curNode = @head
    while curNode != nil
      if curNode.data.name == query
        if curNode == @head
          if curNode.next != nil
            @head = curNode.next
            curNode.next.prev = nil
            curNode.next = nil
            @size = @size - 1
            return 0
          end
        elsif curNode == @tail
          if curNode.prev != nil
            @tail = curNode.prev
            curNode.prev.setNext(nil)
            curNode.setPrev(nil)
            @size = @size - 1
            return 0
          end
        else
          curNode.prev.setNext(curNode.next)
          curNode.next.setPrev(curNode.prev)
          curNode.setPrev(nil)
          curNode.setNext(nil)
          @size = @size - 1
          return 0
        end
      elsif curNode.next == nil
        return -1
      else
        curNode = curNode.next
      end
    end
  end

end

#Contact class holds the name, phone number, email address, city, and relationship to the user
class Contact
  attr_reader :name, :number, :email, :city, :relation
  def initialize(name, number = 0, email = "none", city = "unknown", relation = "friend")
    if relation != "friend" and relation != "family" and relation != "coworker"
      puts "Relation must be either 'friend' or 'family' or 'coworker'"
      puts "Relation automatically set to friend. You can change it in the future if necessary"
      @name = name
      @number = number
      @email = email
      @city = city
      @relation = "friend"
    else
      @name = name
      @number = number
      @email = email
      @city = city
      @relation = relation
    end
  end

  def setName(newName)
    @name = newName
  end

  def setNumber(newNumber)
    @number = newNumber
  end

  def setEmail(newEmail)
    @email = newEmail
  end

  def setCity(newCity)
    @city = newCity
  end

  def setRelation(newRelation)
    if relation != "friend" and relation != "family" and relation != "coworker"
      puts "Relation must be either 'friend' or 'family' or 'coworker'"
      puts "Relation unchanged. Try again in the future."
    else
      @relation = newRelation
  
    end
  end

  def print
    puts "Name: #@name, Number: #@number, Email: #@email, City: #@city, Relation: #@relation"
  end

end

#usage instructions
def displayInstr
  puts "Type a number to execute the corresponding command:"
  puts "1 - Create a new contact"
  puts "2 - Update an existing contact's info"
  puts "3 - Get all info about an existing contact"
  puts "4 - List all contacts"
  puts "5 - List all friends"
  puts "6 - List all family"
  puts "7 - List all coworkers"
  puts "8 - Remove an existing contact"
  puts "0 - exit"
end

#called if user wishes to edit an existing contact
def displayUpdateInstr
  puts "Type a letter to execute the corresponding command:"
  puts "a - update name"
  puts "b - update number"
  puts "c - update e-mail address"
  puts "d - update relation to you"
  puts "e - update city"
end

def main
  contactList = LinkedList.new
  puts "Welcome to your Address Book"
  displayInstr()
  
  while cmd = readline("Enter a command: ", true)
    if cmd == '0'
      puts "Goodbye!"
      break
    elsif cmd == '1'
      name = readline("Enter a name: ", true)
      number = readline("Enter this person's phone number: ", true)
      email = readline("Enter this person's e-mail address: ", true)
      city = readline("Enter this person's city of residence: ", true)
      relation = readline("Enter this person's relation to you: ", true)
      newCont = Contact.new(name, number, email, city, relation)
      newNode = Node.new(newCont)
      contactList.add(newNode)
      puts "contact successfully added"
      puts
    elsif cmd == '2'
      query = readline("Enter the exact name of the Contact you wish to edit: ", true)
      result = contactList.findContact(query)
      if -1 == result
        puts "The given Contact name could not be found. Please try again."
        puts
        displayInstr()
      else
        displayUpdateInstr()
        editCmd = readline("Type a letter command: ")
        if editCmd == 'a'
          newName = readline("Enter a new name: ")
          result.data.setName(newName)
          puts "Contact updated"
          puts
        elsif editCmd == 'b'
          newNumber = readline("Enter a new number: ")
          result.data.setNumber(newNumber)
          puts "Contact updated"
          puts
        elsif editCmd == 'c'
          newEmail = readline("Enter a new email: ")
          result.data.setEmail(newEmail)
          puts "Contact updated"
          puts
        elsif editCmd == 'd'
          newRel = readline("Enter a new relation: ")
          result.data.setRelation(newRel)
          puts "Contact updated"
          puts
        elsif editCmd == 'e'
          newCity = readline("Enter a new city: ")
          result.data.setCity(newCity)
          puts "Contact updated"
          puts
        else
          puts "Incorrect input."
          puts
        end
      end
    elsif cmd == '3'
      query = readline("Enter the exact name of the Contact you wish to view: ", true)
      result = contactList.findContact(query)
      if -1 == result
        puts "The given Contact name could not be found. Please try again."
        displayInstr()
      else
        result.data.print
        puts
      end
    elsif cmd == '4'
      contactList.walkthrough()
      puts
    elsif cmd == '5'
      contactList.findRelation("friend")
    elsif cmd == '6' 
      contactList.findRelation("family")
    elsif cmd == '7'
      contactList.findRelation("coworker")
    elsif cmd == '8'
      query = readline("Enter the exact name of the contact you wish to remove: ")
      result = contactList.remove(query)
      if -1 == result
        puts "The provided Contact name couldn't be found. Please try again."
        puts
      else 
        puts "The contact was removed successfully."
        puts
      end
    else 
      displayInstr()
    end
  end
end

main()
