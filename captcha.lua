if ngx.req.get_method() == "POST" then
    ngx.header["Set-Cookie"] = "captcha_solved=true; Path=/; HttpOnly; Max-Age=3600"
    ngx.status = 302
    ngx.header["Location"] = "/"
    ngx.exit(ngx.HTTP_MOVED_TEMPORARILY)
else
    ngx.status = 405
    ngx.say("Method Not Allowed")
    ngx.exit(ngx.HTTP_METHOD_NOT_ALLOWED)
end
