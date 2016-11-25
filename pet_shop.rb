def pet_shop_name(name)
name = @pet_shop[:name]
return name
end


def total_cash(sum)
sum = @pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(total_cash, cash)
total_cash[:admin][:total_cash] += cash
end

