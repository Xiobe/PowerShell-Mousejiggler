Add-Type -AssemblyName System.Windows.Forms

while ($true)
{
  # Get the position of the cursor
  $pos = [System.Windows.Forms.Cursor]::Position
  # Calculate a new position
  $x = ($pos.X) + 1
  $y = ($pos.Y) + 1
  # Move the cursor to the new position and back to the original one
  [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point($x, $y)
  [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point($pos.X,$pos.Y)
  # Wait
  Start-Sleep -Seconds 10
}
