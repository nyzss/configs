Import-Module posh-git
Import-Module oh-my-posh
Import-Module PSReadLine
Import-Module -Name Terminal-Icons
# Set-PoshPrompt cinnamon
Set-PoshPrompt ys
Set-Alias which where.exe
Set-Alias touch New-Item
Set-Alias ex iex.bat
Remove-Alias pwd


function toshokan{ set-location "C:\Users\OkanT\Desktop\toshokan" }
function pwd{(get-location).Path}

$pwd 				= (Get-Location).Path
$curUser    = (Get-ChildItem Env:\USERNAME).Value
$curComp    = (Get-ChildItem Env:\COMPUTERNAME).Value
$pvmaj      = $Host.Version.Major
$pvmin      = $Host.Version.Minor
$psversion  = "$pvmaj.$pvmin"
$identity   = "$curUser@$curComp"
$dir 				= (Get-Location).Path
$currentDir = ((Get-Item .).Name).ToLower() 

#-----------------------------------------------------
# WINDOW TITLE
#-----------------------------------------------------
$Host.UI.RawUI.WindowTitle = "nyzs@$currentDir"
#-----------------------------------------------------


#-----------------------------------------------------
# CONFIG
# Edit following to your convenience
#-----------------------------------------------------
$line1      = "⛩️ nyzs - 絶望的"    # First line
$line2      = "🗻 Version $psversion"    # Second line
$line3      = "👹 $identity"             # Third line
$line4      = "🎌 がんばろう"         # Fourth line

# $line1color = "Cyan"                     # First line color
$line1color = "DarkRed"                     # First line color
$line2color = "White"                    # Second line color
$line3color = "DarkMagenta"                   # Third line color
$line4color = "Blue"                    # Fourth line color

$bgColor    = 'DarkYellow'                  # Background Color
$padding    = 1
#-----------------------------------------------------


# Calculate max length based on four lines above
$lengths    = [array] $line1.tostring().Length, $line2.tostring().Length, $line3.tostring().Length, $line4.tostring().Length
$size       = $lengths | measure -Maximum
$max        = $size.Maximum


#-----------------------------------------------------
# WELCOME MESSAGE
#-----------------------------------------------------
Write-Host " "
Write-Host (("   " * $padding), (" " * ($max[0]+1)), (" " * $padding)) -BackgroundColor $bgColor;
Write-Host (("   " * $padding), (" " * ($max[0]+1)), (" " * $padding)) -BackgroundColor $bgColor;
Write-Host (("   " * $padding), ("$line1"), (" " * ($max[0]-($line1.Length))), (" " * $padding)) -BackgroundColor $bgColor -ForegroundColor $line1color;
Write-Host (("   " * $padding), ("$line3"), (" " * ($max[0]-($line3.Length))), (" " * $padding)) -BackgroundColor $bgColor -ForegroundColor $line3color;
Write-Host (("   " * $padding), ("$line2"), (" " * ($max[0]-($line2.Length))), (" " * $padding)) -BackgroundColor $bgColor -ForegroundColor $line2color;
Write-Host (("   " * $padding), ("$line4"), (" " * ($max[0]-3-($line4.Length)))) -BackgroundColor $bgColor -ForegroundColor $line4color;
# Write-Host (("   " * $padding), ("$line4"), (" " * ($max[0]-($line4.Length))), (" " * $padding)) -BackgroundColor $bgColor -ForegroundColor $line4color;
Write-Host (("   " * $padding), (" " * ($max[0]+1)), (" " * $padding)) -BackgroundColor $bgColor;
Write-Host (("   " * $padding), (" " * ($max[0]+1)), (" " * $padding)) -BackgroundColor $bgColor;
Write-Host " "
Write-Host " "
