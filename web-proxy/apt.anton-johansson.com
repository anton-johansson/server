server
{
        listen 80;
        server_name apt.anton-johansson.com;
        location /
        {
                proxy_pass              http://apt-repository;
                proxy_set_header        Host                    apt.anton-johansson.com;
                proxy_set_header        X-Forwarded-For         $remote_addr;
        }
}
