
# OBJETIVO: TESTE
# Abrir 3 janelas e executar um program em cada janela
# os 3 programa deverão compartilhar o mesmo argumento $epochs



param (
    [string]$rounds,
    [string]$epochs
)

# passo 1 - Abre janela executa client_n1 com arg $epochs

$program = "client_n1.py"

$scriptToRun = "python " + $program

$pwshPath = [System.IO.Path]::Combine($env:SystemRoot, 'System32', 'WindowsPowerShell', 'v1.0', 'powershell.exe')

$arguments = @("-NoExit", "-File", $scriptToRun) + $epochs

Start-Process $pwshPath -ArgumentList $arguments

# passo 2 - Abre janela executa client_n2 com arg $epochs

$program = "client_n2.py"

$scriptToRun = "python " + $program

$pwshPath = [System.IO.Path]::Combine($env:SystemRoot, 'System32', 'WindowsPowerShell', 'v1.0', 'powershell.exe')

$arguments = @("-NoExit", "-File", $scriptToRun) + $epochs

Start-Process $pwshPath -ArgumentList $arguments


# passo 3 - Abre janela executa client_n3 com arg $epochs

$program = "client_n3.py"

$scriptToRun = "python " + $program

$pwshPath = [System.IO.Path]::Combine($env:SystemRoot, 'System32', 'WindowsPowerShell', 'v1.0', 'powershell.exe')

$arguments = @("-NoExit", "-File", $scriptToRun) + $epochs

Start-Process $pwshPath -ArgumentList $arguments

# executar
# .\script3.ps1  -rounds "#rounds" -epochs "#_epochs" 