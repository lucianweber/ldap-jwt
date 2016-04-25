# Simple "ldap-jwt" service
Lightweight node.js based web service that provides user authentication against LDAP server (Active Directory / Windows network) credentials and returns a JSON Web Token.

Heavily based on the work of [@gregfroese/ldapservice](https://github.com/gregfroese/ldapservice).


## Changes

* Replaced yaml config-files with json
* Removed support for RabbitMQ
* Updated npm dependencies


## Usage

1. Rename/Copy `config.test.json` to `config.json`
2. Update config in `config.json`
3. Deploy


## ToDo

* Write Tests