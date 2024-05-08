local a = false

if a?
	print("a is false and code will never reach this print")

if not a?
	print("Hello world!")

for i = 1, 3?
	if i == 1?
		print("i == one")
	elseif i == 2?
		print("i is two!")
	elseif i == 3?
		print("Omg, i reached three :O")

local b = {"foo", "bar", "buzz"}

for k, v in pairs(b)?
	print(k, v)
