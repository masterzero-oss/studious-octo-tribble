#!/bin/bash
# Auto Script for Centos 6.xx
# Made w/love by codeph
# version v.11
ln -fs /usr/share/zoneinfo/Asia/Manila /etc/localtime
sed -i "s/SELINUX=enforcing/SELINUX=disabled/g" /etc/selinux/config &> /dev/null
#change this according to your database details
#Note: Password w/ Special Characters are not allowed.
dbhost='104.219.248.111';
dbuser='zerosmvd_zero123';
dbpass='Raprap18';
dbname='zerosmvd_yellowpanel';
dbport='3306';


##certificates
cacert='-----BEGIN CERTIFICATE-----
MIIG6zCCBNOgAwIBAgIJAKrVMGaCb+fjMA0GCSqGSIb3DQEBCwUAMIGpMQswCQYD
VQQGEwJQSDEMMAoGA1UECBMDTUxBMRAwDgYDVQQHEwdOQVZPVEFTMRMwEQYDVQQK
EwpIRVJPRVMtVlBOMRMwEQYDVQQLEwpIRVJPRVMgVlBOMRYwFAYDVQQDEw1IRVJP
RVMtVlBOIENBMRAwDgYDVQQpEwdFYXN5UlNBMSYwJAYJKoZIhvcNAQkBFhd3ZWJt
YXN0ZXJAaGVyb2VzdnBuLm5ldDAeFw0xNzA2MDMxMTQwMTRaFw0yNzA2MDExMTQw
MTRaMIGpMQswCQYDVQQGEwJQSDEMMAoGA1UECBMDTUxBMRAwDgYDVQQHEwdOQVZP
VEFTMRMwEQYDVQQKEwpIRVJPRVMtVlBOMRMwEQYDVQQLEwpIRVJPRVMgVlBOMRYw
FAYDVQQDEw1IRVJPRVMtVlBOIENBMRAwDgYDVQQpEwdFYXN5UlNBMSYwJAYJKoZI
hvcNAQkBFhd3ZWJtYXN0ZXJAaGVyb2VzdnBuLm5ldDCCAiIwDQYJKoZIhvcNAQEB
BQADggIPADCCAgoCggIBAMPDb6bwc/IVua9eMDM7I6wUd+SPo+3kR+UIEfQ1RP3T
9clK4DAdoh0eF/I1yXkwm6AW69jZLjHVfLTEY1MQuAWFF0zVm46dyravoGtR3Adg
eLGfK6XChMyHyd+Pjzrzm0RL6nRdVxwXaeUx9te6yQspvlUanqCQGCzwJlHP856c
CNzjty2ly/L+Y2WxuLhIavkfmYnFt61zj3uOoSRCvIuWgQjQan6XOp0Q8uz2mS3x
4fogYxx6hkoneIBn67PLzMJMK1O+5afAhc4Ea02hMNDW96Extp7D12lV2lLd0M+y
wifYIl5OUfp4ieoB1IQrrHV0NtscR/0nBhDAutwN1ZfhBJ+QBwimvamDCV7U7x/p
qIp4y62dSxjdbPaFNabTKC5LLU/MJt5QfA02UWYBuX9Y9iY0FM89yIfBbaWiBNUJ
xeVTs+j3AxDPVWmEawLjDvas43wYbqdvvS8YnnU62LIs59hSKQbOdgA2/H5icqSY
eY/enhFZGTT9aO99n9MFVpMj701TTCnB4PYMcf5kCSIyV7Q1q3ENN4F6MrdsCXfH
xUzA0oR0fCiWKRtopD4FL8DdmeiWHMbLaEknIS1tsHFX1hm7qkcuWrGSqbGs3PWj
rrJMFMxEVG0rNzj6uhQpWKYobYRG1xfZaEe+DgL4wBD5S7cjQlUkQvuYKMyjfbEH
AgMBAAGjggESMIIBDjAdBgNVHQ4EFgQU8mL+Sw3evimAnyYGzFz+YWEUSqswgd4G
A1UdIwSB1jCB04AU8mL+Sw3evimAnyYGzFz+YWEUSquhga+kgawwgakxCzAJBgNV
BAYTAlBIMQwwCgYDVQQIEwNNTEExEDAOBgNVBAcTB05BVk9UQVMxEzARBgNVBAoT
CkhFUk9FUy1WUE4xEzARBgNVBAsTCkhFUk9FUyBWUE4xFjAUBgNVBAMTDUhFUk9F
Uy1WUE4gQ0ExEDAOBgNVBCkTB0Vhc3lSU0ExJjAkBgkqhkiG9w0BCQEWF3dlYm1h
c3RlckBoZXJvZXN2cG4ubmV0ggkAqtUwZoJv5+MwDAYDVR0TBAUwAwEB/zANBgkq
hkiG9w0BAQsFAAOCAgEAJgV69ApQoHNVfoqLbRm8ZVsS7cNPCZH5KTaYo+9TUm45
B7gcaxv+7SN6TLON29gQ8ewAbLX/Sw8Qzc3j8qV9j1jQ+EhEGHQ6ciR1okWdnpPR
NqeJ7NzrpvuY0BXq0wbKStm/aRZlsmiSKl/Hr9GHnZQ+Mebd0W/5HbzxoyVKIkk2
a5750ER0cn5utlSHFkk6nBQAnMjEULDWUK/ZiaWkhtclDVHtDheVq/JF0KcutsQs
xq/PRHj6dWkqIJVVtVLMVDT8kFywBRiQdVerE+AiS478X00oigNVFnDbR5MwPYK2
QlWTTtn8nvhUSsnuKyizdHeZgbyO6BJVfMdI9/2i4xBU70FEu4hfNlf+rZb7yKzq
/RZI6Q06IZc4PvN/64j++k8Ti4icgXr1NYlqRdWBvVS+lqC7PK2vMOUBZt18V1SU
c1Btg02HuFx8AITMx6VB1dFWtvi1nSYlXpvn0SMbzpmmIjjTBW9H0pjUIqsZ6rI0
/7dqZCMhjk2GLNw0iM/Y6oEINH9qEOvlVcMDwyVVsyEUd8KJs9FsXMX5qsirthFY
fHCFP+BagOLW3Qlu+DmaLg1Yrn2oQe594J2o75QeY5Q8+Xo0kMkQzqnfCL2OY7AL
TvzN/Ll68ucXB4q9Uid1PydHue6VLg+oj8z+ya2ZMkqQgNNAN8tp66EdpHKAj4c=
-----END CERTIFICATE-----';
servercert='Certificate:
    Data:
        Version: 3 (0x2)
        Serial Number: 1 (0x1)
    Signature Algorithm: sha256WithRSAEncryption
        Issuer: C=PH, ST=MLA, L=NAVOTAS, O=HEROES-VPN, OU=HEROES VPN, CN=HEROES-VPN CA/name=EasyRSA/emailAddress=webmaster@heroesvpn.net
        Validity
            Not Before: Jun  3 11:40:29 2017 GMT
            Not After : Jun  1 11:40:29 2027 GMT
        Subject: C=PH, ST=MLA, L=NAVOTAS, O=HEROES-VPN, OU=HEROES VPN, CN=server/name=EasyRSA/emailAddress=webmaster@heroesvpn.net
        Subject Public Key Info:
            Public Key Algorithm: rsaEncryption
                Public-Key: (4096 bit)
                Modulus:
                    00:dc:f7:84:96:f6:38:e9:4c:82:ac:a8:0c:25:ba:
                    d1:7f:f7:81:bb:b3:67:5c:68:bd:f4:83:ed:81:4e:
                    26:5a:f9:05:18:a3:26:56:94:b8:f0:a4:76:0b:46:
                    c7:7d:8a:39:71:0b:08:2c:2f:e2:1f:b5:69:78:13:
                    45:8b:ac:90:56:b1:d6:ae:67:b9:59:8b:79:39:6f:
                    64:ab:d8:4f:f8:f8:78:0b:08:81:f5:db:cb:e6:33:
                    29:20:39:91:08:75:de:a8:a1:9e:da:89:f1:2b:37:
                    a6:2d:6f:4d:91:bd:99:16:36:54:13:2c:18:a0:cc:
                    9b:78:41:8c:62:68:5c:d0:83:7d:b2:5c:03:62:c1:
                    71:10:14:d1:c8:dc:ca:09:06:a7:e6:42:8b:b2:50:
                    e2:17:c1:98:8f:97:57:d0:9b:06:95:27:cc:29:5e:
                    98:46:6d:66:a3:f9:c8:82:6f:f7:c1:53:8b:2f:6a:
                    1b:18:22:96:4a:b4:c8:7c:54:65:3b:e6:26:00:0d:
                    98:e2:6a:f8:6d:be:79:58:ec:40:ac:07:6a:97:59:
                    0e:7f:52:6d:19:89:00:5e:48:af:6c:c5:6d:ae:b4:
                    52:5d:12:fe:83:d4:b8:2c:13:c1:58:1b:da:65:b1:
                    34:bb:27:59:85:36:7f:97:ba:6d:c8:49:b0:1e:40:
                    19:12:d1:6d:3b:c5:3b:50:09:70:c6:8f:0c:7f:bb:
                    88:72:d3:46:c9:18:1c:c1:c0:ce:24:89:0a:f5:f5:
                    ce:3d:d3:af:d6:f7:7f:ae:15:27:dd:95:4e:79:0b:
                    53:f1:cd:0c:ef:64:c5:75:19:23:0b:bd:46:e7:6c:
                    6c:c5:b7:20:df:91:29:0c:20:8c:de:9b:d5:9e:2f:
                    fd:a7:2d:9f:03:e6:98:2e:01:e4:8a:90:36:16:f6:
                    b4:5b:8c:93:ca:18:65:26:b4:d5:9e:80:f2:8c:67:
                    35:dd:19:bb:9c:3d:c6:e3:30:20:43:4b:fc:6d:b7:
                    9c:f8:a2:44:ef:8f:b4:ab:78:84:94:a4:85:cf:d6:
                    fa:4e:a1:df:1e:62:21:66:37:58:ed:61:26:e7:c2:
                    2e:a7:f0:a7:c5:90:4a:a4:e8:88:f0:cf:1a:14:cf:
                    ec:56:0d:59:31:aa:f4:db:2f:8d:77:e4:14:bb:1b:
                    4a:9e:f4:67:55:c1:46:61:ac:72:5b:6c:7b:5f:1f:
                    83:15:8f:b6:13:38:0c:2c:52:7e:8b:90:85:53:18:
                    b1:b3:f3:3e:9e:87:92:f4:ae:fe:a4:f4:6a:35:49:
                    7f:40:40:f3:93:26:33:4e:d6:45:7f:80:db:1e:92:
                    b9:7c:51:95:b3:68:43:c0:86:63:86:2f:e0:0a:c9:
                    1b:f9:09
                Exponent: 65537 (0x10001)
        X509v3 extensions:
            X509v3 Basic Constraints: 
                CA:FALSE
            Netscape Cert Type: 
                SSL Server
            Netscape Comment: 
                Easy-RSA Generated Server Certificate
            X509v3 Subject Key Identifier: 
                4A:35:65:D6:4D:95:98:DC:05:F0:EC:5A:52:C6:05:3A:15:D7:F5:97
            X509v3 Authority Key Identifier: 
                keyid:F2:62:FE:4B:0D:DE:BE:29:80:9F:26:06:CC:5C:FE:61:61:14:4A:AB
                DirName:/C=PH/ST=MLA/L=NAVOTAS/O=HEROES-VPN/OU=HEROES VPN/CN=HEROES-VPN CA/name=EasyRSA/emailAddress=webmaster@heroesvpn.net
                serial:AA:D5:30:66:82:6F:E7:E3

            X509v3 Extended Key Usage: 
                TLS Web Server Authentication
            X509v3 Key Usage: 
                Digital Signature, Key Encipherment
    Signature Algorithm: sha256WithRSAEncryption
         87:d6:50:b4:a4:96:58:3e:f0:97:7b:d4:d9:86:ae:23:40:06:
         c3:a8:c5:dd:29:0a:8e:71:8e:29:41:03:28:f0:ff:f8:9f:40:
         8f:b5:12:55:02:06:99:ff:b7:16:7d:78:74:db:82:08:91:78:
         7b:58:f3:fc:03:b7:4e:9b:b3:a9:fc:e4:13:cb:40:eb:c8:9a:
         b6:61:9c:1a:d7:7c:f3:a7:08:13:83:6f:07:f4:e5:5d:1d:d1:
         59:60:d2:9c:06:89:e0:23:fa:aa:6e:2e:81:c2:68:6f:64:eb:
         19:bc:82:9d:ee:61:38:ad:56:d2:2d:bb:20:fd:ce:2e:4f:f6:
         3d:bc:8f:c2:aa:8a:94:fc:df:49:af:2e:8e:b0:f2:bb:5b:c2:
         cc:09:cc:fd:6e:4a:c3:66:61:a5:c4:05:20:56:73:f2:41:79:
         e5:c4:a3:80:41:97:ac:bb:22:44:a8:07:9a:71:f4:1e:07:32:
         fa:ed:7b:44:5b:84:e8:6a:d8:14:37:c7:16:3a:41:66:fa:20:
         6c:1f:41:df:c7:76:29:5c:b9:c0:d9:18:9b:c3:59:1b:f1:61:
         00:b2:8a:2f:1e:93:b1:62:01:58:ec:49:3e:27:04:ba:99:96:
         f3:23:86:05:6e:c6:0a:fd:16:03:3d:17:e2:d5:c0:4c:bb:c9:
         9d:c2:a9:d0:77:ad:b2:17:1b:f7:2d:2c:6d:78:15:d5:42:56:
         77:34:70:de:33:ca:12:91:fc:b2:7e:11:e1:e6:76:6a:6d:a8:
         26:71:b8:69:1a:3d:cb:7c:05:6c:eb:99:b4:a3:4d:65:82:8b:
         16:eb:9c:0a:1d:97:57:ad:f3:11:33:45:0b:81:3a:2b:c4:69:
         28:c0:df:47:b7:3e:38:61:25:78:4e:d1:ab:97:0c:41:96:4e:
         f1:97:02:fb:40:24:68:31:cf:fd:06:ec:3f:1a:92:0f:5f:cc:
         24:e4:4a:e5:d7:0c:34:5c:40:24:23:ad:5b:09:2f:fc:17:15:
         30:db:6e:f6:a6:26:fd:e7:a6:29:52:69:35:30:c6:28:ec:54:
         0f:1e:45:a0:d5:60:b6:ce:a0:8d:4b:f2:d2:0f:85:aa:6e:83:
         f5:43:56:b0:28:a2:43:95:f9:79:18:37:59:76:24:1d:52:34:
         da:bf:1a:2a:c6:0c:b9:12:2e:ae:fa:9d:80:71:57:fc:60:13:
         74:cf:e3:a2:5a:bf:0f:a2:ce:b2:cd:12:bf:d7:a2:ee:d1:a6:
         64:d4:05:5c:9d:e1:09:c2:65:a4:dc:73:db:05:e6:f5:36:8e:
         20:bf:2d:fb:78:9c:55:bc:0b:75:6e:2e:bf:1d:b6:4b:9d:fa:
         8f:c8:dd:20:43:ba:4f:77
