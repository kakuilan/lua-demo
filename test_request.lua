-- 结合ningx使用lua
--[[
nginx配置
location ~ /lua_request/(\d+)/(\d+) {  
    #设置nginx变量  
    set $a $1;   
    set $b $host;  
    default_type "text/html";  
    #nginx内容处理  
    content_by_lua_file /var/www/lua-demo/test_request.lua;  
    #内容体处理完成后调用  
    echo_after_body "ngx.var.b $b";  
}

访问地址,如
http://lua.loc/lua_request/2/3?c=hello&d=world&e=45

注意:修改当前lua脚本后,必须重启nginx
]]--

-- nginx变量
local var = ngx.var
ngx.say("ngx.var.a:", var.a, "<br/>")
ngx.say("ngx.var.b:", var.b, "<br/>")
ngx.say("ngx.var[2]:", var[2], "<br/>")
ngx.var.b = 2;
ngx.say("<br/><hr/>")

-- 请求头
local headers = ngx.req.get_headers()
ngx.say("headers begin:", "<br/>")
ngx.say("Host:", headers['Host'], "<br/>")
ngx.say("user-agent:", headers['user_agent'], "<br/>")
ngx.say("user-agent:", headers.user_agent, "<br/>")
for k, v in pairs(headers) do
    if type(v) == 'table' then
        ngx.say(k, ' : ', table.concat(v, ','), '<br/>')
    else
        ngx.say(k, ' : ', v, '<br/>')
    end
end
ngx.say('headers end', '<br/>')
ngx.say("<br/><hr/>")

-- get请求参数
ngx.say('uri args begin:', '<br/>')
local uri_args = ngx.req.get_uri_args()
for k, v in pairs(uri_args) do
    if type(v) == 'table' then
        ngx.say(k, ' : ', table.concat(v, ','), '<br/>')
    else
        ngx.say(k, ' : ', v, '<br/>')
    end
end
ngx.say('uri args end', '<br/>')
ngx.say("<br/><hr/>")

-- post请求参数
ngx.req.read_body()
ngx.say('post args begin:', '<br/>')
local post_args = ngx.req.get_post_args()
for k, v in pairs(post_args) do
    if type(v) == 'table' then
        ngx.say(k, ' : ', table.concat(v, ','), '<br/>')
    else
        ngx.say(k, ' : ', v, '<br/>')
    end
end
ngx.say('post args end', '<br/>')
ngx.say("<br/><hr/>")

-- 请求的http协议版本
ngx.say('ngx.req.http_verson:', ngx.req.http_version(), '<br/>')

-- 请求方法
ngx.say('ngx.req.get_method:', ngx.req.get_method(), '<br/>')

-- 原始的请求头内容
ngx.say('ngx.req.raw_header:', ngx.req.raw_header(), '<br/>')

-- 请求的body内容体
ngx.say('ngx.req.get_body_data:', ngx.req.get_body_data(), '<br/>')
ngx.say("<br/>")
