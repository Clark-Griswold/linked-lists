class LinkedList2
  attr_accessor  :value, :next_node 

  def initialize(value, next_node=nil)
    @next_node = next_node
    @value = value
  end
end

  def reverse_list(list, previous_node=nil)
    
      a_node = list.next_node
      list.next_node = previous_node
      
      if a_node
        reverse_list(a_node, list)
     
      else
         list
      end     
  end

    def print_values (list_node)
      if list_node
        print "#{list_node.value} --> "
        print_values (list_node.next_node)
       else
        print "nil\n"
        return
      end
    end

def infinite_loop?(list)
  tortoise = list.next_node
  hare = list.next_node

  until hare.nil?
    hare = hare.next_node
    return false if hare.nil?

    hare = hare.next_node
    tortoise = tortoise.next_node
    return true if hare == tortoise
  end

  return false
end

node1 = LinkedList2.new(35)
node2 = LinkedList2.new(99, node1)
node3 = LinkedList2.new(65, node2)
node4 = LinkedList2.new(11, node3)
node5 = LinkedList2.new(44, node4)
   
  

  print_values(node5)
  puts "------------------------"
  #revlist = reverse_list(node5)
  #print_values(revlist)
  node1.next_node = node5 # creates an infinite loop
  puts infinite_loop?(node5)