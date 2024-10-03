
# SCRIPT3.PS1 
# Este script está com erro


param (
    [string]$rounds,
    [string]$epochs
)

# passo 1 - Abre janela executa client_n1 com arg $epochs

$program = "client_n1.py"

$scriptToRun = ".\\python.exe " + $program

# $pwshPath = [System.IO.Path]::Combine($env:SystemRoot, 'System32', 'WindowsPowerShell', 'v1.0', 'powershell.exe')

$arguments = @("-NoExit", "-File", $scriptToRun) + $epochs

# Start-Process $pwshPath -ArgumentList $arguments

Start-Process -ArgumentList $arguments


# .\script4.ps1 -rounds 5 -epochs 10



