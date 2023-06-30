
# oh-my-posh init pwsh  --config 'C:\Users\OkanT\AppData\Local\Programs\oh-my-posh\themes\tokyo.omp.json' | Invoke-Expression
# oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/kali.omp.json" | Invoke-Expression
#oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/ys.omp.json" | Invoke-Expression
# Import-Module posh-git
#Import-Module PSReadLine
#Import-Module -Name Terminal-Icons
# Set-PoshPrompt ys
# Set-PoshPrompt 1_shell
#Set-PSReadLineOption -PredictionSource History

Invoke-Expression (&starship init powershell)
$ENV:STARSHIP_CONFIG = "$HOME\.config\starship\bracketed-segments.toml"
macchina
#
# fnm env --use-on-cd | Out-String | Invoke-Expression

Set-Alias which where.exe
Set-Alias touch New-Item
Set-Alias ex iex.bat
#Set-Alias code code-insiders


Set-Alias vim nvim

#Set-Alias rename Rename-Item

#Set-Alias pwd lemao


#macchina --------
#macchina --custom-ascii C:\Users\OkanT\dev\macchina\skull.txt  --palette --custom-ascii-color Cyan --color blue --box-title simba
#
#
# latest:
# macchina --custom-ascii C:\Users\OkanT\dev\macchina\skull.txt  --palette --custom-ascii-color Cyan --color blue --box-title simba --hide OperatingSystem

function mc {
macchina --custom-ascii C:\Users\OkanT\Desktop\dev\configs\ascii\skull.txt --palette --custom-ascii-color Cyan --color blue --box-title simba $args
	# --hide OperatingSystem
}

# mc
#macchina --------
# add the --box-title ikebukuro if you want to
#
#Invoke-Expression (& { (zoxide init powershell | Out-String) })

function toshokan{ set-location "C:\Users\OkanT\Desktop\toshokan" }

function lsd
{
	cmd /c lsd -l --timesort -a $args
}
function lemao {
(Get-Location).Path
}


function dev {
	Set-Location "C:\Users\OkanT\Desktop\dev"
}

# function build{ cmake -G "MinGW Makefiles" $args }

function cl {
		clear && &$PROFILE
	}

function mkcd {
	mkdir $args && cd ./$args
}

function delete {
	rm -r -fo $args
}

$path 			= (Get-Location).Path
$curUser    = (Get-ChildItem Env:\USERNAME).Value
$curComp    = (Get-ChildItem Env:\COMPUTERNAME).Value
$pvmaj      = $Host.Version.Major
$pvmin      = $Host.Version.Minor
$psversion  = "$pvmaj.$pvmin"
$identity   = "$curUser@$curComp"
$dir 				= (Get-Location).Path
$currentDir = ((Get-Item .).Name).ToLower() 
# $wsettings = Env:LocalAppData\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.jso"
$wsettings = "$env:LocalAppData\Packages\Microsoft.WindowsTerminalPreview_8wekyb3d8bbwe\LocalState\settings.json"






#-----------------------------------------------------
# WINDOW TITLE
#-----------------------------------------------------
$Host.UI.RawUI.WindowTitle = "nyzs@$currentDir"
#-----------------------------------------------------


##-----------------------------------------------------
## CONFIG
## Edit following to your convenience
##-----------------------------------------------------
#$line1      = "⛩️ nyzs - 絶望的"    # First line
#$line2      = "🗻 Version $psversion"    # Second line
#$line3      = "👹 $identity"             # Third line
#$line4      = "🎌 がんばろう"         # Fourth line

## $line1color = "Cyan"                     # First line color
#$line1color = "DarkRed"                     # First line color
#$line2color = "White"                    # Second line color
#$line3color = "DarkMagenta"                   # Third line color
#$line4color = "Blue"                    # Fourth line color

#$bgColor    = 'DarkYellow'                  # Background Color
#$padding    = 1
##-----------------------------------------------------


## Calculate max length based on four lines above
#$lengths    = [array] $line1.tostring().Length, $line2.tostring().Length, $line3.tostring().Length, $line4.tostring().Length
#$size       = $lengths | measure -Maximum
#$max        = $size.Maximum


##-----------------------------------------------------
## WELCOME MESSAGE
##-----------------------------------------------------
#Write-Host " "
#Write-Host (("   " * $padding), (" " * ($max[0]+1)), (" " * $padding)) -BackgroundColor $bgColor;
#Write-Host (("   " * $padding), (" " * ($max[0]+1)), (" " * $padding)) -BackgroundColor $bgColor;
#Write-Host (("   " * $padding), ("$line1"), (" " * ($max[0]-($line1.Length))), (" " * $padding)) -BackgroundColor $bgColor -ForegroundColor $line1color;
#Write-Host (("   " * $padding), ("$line3"), (" " * ($max[0]-($line3.Length))), (" " * $padding)) -BackgroundColor $bgColor -ForegroundColor $line3color;
#Write-Host (("   " * $padding), ("$line2"), (" " * ($max[0]-($line2.Length))), (" " * $padding)) -BackgroundColor $bgColor -ForegroundColor $line2color;
#Write-Host (("   " * $padding), ("$line4"), (" " * ($max[0]-3-($line4.Length)))) -BackgroundColor $bgColor -ForegroundColor $line4color;
## Write-Host (("   " * $padding), ("$line4"), (" " * ($max[0]-($line4.Length))), (" " * $padding)) -BackgroundColor $bgColor -ForegroundColor $line4color;
#Write-Host (("   " * $padding), (" " * ($max[0]+1)), (" " * $padding)) -BackgroundColor $bgColor;
#Write-Host (("   " * $padding), (" " * ($max[0]+1)), (" " * $padding)) -BackgroundColor $bgColor;
#Write-Host " "
#Write-Host " "







