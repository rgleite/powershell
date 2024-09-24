
param (
    [string]$arg1,
    [string]$arg2
)







Write-Host "Argumento 1: $arg1"

Write-Host "Argumento 2: $arg2"

Write-Host "Executando programa python com argumentos lidos pelos script powershell"

python testepy.py $arg1 $arg2
