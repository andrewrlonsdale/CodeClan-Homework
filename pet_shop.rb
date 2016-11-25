def pet_shop_name(name)
name = @pet_shop[:name]
return name
end


def total_cash(sum)
sum = @pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(cash, total_cash)
total_cash = @pet_shop[:admin][:total_cash] += 10
cash = total_cash
end