-----BEGIN CERTIFICATE-----
MIIHRDCCBSygAwIBAgIBATANBgkqhkiG9w0BAQsFADCBqTELMAkGA1UEBhMCUEgx
DDAKBgNVBAgTA01MQTEQMA4GA1UEBxMHTkFWT1RBUzETMBEGA1UEChMKSEVST0VT
LVZQTjETMBEGA1UECxMKSEVST0VTIFZQTjEWMBQGA1UEAxMNSEVST0VTLVZQTiBD
QTEQMA4GA1UEKRMHRWFzeVJTQTEmMCQGCSqGSIb3DQEJARYXd2VibWFzdGVyQGhl
cm9lc3Zwbi5uZXQwHhcNMTcwNjAzMTE0MDI5WhcNMjcwNjAxMTE0MDI5WjCBojEL
MAkGA1UEBhMCUEgxDDAKBgNVBAgTA01MQTEQMA4GA1UEBxMHTkFWT1RBUzETMBEG
A1UEChMKSEVST0VTLVZQTjETMBEGA1UECxMKSEVST0VTIFZQTjEPMA0GA1UEAxMG
c2VydmVyMRAwDgYDVQQpEwdFYXN5UlNBMSYwJAYJKoZIhvcNAQkBFhd3ZWJtYXN0
ZXJAaGVyb2VzdnBuLm5ldDCCAiIwDQYJKoZIhvcNAQEBBQADggIPADCCAgoCggIB
ANz3hJb2OOlMgqyoDCW60X/3gbuzZ1xovfSD7YFOJlr5BRijJlaUuPCkdgtGx32K
OXELCCwv4h+1aXgTRYuskFax1q5nuVmLeTlvZKvYT/j4eAsIgfXby+YzKSA5kQh1
3qihntqJ8Ss3pi1vTZG9mRY2VBMsGKDMm3hBjGJoXNCDfbJcA2LBcRAU0cjcygkG
p+ZCi7JQ4hfBmI+XV9CbBpUnzClemEZtZqP5yIJv98FTiy9qGxgilkq0yHxUZTvm
JgANmOJq+G2+eVjsQKwHapdZDn9SbRmJAF5Ir2zFba60Ul0S/oPUuCwTwVgb2mWx
NLsnWYU2f5e6bchJsB5AGRLRbTvFO1AJcMaPDH+7iHLTRskYHMHAziSJCvX1zj3T
r9b3f64VJ92VTnkLU/HNDO9kxXUZIwu9RudsbMW3IN+RKQwgjN6b1Z4v/actnwPm
mC4B5IqQNhb2tFuMk8oYZSa01Z6A8oxnNd0Zu5w9xuMwIENL/G23nPiiRO+PtKt4
hJSkhc/W+k6h3x5iIWY3WO1hJufCLqfwp8WQSqToiPDPGhTP7FYNWTGq9NsvjXfk
FLsbSp70Z1XBRmGscltse18fgxWPthM4DCxSfouQhVMYsbPzPp6HkvSu/qT0ajVJ
f0BA85MmM07WRX+A2x6SuXxRlbNoQ8CGY4Yv4ArJG/kJAgMBAAGjggF6MIIBdjAJ
BgNVHRMEAjAAMBEGCWCGSAGG+EIBAQQEAwIGQDA0BglghkgBhvhCAQ0EJxYlRWFz
eS1SU0EgR2VuZXJhdGVkIFNlcnZlciBDZXJ0aWZpY2F0ZTAdBgNVHQ4EFgQUSjVl
1k2VmNwF8OxaUsYFOhXX9Zcwgd4GA1UdIwSB1jCB04AU8mL+Sw3evimAnyYGzFz+
YWEUSquhga+kgawwgakxCzAJBgNVBAYTAlBIMQwwCgYDVQQIEwNNTEExEDAOBgNV
BAcTB05BVk9UQVMxEzARBgNVBAoTCkhFUk9FUy1WUE4xEzARBgNVBAsTCkhFUk9F
UyBWUE4xFjAUBgNVBAMTDUhFUk9FUy1WUE4gQ0ExEDAOBgNVBCkTB0Vhc3lSU0Ex
JjAkBgkqhkiG9w0BCQEWF3dlYm1hc3RlckBoZXJvZXN2cG4ubmV0ggkAqtUwZoJv
5+MwEwYDVR0lBAwwCgYIKwYBBQUHAwEwCwYDVR0PBAQDAgWgMA0GCSqGSIb3DQEB
CwUAA4ICAQCH1lC0pJZYPvCXe9TZhq4jQAbDqMXdKQqOcY4pQQMo8P/4n0CPtRJV
AgaZ/7cWfXh024IIkXh7WPP8A7dOm7Op/OQTy0DryJq2YZwa13zzpwgTg28H9OVd
HdFZYNKcBongI/qqbi6BwmhvZOsZvIKd7mE4rVbSLbsg/c4uT/Y9vI/CqoqU/N9J
ry6OsPK7W8LMCcz9bkrDZmGlxAUgVnPyQXnlxKOAQZesuyJEqAeacfQeBzL67XtE
W4ToatgUN8cWOkFm+iBsH0Hfx3YpXLnA2Ribw1kb8WEAsoovHpOxYgFY7Ek+JwS6
mZbzI4YFbsYK/RYDPRfi1cBMu8mdwqnQd62yFxv3LSxteBXVQlZ3NHDeM8oSkfyy
fhHh5nZqbagmcbhpGj3LfAVs65m0o01lgosW65wKHZdXrfMRM0ULgTorxGkowN9H
tz44YSV4TtGrlwxBlk7xlwL7QCRoMc/9Buw/GpIPX8wk5Erl1ww0XEAkI61bCS/8
FxUw2272pib956YpUmk1MMYo7FQPHkWg1WC2zqCNS/LSD4WqboP1Q1awKKJDlfl5
GDdZdiQdUjTavxoqxgy5Ei6u+p2AcVf8YBN0z+OiWr8Pos6yzRK/16Lu0aZk1AVc
neEJwmWk3HPbBeb1No4gvy37eJxVvAt1bi6/HbZLnfqPyN0gQ7pPdw==
-----END CERTIFICATE-----';
serverkey='-----BEGIN PRIVATE KEY-----
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
5B3rN3oTcR4lvO+hzcKBJw0RtJUk7jUb
-----END PRIVATE KEY-----';
dh='-----BEGIN DH PARAMETERS-----
MIIBCAKCAQEAqoOhGXUbQrLBKK6bezw/RtzJOyhaUHdwtX9wzWObY5azHbw6KOmw
yH7tZKmo+V0rYbpkNx/HSMDn506L4q2cGCWsvThhAB7Tr2+Ax9RWsPrGDyG/bsgZ
Vj9BJ2BjwzatggYXGUuEJbT9dgG9UARLbE80ekgQFSMSXz88oCPi0Y4nyivc2o5e
GmzflrXDjptrShWAJzdd5D/MCm1u31XDTvUQu6Z86SVeTBVc8rDy8qTg/8qs51TE
h2ZLeQCpBbgh/tn7Wk+q7byRXQPbtpFdmiWgA3E1eccsIDP3xMh2Gn5lS82vxcE5
a80P7ukOEn2yGsPuUIerX9WczOZnlFEEEwIBAg==
-----END DH PARAMETERS-----';
RED='\033[01;31m';
RESET='\033[0m';
GREEN='\033[01;32m';
echo -e "$GREEN                Please Wait... $RESET"
sleep 3s
echo -e "$GREEN                Installing Updates $RESET"
yum update -y
clear
echo -e "$GREEN                Updates Done  $RESET"
sleep 3s
echo -e "$GREEN                Lets install the required packages. $RESET"
sleep 3s
clear
echo -e "$GREEN                Please Wait... $RESET"
yum update -y &> /dev/null
yum install -y telnet telnet-server vixie-cron crontabs httpd nano squid mysql-server &> /dev/null
yum install -y php php-pdo php-mysqli php-mysql php-mbstring.x86_64 epel-release &> /dev/null
yum install -y openvpn curl sudo &> /dev/null
MYIP=$(curl -4 icanhazip.com); &> /dev/null
echo -e "$GREEN                Installation Complete $RESET"
echo -e "$GREEN                Lets configure the settings and routing $RESET"
sleep 4s
clear
echo -e "$GREEN                Please wait while we are fighting with your firewall $RESET"
sleep 4s

