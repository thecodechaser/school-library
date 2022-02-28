class Person

    def initialize(name = 'Unknown', age, parent_permission = true)
        @id = 
        @name = name
        @age = age

    end

    attr_read :id, :name, :age
    attr_write :name, :age

    def is_of_age?
        if @age >= 18
            return true
        else 
            return false
        end

     def can_use_services?
        if is_of_age || @parent_permission
            return true
        else 
            return false
        end       

    private :is_of_age


end