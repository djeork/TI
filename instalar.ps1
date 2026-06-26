# Mensaje inicial en la consola del cliente
Write-Host "Cargando el asistente de instalacion de NOVA TI..." -ForegroundColor Cyan

# 1. Definición del menú de programas (aquí podrás añadir más filas en el futuro)
$Programas = @(
    [PSCustomObject]@{ 
        Opción = 1; 
        Nombre = "Google Chrome Enterprise"; 
        ID_Drive = "1m2cwq8ZhB55ZP7EndPCQEXnSIUJuXySC"; 
        Ext = "exe"; 
        Args = "/silent /install" 
    }
)

# 2. Abrir ventana interactiva para que el usuario seleccione el programa
$Seleccionados = $Programas | Out-GridView -Title "Selecciona los programas a instalar de NOVA TI" -PassThru

# 3. Validar si el usuario seleccionó algo
if ($null -eq $Seleccionados) {
    Write-Host "No seleccionaste ningún programa. Operación cancelada." -ForegroundColor Yellow
    Exit
}

# 4. Procesar e instalar los programas seleccionados
foreach ($Prog in $Seleccionados) {
    Write-Host "--------------------------------------------------" -ForegroundColor Gray
    Write-Host "Preparando: $($Prog.Nombre)" -ForegroundColor Green
    
    # Ruta temporal en la PC donde se descargará el instalador
    $RutaTemporal = "$env:TEMP\$($Prog.Nombre.Replace(' ','_')).$($Prog.Ext)"
    $UrlDescarga = "https://drive.google.com/uc?export=download&id=$($Prog.ID_Drive)"
    
    Write-Host "Descargando desde Google Drive..." -ForegroundColor Yellow
    try {
        # Descarga el archivo de Drive de forma silenciosa
        Invoke-WebRequest -Uri $UrlDescarga -OutFile $RutaTemporal -ErrorAction Stop
        
        Write-Host "Instalando $($Prog.Nombre) de forma silenciosa..." -ForegroundColor Yellow
        # Ejecuta el instalador y espera a que termine
        $Proceso = Start-Process -FilePath $RutaTemporal -ArgumentList $Prog.Args -Wait -PassThru -NoNewWindow
        
        # Elimina el instalador temporal para no dejar basura en el disco
        Remove-Item $RutaTemporal -Force -ErrorAction SilentlyContinue
        Write-Host "¡$($Prog.Nombre) se instalo correctamente!" -ForegroundColor Green
    } 
    catch {
        Write-Host "Error al procesar $($Prog.Nombre): $_" -ForegroundColor Red
    }
}

Write-Host "--------------------------------------------------" -ForegroundColor Gray
Write-Host "Proceso finalizado por NOVA TI." -ForegroundColor Cyan