#ethernet
ethernet=""

echo "************************************************************************************"
echo -e " Note: Your Network Interface is followed by the word \e[1;31m' dev '\e[0m"
echo " If the interface doesnt match openvpn will be connected but no internet access."
echo " Please choose or type properly"
echo "************************************************************************************"
echo ""
echo "Your Network Interface is:"
ip route | grep default
echo ""
echo "Ethernet:"
read ethernet
echo ""
echo ""
clear;

## making script and keys
mkdir /etc/openvpn/script
mkdir /etc/openvpn/log
mkdir /etc/openvpn/keys
mkdir /var/www/html/status
touch /var/www/html/status/tcp2.txt
cat << EOF > /etc/openvpn/keys/ca.crt
$cacert
EOF

cat << EOF > /etc/openvpn/keys/server.crt
$servercert
EOF

cat << EOF > /etc/openvpn/keys/server.key
$serverkey
EOF

cat << EOF > /etc/openvpn/keys/dh2048.pem
$dh
EOF

cat << EOF > /etc/openvpn/script/config.sh
#!/bin/bash
##Dababase Server
HOST='$dbhost'
USER='$dbuser'
PASS='$dbpass'
DB='$dbname'
PORT='$dbport'
EOF

/bin/cat <<"EOM" >/etc/openvpn/script/connect.sh
#!/bin/bash
. /etc/openvpn/script/config.sh
##tm="$(date +%s)"
##dt="$(date +'%Y-%m-%d %H:%M:%S')"
##timestamp="$(date +'%FT%TZ')"
##set status online to user connected
mysql -u $USER -p$PASS -D $DB -h $HOST -e "UPDATE users SET is_active=0 WHERE user_name='$common_name' "

