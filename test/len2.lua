
function assert(t, a)
	local b = #t
	if a==b then
		print("ok: #t=" .. a.. " " .. listed(t))
	else
		print("failed: #t= " .. b .. " not as expected: " .. a .. " " .. listed(t))
	end
end

function listed(t)
  local i = 0
  local s = "( "
  for k,v in pairs(t) do
  	s = s .. k .. ":" .. v .. " "
  end
  return s  .. ")"
end

print ("---------------------------------------------------")

t = {}
t[1] = 'foo'
t[2] = nil
t[3] = 'bar'
assert(t, 2)


