class Node
    def initialize
        @value = nil
        @next_node = nil
    end

    def initialize(value)
        @value = value
        @next_node = nil
    end

    def set_value(value)
        @value = value
    end

    def get_value
        return @value
    end

    def set_next_node(next_node)
        @next_node = next_node
    end

    def get_next_node
        return @next_node
    end
end

class LinkedList
    def initialize
        @head = nil
        @tail = nil
        @size = 0
    end

    #append(value) adds a new node containing value to the end of the list
    def append(value)
        
        @size += 1

        if(@head == nil)
            @head = Node.new(value)
            @tail = @head
        end
        return nil

        @tail.set_next_node(Node.new(value))
        @tail = @tail.get_next_node
        return nil

    end

    #prepend(value) adds a new node containing value to the start of the list
    def prepend(value)
        @size += 1

        if(@head == nil)
            @head = Node.new(value)
            @tail = @head
        end

        new_head = Node.new(value)
        new_head.set_next_node(@head)
        @head = new_head

    end

    #size returns the total number of nodes in the list
    def size
        return @size
    end
    
    #head returns the first node in the list
    def head
        return @head
    end

    #tail returns the last node in the list
    def tail
        return @tail
    end
    #at(index) returns the node at the given index
    def at(index)
        if(@size == 0 || index >= @size || index < 0)
            return nil
        end

        current_node = @head
        while (index > 0) do
            current_node = current_node.get_next_node
            index -= 1
        end

        return current_node
    end

    #pop removes the last element from the list
    def pop
        deleted_node = @tail

        if @size == 0 
            return nil
        elsif @size == 1
            @size = 0
            @head = nil
            @tail = nil
        else
            current_node = @head
            while (current_node.get_next_node != @tail) do
                current_node = current_node.get_next_node
            end

            @tail = current_node
            @tail.set_next_node(nil)
            
            @size -= 1

        end

        return deleted_node
    end

    #contains?(value) returns true if the passed in value is in the list and otherwise returns false.
    def contains?(value)
        if @size == 0
            return false
        end

        current_node = @head
        while (current_node != nil && current_node.get_value != value) do
            current_node = current_node.get_next_node
        end

        return current_node == nil ? false : true
    end

    #find(value) returns the index of the node containing value, or nil if not found.
    def find(value)
        if @size == 0
            return nil
        end

        index = 0
        current_node = @head
        while (current_node != nil && current_node.get_value != value) do
            index += 1
            current_node = current_node.get_next_node
        end

        return current_node == nil ? nil : index

    end

    #to_s represent your LinkedList objects as strings
    def to_s

        string_list = ""
        current_node = @head

        while (current_node != nil) do
            string_list += "( " + current_node.get_value.to_s + " ) -> "
            current_node = current_node.get_next_node
        end

        string_list += "nil"
        return string_list

    end

end

