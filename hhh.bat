@echo off

echo.
echo ===================================
echo  Website Deploy Script
echo ===================================
echo.

cd "C:\Users\g-fujii\OneDrive - 株式会社　スコープジェイ・ピー\デスクトップ\Donation\html"

REM 変更されたファイルをすべてステージング
git add .

REM コミットメッセージの入力を求める
set /p commitMessage="Enter commit message: "

REM 入力されたメッセージでコミット
git commit -m "%commitMessage%"

REM リモートリポジトリにプッシュ
echo.
echo Pushing to remote repository...
git push

echo.
echo --- Deploy process started on Cloudflare Pages! ---
echo.
pause