for i = 0, 2 do
	switch i
		case 1 do
			print(i, "foo")
		end

		case 2 do
			print(i, "baz")
		end
	
		default
			print(i, "bar")
		end
	end
end

print("Hello world!")
