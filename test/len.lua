
function assert(t, a)
	local b = %t
	if a==b then
		print("ok: len t=" .. a.. " " .. listed(t))
	else
		print("failed: len t= " .. b .. " not as expected: " .. a .. " " .. listed(t))
	end
end

function listed(t)
  local i = 0
  local s = "( "
  for k,v in pairs(t) do
  	if type(v)=='table' then v=listed(v) end 
  	s = s .. k .. ":" .. v .. " "
  end
  return s  .. ")"
end


t = {  }
assert(t, 0)

t = {  nil, nil }
assert(t, 0)

t = {  nil, nil, nil }
assert(t, 0)

t = {  nil, 'foo', nil }
assert(t, 1)

t = { 'foo' }
assert(t, 1)

t = {  nil, 'foo' }
assert(t, 1)

t = {  'foo', nil }
assert(t, 1)

t = {  nil, 'foo', nil }
assert(t, 1)

t = {  nil, nil, 'foo' }
assert(t, 1)

t = {  'foo', nil, nil }
assert(t, 1)

t = {  nil, nil, 'foo', nil , nil }
assert(t, 1)

t = { 'foo', 'too', nil }
assert(t, 2)

t = { 'foo', 'too', nil, nil }
assert(t, 2)

t = { 'foo', 'too', 'bar' }
assert(t, 3)

t = { nil, 'too', 'bar' }
assert(t, 2)

t = { nil, nil, 'too', 'bar' }
assert(t, 2)

t = { nil, nil, 'too', 'bar', nil, nil }
assert(t, 2)

t = { nil, 'too', nil, 'bar' }
assert(t, 2)

t = { nil, nil, 'too', nil, 'bar' }
assert(t, 2)

t = { nil, nil, 'too', nil, 'bar', nil, nil }
assert(t, 2)

t = { nil, 'too', nil, nil, 'bar' }
assert(t, 2)

t = { nil, nil, 'too', nil, nil, 'bar' }
assert(t, 2)

t = { nil, nil, 'too', nil, nil, 'bar', nil, nil }
assert(t, 2)

t = { 'foo', nil, 'bar' }
assert(t, 2)

t = { 'foo', nil, nil, 'bar' }
assert(t, 2)

t = { 'foo', 'too', 'bar' }
assert(t, 3)

t = { 'foo', 'too', 'bar', nil }
assert(t, 3)

t = { 'foo', 'too', 'bar', nil, nil }
assert(t, 3)

t = { 'foo', 'too', 'bar', nil, nil, nil }
assert(t, 3)

t = { nil, 'foo', 'too', 'bar' }
assert(t, 3)

t = { nil, nil, 'foo', 'too', 'bar' }
assert(t, 3)

t = { nil, nil, nil, 'foo', 'too', 'bar' }
assert(t, 3)

t = { nil, 'foo', nil, 'too', 'bar' }
assert(t, 3)

t = { nil, nil, 'foo', nil, 'too', 'bar' }
assert(t, 3)

t = { nil, nil, nil, 'foo', nil, 'too', 'bar' }
assert(t, 3)

-- # # # # # # # # # # # # # # # # # # # # # # # # #

t = {}
t[1] = 'foo'
t[2] = nil
t[3] = 'bar'
assert(t, 2)


t = {}
t[1] = 'foo'
t[2] = 'too'
t[3] = 'bar'
assert(t, 3)


t = {}
t[1] = nil
t[2] = nil
t[3] = 'bar'
assert(t, 1)


t = {}
t[1] = 'foo'
t[2] = nil
t[3] = nil
assert(t, 1)


t = {}
t[1] = nil
t[2] = 'too'
t[3] = 'bar'
assert(t, 2)


-- # # # # # # # # # # # # # # # # # # # # # # # # #

t = {}
t[1] = 'foo'
t[2] = 'too'
t[3] = 'bar'
t[1] = nil
assert(t, 2)


t = {}
t[1] = 'foo'
t[2] = 'too'
t[3] = 'bar'
t[2] = nil
assert(t, 2)


t = {}
t[1] = 'foo'
t[2] = 'too'
t[3] = 'bar'
t[3] = nil
assert(t, 2)


