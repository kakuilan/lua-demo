-- 其他ningx lua api

--[[
nginx配置
location /lua_other {
    default_type "text/html";
    content_by_lua_file /var/www/lua-demo/test_other.lua;
}

访问
http://lua.loc/lua_other?a=1&b=%E4%BD%A0%E5%A5%BD&c=!
]]--

-- 未经解码的请求uri
local request_uri = ngx.var.request_uri
ngx.say('request_uri:', request_uri, '<br/>')

-- 解码
ngx.say('decode rquest_uri:', ngx.unescape_uri(request_uri), '<br/>')

-- MD5
ngx.say('ngx.md5:', ngx.md5('123'), '<br/>')

-- http time
ngx.say('ngx.http_time:', ngx.http_time(ngx.time()), '<br/>')
