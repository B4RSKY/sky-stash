fx_version "cerulean"
game "gta5"
lua54 "yes"

author "B4RSKY"
description "stash system with swap withdraw/deposit validation based on job grades"
version "1.0.0"

shared_scripts {
    "@ox_lib/init.lua",
    "shared/config.lua"
}

client_script "client/main.lua"

server_scripts {
    "bridge/server.lua",
    "server/main.lua",
    "server/version.lua"
}