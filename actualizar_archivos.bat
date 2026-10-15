@echo off
setlocal
cd /d "%~dp0"
echo Actualizando catalogo local de Recursos, incluidas subcarpetas...
powershell.exe -NoProfile -ExecutionPolicy Bypass -Command "$ErrorActionPreference = 'Stop'; $raiz = (Get-Location).Path.TrimEnd('\'); $excluidos = '^(index([.]|$)|leame([._ -]|$)|readme([._ -]|$)|actualizar([._ -]|$)|archivos([._ -]|$)|palabras([._ -]|$)|catalogo([._ -]|$)|license([.]|$)|[.]nojekyll$|[.]gitignore$|[.]ds_store$|recursos_web_arley_zarate([._ -]|$))'; $lista = @(Get-ChildItem -LiteralPath $raiz -File -Recurse | ForEach-Object { $ruta = $_.FullName.Substring($raiz.Length + 1).Replace('\','/'); $partes = $ruta -split '/'; $interna = @($partes | Where-Object { $_ -like '.*' -or $_ -in @('node_modules', '__pycache__') }).Count -gt 0; $esIndiceAplicacion = $_.Name -ieq 'index.html' -and $partes.Count -gt 1; if (-not $interna -and ($esIndiceAplicacion -or $_.Name -notmatch $excluidos)) { $ruta } } | Sort-Object -Unique); $json = ConvertTo-Json -InputObject $lista -Compress; Set-Content -LiteralPath 'archivos.js' -Value ('window.RECURSOS_ARCHIVOS = ' + $json + ';') -Encoding UTF8; Write-Host ('Archivos disponibles: ' + $lista.Count)"
if errorlevel 1 (
  echo No se pudo actualizar archivos.js.
  pause
  exit /b 1
)
echo Catalogo actualizado. Abra o recargue index.html.
pause
