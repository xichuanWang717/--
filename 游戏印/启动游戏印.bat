@echo off
chcp 65001 >nul
setlocal
cd /d "%~dp0.."
set "PYTHON_EXE=C:\Users\18833\.cache\codex-runtimes\codex-primary-runtime\dependencies\python\python.exe"
if not exist "%PYTHON_EXE%" (
  echo 找不到 Python 环境，请通过 Codex 启动或安装 Python
  pause
  exit /b 1
)
start "青韵印" http://127.0.0.1:4193/游戏印/index.html?three=38
echo 青韵印已启动 → http://127.0.0.1:4193/游戏印/index.html?three=38
"%PYTHON_EXE%" -m http.server 4193 --bind 127.0.0.1
endlocal
