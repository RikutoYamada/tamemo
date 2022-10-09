rikuto = User.create(name: "rikuto", email: "rikuto@gmail.com", password: "rikuto")
mei = User.create(name: "mei", email: "mei@gmail.com", password: "satomei")
food_expense = rikuto.expense_categories.create(name: "食費")
transportation_expense = rikuto.expense_categories.create(name: "交通費")

%w[食料品 外食費 飲み代].each do |name|
  food_expense.children.create(user_id: 1, name: name)
end

%w[電車賃 タクシー代 ガソリン代].each do |name|
  transportation_expense.children.create(user_id: 2, name: name)
end

rikuto.expenses.create(category_id: 3, store: "コンビニ", amount: 500, expended_at: Date.today)
rikuto.expenses.create(category_id: 5, store: "鳥貴族", amount: 3000, expended_at: Date.today)
mei.expenses.create(category_id: 8, store: "コスモ石油", amount: 2500, expended_at: Date.today)
