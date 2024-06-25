<#
.SYNOPSIS
The idea for this script was to create a mouse jiggler to keep a remote rdp session alive.

.DESCRIPTION
Because the session needed to be kept alive, we used a while true loop.

The basic logic is simple. We first need to establish the height and the width of the screen
and then can randomly calculate a new x and y for the cursor. The wait has been randomized
for fun.

.LINK
https://github.com/Xiobe/PowerShell-Mousejiggler

.Example
 jiggle
#>
Add-Type -AssemblyName System.Windows.Forms
$screen = [system.windows.forms.systeminformation]::virtualscreen

while ($true)
{
  # Get random integers for the height and width of the screen
  $x = Get-Random -Maximum $screen.width -Minimum 0
  $y = Get-Random -Maximum $screen.height -Minimum 0
  $wait = Get-Random -Maximum 10 -Minimum 0

  # Move the cursor to the new position
  [windows.forms.cursor]::Position = "$($x),$($y)"
  # Wait
  Start-Sleep -Seconds $waitYe
}
