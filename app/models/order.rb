class Order < ApplicationRecord
  has_many :items
  has_many :pizza_types, through: :items

  # validates :pizza_type_id,  numericality: { greater_than: 0,less_than_or_equal_to: 5 }
  # validates :quantity, numericality: { greater_than: 0,less_than_or_equal_to: 50 }

  def self.create_order(items)
    @order = Order.new()
    if(items.length > 0)
      @order.save
      items.each do |item|
        Item.create(quantity: item["quantity"] ,pizza_type_id: item["pizza_type_id"], order: @order)
      end #end of loop
    else
      # byebug
        @order.errors.messages[:items]= ["Must have more than one Item in an Order to initialize"];
    end #end of if statement

    if(@order.items.length == 0 )
        @order.delete
        #@order.errors = @order.items.errors
    end

    @order
  end #end of class method


# >> p = Person.create
# # => #<Person id: nil, name: nil>
# >> p.errors.messages
# # => {name:["can't be blank"]}


end
