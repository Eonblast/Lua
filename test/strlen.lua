
function assert(s, l, p)
	local ll = %s
	if p == nil then p = s end
	if l==ll then
		print("ok: len=" .. ll .. " : " .. p)
	else
		print("failed: len=" .. ll .. " not as expected " .. l .. " for " .. p)
	end
end


assert("", 0)
assert(" ", 1)
assert("Q", 1)
assert("Room", 4)
assert("Tür", 3)
assert("Dûnedaín", 8)
assert("Stößel", 6)
assert("Fu∂ark", 6)
assert("«∑€®†Ω", 6)
assert("黃耀賢 (Yau-Hsien Huang)", 21)

print("Reading sample file")

io.input("test/utf-8.txt", "br")
t = io.read("*all")
assert(t, 37077, "long UTF-8 text")