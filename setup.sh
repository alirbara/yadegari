#!/usr/bin/env bash

function main() {
    # Create .env
    read -p "Enter the port: " port
    echo "PORT=$port" > .env

    # Install dependencies
    npm i

    # Deploy
    pm2 start app.js --name "yadegari"
    pm2 save
}

main
