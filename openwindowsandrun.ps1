
param (
    [int]$numWindows,
    [string]$scriptToRun
)

# Verifica se o número de janelas é válido
if ($numWindows -le 0) {
    Write-Host "O número de janelas deve ser um valor positivo."
    exit
}

# Verifica se o script a ser executado existe
if (-Not (Test-Path $scriptToRun)) {
    Write-Host "O script especificado não foi encontrado: $scriptToRun"
    exit
}

# Caminho para o executável do PowerShell
$pwshPath = [System.IO.Path]::Combine($env:SystemRoot, 'System32', 'WindowsPowerShell', 'v1.0', 'powershell.exe')

for ($i = 1; $i -le $numWindows; $i++) {
    Start-Process $pwshPath -ArgumentList "-NoExit", "-File", $scriptToRun
}