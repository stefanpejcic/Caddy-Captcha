# Caddy-Captcha
Displays Captcha to suspecious requests - inspired by Imunify360's Webshield


```
yourdomain.com {

    import snippets/captcha-snippet.conf

    handle {
        reverse_proxy localhost:3000
    }

    file_server
}
```
