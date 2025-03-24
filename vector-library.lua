local __DARKLUA_BUNDLE_MODULES __DARKLUA_BUNDLE_MODULES={cache={},load=function(
m)if not __DARKLUA_BUNDLE_MODULES.cache[m]then __DARKLUA_BUNDLE_MODULES.cache[m]
={c=__DARKLUA_BUNDLE_MODULES[m]()}end return __DARKLUA_BUNDLE_MODULES.cache[m].c
end}do function __DARKLUA_BUNDLE_MODULES.a()local VectorsUtil=setmetatable({new=
function(x,y,z,setter)x,y,z=x or 0,y or 0,z or 0 if setter then return Vector3(x
,y,z)end local vector_userdata=newproxy(true)local vector_metatable=
getmetatable(vector_userdata)vector_metatable.__index={x=x,y=y,z=z,magnitude=
function(self)return math.sqrt(self.x^2+self.y^2+self.z^2)end,convert=function(
self)return Vector3(self.x,self.y,self.z)end}vector_metatable.__tostring=
function(self)return('Vector3(%s, %s, %s)'):format(self.x,self.y,self.z)end
return vector_userdata end,beautify=function(self,bad_vector)if type(bad_vector)
~='userdata'then return end local vector_string=tostring(bad_vector)local x,y,z=
vector_string:match'Vector3%((%-?[%d%.]+), (%-?[%d%.]+), (%-?[%d%.]+)%)'if not x
or not y or not z then return end local x,y,z=tonumber(x),tonumber(y),tonumber(z
)return self.create(x,y,z)end,cross=function(self,first_vector,second_vector)
return self.create(first_vector.y*second_vector.z-first_vector.z*second_vector.y
,first_vector.z*second_vector.x-first_vector.x*second_vector.z,first_vector.x*
second_vector.y-first_vector.y*second_vector.x)end,normalize=function(self,
vector)local magnitude=vector:magnitude()if magnitude==0 then return self.
create(0,0,0)end return self.create(vector.x/magnitude,vector.y/magnitude,vector
.z/magnitude)end},{})_G.vector={create=VectorsUtil.new,cross=VectorsUtil.cross,
beautify=VectorsUtil.beautify,normalize=VectorsUtil.normalize}return VectorsUtil
end end __DARKLUA_BUNDLE_MODULES.load'a'
