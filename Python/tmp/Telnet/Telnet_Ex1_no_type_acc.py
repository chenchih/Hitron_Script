#!/usr/bin/env python
# -*- coding: utf-8 -*-
# Author Rongzhong Xu 2016-08-25 wechat: pythontesting
"""
Name: telnet_demo.py

Tesed in python3.5
"""
import telnetlib

HOST = "192.168.1.253"
user = "root"
password = "arrisc4"


def command(con, flag, str_=""):
    data = con.read_until(flag.encode())
    print(data.decode(errors='ignore'))
    con.write(str_.encode() + b"\n")
    return data

tn = telnetlib.Telnet(HOST)
command(tn, "Login:", user)
if password:
    command(tn, "Password:", password)
command(tn, "#", "en")
#command(tn, "$", " exit")
#command(tn, "$", "")
tn.close()