t = {}
t[1] = 'foo'
t[2] = 'too'
t[3] = 'bar'
t[4] = nil
assert(t, 3)

t = {}
t[1] = 'foo'
t[2] = 'too'
t[3] = 'bar'
t[0] = nil
assert(t, 3)

-- # # # # # # # # # # # # # # # # # # # # # # # # #


t = {}
t[0] = 'foo'
t[1] = nil
t[2] = 'bar'
assert(t, 2)


t = {}
t[0] = 'foo'
t[1] = 'too'
t[2] = 'bar'
assert(t, 3)


t = {}
t[0] = nil
t[1] = nil
t[2] = 'bar'
assert(t, 1)


t = {}
t[0] = 'foo'
t[1] = nil
t[2] = nil
assert(t, 1)


t = {}
t[0] = nil
t[1] = 'too'
t[2] = 'bar'
assert(t, 2)


-- # # # # # # # # # # # # # # # # # # # # # # # # #


t = {}
t[-1] = 'foo'
t[0] = nil
t[2] = 'bar'
assert(t, 2)


t = {}
t[-1] = 'foo'
t[0] = 'too'
t[1] = 'bar'
assert(t, 3)


t = {}
t[-1] = nil
t[0] = nil
t[1] = 'bar'
assert(t, 1)


t = {}
t[-1] = 'foo'
t[0] = nil
t[1] = nil
assert(t, 1)


t = {}
t[-1] = nil
t[0] = 'too'
t[1] = 'bar'
assert(t, 2)


-- # # # # # # # # # # # # # # # # # # # # # # # # #

t = {}
t[0] = 'foo'
t[1] = 'too'
t[2] = 'bar'
t[0] = nil
assert(t, 2)


t = {}
t[0] = 'foo'
t[1] = 'too'
t[2] = 'bar'
t[1] = nil
assert(t, 2)


t = {}
t[0] = 'foo'
t[1] = 'too'
t[2] = 'bar'
t[2] = nil
assert(t, 2)


t = {}
t[0] = 'foo'
t[1] = 'too'
t[2] = 'bar'
t[3] = nil
assert(t, 3)

t = {}
t[0] = 'foo'
t[1] = 'too'
t[2] = 'bar'
t[-1] = nil
assert(t, 3)


-- # # # # # # # # # # # # # # # # # # # # # # # # #

t = {{3, 0}, {10, 24.3}, {27, 32.1}, {49, -45}; color="red"}
assert(t, 5)

t[1] = nil
assert(t, 4)


t[1] = nil
assert(t, 4)


t[2] = nil
assert(t, 3)


t[3] = nil
assert(t, 2)

t[4] = nil
assert(t, 1)

t[1] = nil
assert(t, 1)

t[2] = nil
assert(t, 1)

t['color'] = nil
assert(t, 0)

t[2] = nil
assert(t, 0)



-- # # # # # # # # # # # # # # # # # # # # # # # # #

t = {{3, 0}, nil, {10, 24.3}, {27, 32.1}, {49, -45}; color="red"}
assert(t, 5)

t[1] = nil
assert(t, 4)


t[1] = nil
assert(t, 4)


t[2] = nil
assert(t, 4)


t[3] = nil
assert(t, 3)

t[4] = nil
assert(t, 2)

t[1] = nil
assert(t, 2)

t[2] = nil
assert(t, 2)

t['color'] = nil
assert(t, 1)

t[5] = nil
assert(t, 0)


-- # # # # # # # # # # # # # # # # # # # # # # # # #

t = {{3, 0}, nil, {10, 24.3}, {27, 32.1}, {49, -45}, color="red", nil }
assert(t, 5)

t[8] = nil
assert(t, 5)

t[7] = nil
assert(t, 5)

t[2] = nil
assert(t, 5)

t[-1] = nil
assert(t, 5)

t[0] = nil
assert(t, 5)

t[-1] = nil
assert(t, 5)

t[1] = nil
assert(t, 4)


t[1] = nil
assert(t, 4)


t[2] = nil
assert(t, 4)


t[3] = nil
assert(t, 3)

t[4] = nil
assert(t, 2)

t[1] = nil
assert(t, 2)

t[2] = nil
assert(t, 2)

t['color'] = nil
assert(t, 1)

t[5] = nil
assert(t, 0)

