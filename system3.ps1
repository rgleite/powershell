
param (
    [int]$rounds,
    [string]$epochs
)


# Caminho para o executável do PowerShell
$pwshPath = [System.IO.Path]::Combine($env:SystemRoot, 'System32', 'WindowsPowerShell', 'v1.0', 'powershell.exe')


# 1. Executar server com $rounds

$scriptToRun = "python server.py "
$scriptArgs = $rounds

$arguments = @("-NoExit", "-File", $scriptToRun) + $scriptArgs
Start-Process $pwshPath -ArgumentList $arguments


# 2.1 Executar client1 com $epochs

$scriptToRun = "python client_n1.py "
$scriptArgs = $epochs

$arguments = @("-NoExit", "-File", $scriptToRun) + $scriptArgs
Start-Process $pwshPath -ArgumentList $arguments


# 2.2 Executar client2 com $epochs

$scriptToRun = "python client_n2.py "
$scriptArgs = $epochs

$arguments = @("-NoExit", "-File", $scriptToRun) + $scriptArgs
Start-Process $pwshPath -ArgumentList $arguments


# 2.3 Executar client3 com $epochs

$scriptToRun = "python client_n3.py "
$scriptArgs = $epochs

$arguments = @("-NoExit", "-File", $scriptToRun) + $scriptArgs
Start-Process $pwshPath -ArgumentList $arguments




