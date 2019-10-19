-- lua响应

--[[
nginx配置
location /lua_response {
    default_type "text/html";
    content_by_lua_file /var/www/lua-demo/test_response.lua;
}

访问地址,如
http://lua.loc/lua_response
或
wget 'http://lua.loc/lua_response' -O -   

如果失败,可以查看nginx的错误日志
tail - f lua.loc.error.log
]]--

-- 写响应头
ngx.header.a = '1'
-- 多个响应头可以使用table
ngx.header.b = {'2', '3'}

-- 输出响应
ngx.say('a', 'b', '<br/>')
ngx.print('c', 'd', '<br/>')
ngx.say('e', 'f', '<br/>')

-- 200状态码退出
return ngx.exit(200)
