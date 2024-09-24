param (
    [int]$numWindows,
    [string]$scriptToRun,
    [string[]]$scriptArgs
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
    # Construa a lista de argumentos para passar para o script
    $arguments = @("-NoExit", "-File", $scriptToRun) + $scriptArgs
    Start-Process $pwshPath -ArgumentList $arguments
}


# executar
# .\OpenWindowsAndRun.ps1 -numWindows 3 -scriptToRun "C:\Path\To\YourScript.ps1" -scriptArgs "arg1", "arg2"