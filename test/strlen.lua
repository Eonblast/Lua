
function assert(s, l)
	local ll = %s
	if l==ll then
		print("ok: len=" .. ll .. " : " .. s)
	else
		print("failed: len=" .. ll .. " not as expected " .. l .. " for " .. s)
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