$i = 360
do {
    Write-Host "Keeping alive... Remaining time: $i minutes"
    Start-Sleep -Seconds 600 # Sleep for 10 minutes
    $i--
} while ($i -gt 0)
