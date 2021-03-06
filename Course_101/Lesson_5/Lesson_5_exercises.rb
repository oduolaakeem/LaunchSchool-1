arr = ['10', '11', '9', '7', '8']

arr.sort do |a,b|
  b.to_i <=> a.to_i
end



books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysees', author: 'James Joyce', published: '1922'}
]
#sort array of hashes based on year of publication of each book
books.sort_by do |book|
  book[:published]
end


arr1 = ['a', 'b', ['c', ['d', 'e', 'f', 'g']]]

arr1[2][1][3]

arr2 = [{first: ['a', 'b', 'c'], second: ['d', 'e', 'f']}, {third: ['g', 'h', 'i']}]

arr2[1][:third][0]

arr3 = [['abc'], ['def'], {third: ['ghi']}]

arr3[2][:third][0][0]

hsh1 = {'a' => ['d', 'e'], 'b' => ['f', 'g'], 'c' => ['h', 'i']}

hsh1['b'][1]


hsh2 = {first: {'d' => 3}, second: {'e' => 2, 'f' => 1}, third: {'g' => 0}}

hsh2[:third].key(0)


#change the 3 to a 4
arr1 = [1, [2, 3], 4]

arr1[1][1] = 4

p arr1


arr2 = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]

arr2[2] = 4

p arr2


hsh1 = {first: [1, 2, [3]]}

hsh1[:first][2][0] = 4


hsh2 = {['a'] => {a: ['1', :two, 3], b: 4}, 'b' => 5}

hsh2[['a']][:a][2] = 4

#figure out total age for the male members of the family
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

total_age = 0 

munsters.each_value do |v|
  total_age += v["age"] if v["gender"] == "male"
end

total_age


munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}


munsters.each do |name, details|
  puts "#{name} is a #{details['age']} year old #{details['gender']}"
end

# a = 

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

vowels = 'aeiou'

hsh.each do |_, v|
  value.each do |str|
    str.chars.each do |char| 
      puts char if vowels.include?(char)
    end
  end
end


arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

arr.each do |val|
  val.sort! { |a, b| b <=> a}
  arr
  end

arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

arr.map do |item|
  new_hash = {}
  item.each do |k, v|
    new_hash[k] = v + 1
  end
  new_hash
end
arr

arr = [[2], [3, 5, 7], [9], [11, 13, 15]]


arr.map do |item|
  item.select do |num|
    num % 3 == 0
  end
end


arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]

new_hash = {}

arr.each do |item|
  new_hash[item[0]] = item[1]
end
new_hash


arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

arr.sort_by do |item|
  item.select do |num|
    num.odd?
  end
end


hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

detailed_array = []

hsh.values.each do |v|
  if v[:type] == 'fruit' 
    v[:colors].map do |color|
      color.capitalize
    end
    detailed_array << v[:colors]
  elsif v[:type] == 'vegetable'
    detailed_array << v[:size].upcase
  end
end
detailed_array

    
hsh.map do |_, value|
  if value[:type] == 'fruit'
    value[:colors].map do |color|
      color.capitalize
    end
  elsif value[:type] == 'vegetable'
    value[:size].upcase
  end
end



arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]


arr.select do |item|
  item.all? do |_, v|
    v.all? do |num|
      num.even?
    end
  end
end 
arr


def uuid
  SecureRandom.hex(32)
end

#Write a method that returns one UUID when called with no parameters.


def generate_UUID
  characters = []
  (0..9).each { |digit| characters << digit.to_s }
  ('a'..'f').each { |digit| characters << digit }

  uuid = ""
  sections = [8, 4, 4, 4, 12]
  sections.each_with_index do |section, index|
    section.times { uuid += characters.sample }
    uuid += '-' unless index >= sections.size - 1
  end

  uuid
end

