EOM
  
/bin/cat <<"EOM" >/etc/openvpn/script/disconnect.sh
#!/bin/bash
. /etc/openvpn/script/config.sh
tm="$(date +%s)"
dt="$(date +'%Y-%m-%d %H:%M:%S')"
timestamp="$(date +'%FT%TZ')"

##mysql -u $USER -p$PASS -D $DB -h $HOST -sN -e "UPDATE bandwidth_logs SET bytes_received='$bytes_received',bytes_sent='$bytes_sent',time_out='$dt', status='offline' WHERE username='$common_name' AND status='online' AND category='vip' "

mysql -u $USER -p$PASS -D $DB -h $HOST -sN -e "UPDATE users SET is_active=1 WHERE user_name='$common_name' "

EOM



echo -e "                $GREEN Type of your Server$RESET"
PS3='Choose or Type a Plan: '
options=("Premium" "VIP" "PRIVATE" "Quit")
select opt in "${options[@]}"; do
  case "$opt,$REPLY" in
    Premium,*|*,Premium) 
    echo "";
    
  
/bin/cat <<"EOM" >/etc/openvpn/script/login.sh
#!/bin/bash
. /etc/openvpn/script/config.sh
user_name=`mysql -u $USER -p$PASS -h $HOST $DB -sN -e "SELECT user_name FROM users WHERE user_name='$username' AND user_pass=md5('$password') AND frozen=0 AND is_validated=1 AND (duration > 0 OR vip_duration > 0 OR private_duration > 0)"`
[ "$user_name" != '' ] && [ "$user_name" = "$username" ] && echo "user : $username" && echo 'authentication ok.' && exit 0 || echo 'authentication failed.'; exit 1

