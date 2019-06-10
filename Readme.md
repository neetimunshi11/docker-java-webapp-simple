## Simple Java Application with NGINX Load Balancer

This repository contains a simple java web application that would just print IP address and hostname of  container .

To Run this demo you need:

1.  Docker CE (Supported on both Windows 10 PRO & Linux)
2.  docker-compose 

## How to run ? Just Simple command:

    $ docker-compose up -d --scale app=3

This would launch THREE instances of my java application, behind a NGINX Load-balancer that would be listening on port 8000.
You can access application using URL:

    > http://localhost:8000

Just keep refreshing you browser page to get response from three different container instances.

> Wants to know NGINX configuration, [click here](nginx.conf)

> Wants to know deployment ? [click here](docker-compose.yaml)

>And, Do you want to know how I built a java web application container? [click here](Dockerfile)