# path to your local repo
Set-Location "Z:\JAngstadt\Images\CrystalImages"

# stage all image changes
git add *.png

# commit with timestamped message
$timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
git commit -m "Auto-update chart images ($timestamp)"

# push to GitHub
git push origin main

# path to your local repo
Set-Location "Z:\JAngstadt\Images\CeramicImages"

# stage all image changes
git add *.png

# commit with timestamped message
$timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
git commit -m "Auto-update chart images ($timestamp)"

# push to GitHub
git push origin main