EOM
  
echo "";
echo -e "                $GREEN 1) Premium Selected$RESET";
break ;;
VIP,*|*,VIP) 
echo "";
  
/bin/cat <<"EOM" >/etc/openvpn/script/login.sh
#!/bin/bash
. /etc/openvpn/script/config.sh
user_name=`mysql -u $USER -p$PASS -h $HOST $DB -sN -e "SELECT user_name FROM users WHERE user_name='$username' AND user_pass=md5('$password') AND frozen=0 AND is_validated=1 AND (vip_duration > 0 OR private_duration > 0)"`
[ "$user_name" != '' ] && [ "$user_name" = "$username" ] && echo "user : $username" && echo 'authentication ok.' && exit 0 || echo 'authentication failed.'; exit 1

EOM
  
echo "";
echo -e "                $GREEN 2) VIP Selected$RESET";
break ;;
PRIVATE,*|*,PRIVATE) 
echo "";

  
/bin/cat <<"EOM" >/etc/openvpn/script/login.sh
#!/bin/bash
. /etc/openvpn/script/config.sh
user_name=`mysql -u $USER -p$PASS -h $HOST $DB -sN -e "SELECT user_name FROM users WHERE user_name='$username' AND user_pass=md5('$password') AND frozen=0 AND is_validated=1 AND (private_duration > 0)"`
[ "$user_name" != '' ] && [ "$user_name" = "$username" ] && echo "user : $username" && echo 'authentication ok.' && exit 0 || echo 'authentication failed.'; exit 1

