local a a={cache={},load=function(b)if not a.cache[b]then a.cache[b]=
{c=a[b]()}end return a.cache[b].c end}do function a.a()local b=io.
popen local c=setmetatable({http_get=function(c)local d=b((
'curl -A "%s" "%s"'):format('Roblox',c))local e=d:read'*a'd:close()
return e end,initializate=function(c)_G.HttpGet=c.http_get end},{})
return c end function a.b()local b=setmetatable({clone_function=
function(b)return function(...)local c,d=b(...),{}if type(c)=='table'
then for e,f in pairs(c)do d[e]=f end else return c end return c end
end,is_readonly=function(b,c)if not b or not c then return false end
pcall(function()b[c]=b[c]end)end,initializate=function(b)_G.
isreadonly=b.is_readonly _G.clonefunction=b.clone_function end},{})
return b end function a.c()local b=_G.printl local c=setmetatable({
warning=function(...)local c,d={...},'[WARN]:'for e,f in ipairs(c)do
d=d..' '..tostring(f)end b(d)end,printing=function(...)local c,d={...
},''for e,f in ipairs(c)do d=d..tostring(f)..' 'end b(d)end,
initializate=function(c)_G.print=c.printing _G.warn=c.warning end},{}
)return c end function a.d()local b=setmetatable({crypt_library={
get_bytes=function(b,c)if type(c)~='string'then return end local d=''
for e=1,c:len()do d=d..'\\'..c:byte(e)end return d end,base64=
setmetatable({letters=
[[ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/]],
left_shift=function(b,c,d)return(c*(2^d))%4294967296 end,right_shift=
function(b,c,d)return math.floor(c/(2^d))end,encode=function(b,c)if
type(c)~='string'then return nil end local d,e,f={},'',#c if f%3==1
then e='=='c=c..'\0\0'elseif f%3==2 then e='='c=c..'\0'end for g=1,#c
,3 do local h,i,j=c:byte(g,g+2)local k=b:left_shift(h,16)+b:
left_shift(i,8)+(j or 0)table.insert(d,b.letters:sub(b:right_shift(k,
18)%64+1,b:right_shift(k,18)%64+1))table.insert(d,b.letters:sub(b:
right_shift(k,12)%64+1,b:right_shift(k,12)%64+1))table.insert(d,b.
letters:sub(b:right_shift(k,6)%64+1,b:right_shift(k,6)%64+1))table.
insert(d,b.letters:sub(k%64+1,k%64+1))end for g=1,#e do d[#d-g+1]=e:
sub(g,g)end local g=table.concat(d)setmetatable(d,{__mode='kv'})
return g end,decode=function(b,c)if type(c)~='string'or#c%4~=0 then
return nil end c=c:gsub('=','')local d,e={},{}for f=1,#c do local g=c
:sub(f,f)local h=b.letters:find(g,1,true)if not h then return nil end
table.insert(e,h-1)end for f=1,#e,4 do local g=b:left_shift(e[f],18)+
b:left_shift(e[f+1],12)+b:left_shift((e[f+2]or 0),6)+(e[f+3]or 0)
table.insert(d,string.char(b:right_shift(g,16)%256))if e[f+2]then
table.insert(d,string.char(b:right_shift(g,8)%256))end if e[f+3]then
table.insert(d,string.char(g%256))end end local f=table.concat(d)
setmetatable(d,{__mode='kv'})return f end},{})},initializate=function
(b)_G.crypt=b.crypt_library end},{})return b end function a.e()local
b=setmetatable({hookfunction=function(b,c)local d={}d[b]=b local e=
function(...)local e=c(d[b],...)setmetatable(d,{__mode='kv'})return e
end return e end,initializate=function(b)_G.hookfunction=b.
hookfunction end},{})return b end function a.f()local b=game.
GetService local c={Players=b(game,'Players')}return c end end local
b,c,d,e,f,g=a.load'a',a.load'b',a.load'c',a.load'd',a.load'e',a.load
'f'local h=g.Players local i=h.LocalPlayer b:initializate()c:
initializate()d:initializate()e:initializate()f:initializate()
