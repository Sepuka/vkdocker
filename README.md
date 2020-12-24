###### available commands
`make [all]` - does default action - `make composer`

`make composer` - installs App dependencies into /vendor

`make tests` - runs tests

`make fetch_vendor` - copies prepared vendor

###### examples of usage
- `make APP_PATH=~/dev/data` where `~/dev/data` is path where your app was cloned
- `make tests APP_PATH=~/dev/data`
- `make fetch_vendor FQN=adm512:/home/username/path`