EOM
  
echo "";
echo -e "                $GREEN 3) PRIVATE Selected$RESET";
break ;;
Quit,*|*,Quit) echo -e " $RED   Installation Cancelled!$RESET";
echo -e "                $RED   Rebuild your vps and correct the process.$RESET";
exit;
break ;; *)
echo -e "                $RED   Invalid: Just choose what you want$RESET";
esac
done
clear


cat << EOF > /etc/openvpn/server.conf
local $MYIP
mode server 
tls-server 
port 443
proto tcp
dev tun
tun-mtu-extra 32 
tun-mtu 1400 
mssfix 1360
server 10.8.0.0 255.255.255.0
ca /etc/openvpn/keys/ca.crt
cert /etc/openvpn/keys/server.crt
key /etc/openvpn/keys/server.key
dh /etc/openvpn/keys/dh2048.pem
persist-key
persist-tun
keepalive 1 180
comp-lzo
user nobody
client-to-client
username-as-common-name
client-cert-not-required
auth-user-pass-verify /etc/openvpn/script/login.sh via-env
client-connect /etc/openvpn/script/connect.sh
client-disconnect /etc/openvpn/script/disconnect.sh
push "redirect-gateway def1"
push "dhcp-option DNS 1.1.1.1"
push "dhcp-option DNS 1.0.0.1"
script-security 3
status /var/www/html/status/tcp2.txt 1
#log-append /etc/openvpn/log/openvpn.log
verb 3
connect-retry-max infinite
EOF
#denying ads
cat << EOF > /etc/squid/ads.txt
101com.com
101order.com
123found.com
180hits.de
180searchassistant.com
207.net
247media.com
24log.com
zjjlf.croukwexdbyerr.net
zkic.com
zous.szm.sk
zt.tim-taxi.com
zyrdu.cruisingsmallship.com
EOF
echo '' > /etc/sysctl.conf &> /dev/null
echo "# Kernel sysctl configuration file for Red Hat Linux
#
# For binary values, 0 is disabled, 1 is enabled.  See sysctl(8) and
# sysctl.conf(5) for more details.
#
# Use '/sbin/sysctl -a' to list all possible parameters.
# Controls IP packet forwarding
net.ipv4.conf.default.rp_filter = 1
net.ipv4.conf.default.accept_source_route = 0
kernel.sysrq = 0
kernel.core_uses_pid = 1
net.ipv4.tcp_syncookies = 1
kernel.msgmnb = 65536
kernel.msgmax = 65536
kernel.shmmax = 68719476736
kernel.shmall = 4294967296
net.ipv4.ip_forward = 1
fs.file-max = 65535
net.core.rmem_default = 262144
net.core.rmem_max = 262144
net.core.wmem_default = 262144
net.core.wmem_max = 262144
net.ipv4.tcp_rmem = 4096 87380 8388608
net.ipv4.tcp_wmem = 4096 65536 8388608
net.ipv4.tcp_mem = 4096 4096 4096
net.ipv4.tcp_low_latency = 1
net.core.netdev_max_backlog = 4000
net.ipv4.ip_local_port_range = 1024 65000
net.ipv4.tcp_max_syn_backlog = 16384"| sudo tee /etc/sysctl.conf &> /dev/null
sysctl -p &> /dev/null
iptables -F; iptables -X; iptables -Z
iptables -t nat -A POSTROUTING -s 10.8.0.0/24 -o $ethernet -j MASQUERADE
iptables -t nat -A POSTROUTING -s 10.8.0.0/24 -j SNAT --to $MYIP
iptables -A FORWARD -m state --state RELATED,ESTABLISHED -j ACCEPT
iptables -A FORWARD -s 10.8.0.0/24 -j ACCEPT
iptables -A FORWARD -j REJECT
iptables -A INPUT -p tcp --dport 25 -j DROP
iptables -A INPUT -p udp --dport 25 -j DROP

