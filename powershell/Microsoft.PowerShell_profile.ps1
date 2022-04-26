# Prompt
Import-Module posh-git
Import-Module oh-my-posh
Set-PoshPrompt Takuya

# PSReadLine
Set-PSReadLineOption -PredictionSource History
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete

# Fzf
Import-Module PSFzf
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'

# Icons
Import-Module -Name Terminal-Icons

# Alias
Set-Alias vim nvim
