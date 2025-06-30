# PowerShell script to automatically save Arduino serial data to a CSV file
# Update $port if your Arduino is on a different COM port
$port = 'COM3'
$outputFile = "$env:USERPROFILE\Documents\sensor_data.csv"

# Open the serial port and save data to file
$serialPort = new-Object System.IO.Ports.SerialPort $port,9600,None,8,one
$serialPort.Open()

Write-Host "Recording data from $port to $outputFile. Press Ctrl+C to stop."

# Write header to file
Add-Content -Path $outputFile -Value "Time(ms),Temperature,Humidity"

while ($true) {
    $line = $serialPort.ReadLine()
    Add-Content -Path $outputFile -Value $line
    Write-Host $line
}

$serialPort.Close()