#install PHP
yum install gcc php-devel php-pear libssh2 libssh2-devel make -y
pecl install -f ssh2 -y
 echo extension=ssh2.so > /etc/php.d/ssh2.ini
service httpd restart
 php -m | grep ssh2 
sed -i "s/#ServerName www.example.com:80/ServerName localhost:80/g" /etc/httpd/conf/httpd.conf
clear


service iptables save &> /dev/null

## changing permissions
chmod -R 755 /etc/openvpn
restorecon -r /var/www/html
cd /var/www/html/status
chmod 775 *
cd
echo '' > /etc/squid/squid.conf &> /dev/null
echo "acl Denied_ports port 1025-65535
http_access deny Denied_ports
acl to_vpn dst $MYIP
http_access allow to_vpn
acl inbound src all
acl outbound dst $MYIP/32
http_access allow inbound outbound
http_access deny all
http_port 8080 transparent
http_port 3128 transparent
http_port 8000 transparent
http_port 53 transparent
http_port 9201 transparent
visible_hostname jhoe_XII
cache_mgr codeph"| sudo tee /etc/squid/squid.conf &> /dev/null
clear
echo -e "$GREEN                    We are almost done $RESET"
sleep 4s
clear
echo "0 0 1 * * root /sbin/reboot" > /etc/cron.d/reboot
echo "";
echo -e "$GREEN  Every 12mn Next Month Your VPS will reboot
Restarting and Re-enabling after Boot $RESET"
echo "";
service iptables save &> /dev/null
/sbin/chkconfig crond on
chkconfig iptables on
chkconfig openvpn on
chkconfig squid on
/sbin/service crond start
chkconfig httpd on &> /dev/null
/etc/init.d/squid start &> /dev/null
/etc/init.d/openvpn start &> /dev/null
/etc/init.d/httpd start &> /dev/null
service httpd restart &> /dev/null
service squid restart 
service openvpn restart
rm openvpn.sh
clear
echo ''
echo ''
echo ''
echo -e "$YELLOW
============================   
         SUCCESS!!!
============================   $RESET"
sleep 3s
clear
echo ''
echo ''
echo ''
echo ''
echo -e "$GREEN     OpenVPN Installed Sucessfully$RESET"
rm -rf *sh &> /dev/null
echo ''
