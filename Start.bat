@echo off
pushd %~dp0
set NODE_ENV=production
call npm install --no-audit --no-fund --loglevel=error --no-progress --omit=dev
start "" devtunnel host -p 8000
node server.js %*
pause
popd
