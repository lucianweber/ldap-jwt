# Simple "ldap-jwt" service
Lightweight node.js based web service that provides user authentication against LDAP server (Active Directory / Windows network) credentials and returns a JSON Web Token.

Heavily based on the work of [gregfroese/ldapservice](https://github.com/gregfroese/ldapservice).


## Changes

* Replaced yaml config-files with json
* Removed support for RabbitMQ
* Updated npm dependencies
* Simplified endpoints


## Usage

1. Rename/Copy `config.test.json` to `config.json`
2. Update config in `config.json`
3. Deploy


## Endpoints

### /authenticate

**Payload**

```json
{
    "username": "euler",
    "password": "password"
}
```

**Response**

```json
{
  "token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE0NjE3OTQxMjY0NjAsInVzZXJfbmFtZSI6ImV1bGVyIiwiZnVsbF9uYW1lIjoiTGVvbmhhcmQgRXVsZXIiLCJtYWlsIjoiZXVsZXJAbGRhcC5mb3J1bXN5cy5jb20ifQ.bqSjshvLnHsTJwcXBXsNVtGGNatvQHyqhL8MSXuMwFI",
  "full_name": "Leonhard Euler"
}
```

### /verify

**Payload**

```json
{
  "token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE0NjE3OTQxMjY0NjAsInVzZXJfbmFtZSI6ImV1bGVyIiwiZnVsbF9uYW1lIjoiTGVvbmhhcmQgRXVsZXIiLCJtYWlsIjoiZXVsZXJAbGRhcC5mb3J1bXN5cy5jb20ifQ.bqSjshvLnHsTJwcXBXsNVtGGNatvQHyqhL8MSXuMwFI"
}
```

**Response**

```json
{
  "exp":1495058246
  "user_name": "euler",
  "full_name": "Leonhard Euler",
  "mail": "euler@ldap.forumsys.com"
}
```

## ToDo

* Write Tests
