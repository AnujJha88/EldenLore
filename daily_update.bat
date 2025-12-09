@echo off
:: Navigate to the folder (Using Windows Path)
cd /d "D:/fun stuff/eldenlore"

:: ------------------------------------------------------
:: STEP 1: Run Scraper using WINDOWS Python
:: ------------------------------------------------------
python scraper.py

:: ------------------------------------------------------
:: STEP 2: Push Data using WSL Git
:: (WSL automatically sees the files you just updated)
:: ------------------------------------------------------
wsl git add lore_data.json
wsl git commit -m "Daily Update via Hybrid Script"
wsl git push origin main