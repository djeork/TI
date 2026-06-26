<#
.SYNOPSIS
    Corrige el error de bloqueo por "Canal de Actualizaciones" al instalar Office.
.DESCRIPTION
    Este script elimina las claves del registro de Windows que fuerzan políticas
    antiguas de actualización de Office, permitiendo una instalación limpia.
#>

Write-Host "Iniciando limpieza de políticas de canal de Office..." -ForegroundColor Cyan

# Rutas de registro a limpiar
$PoliciesPath = "HKLM:\SOFTWARE\Policies\Microsoft\office\16.0\common\officeupdate"
$ConfigPath   = "HKLM:\SOFTWARE\Microsoft\Office\ClickToRun\Configuration"

# 1. Limpiar Directivas de Grupo (Policies)
if (Test-Path $PoliciesPath) {
    Write-Host "Limpiando políticas de actualización..." -ForegroundColor Yellow
    Remove-ItemProperty -Path $PoliciesPath -Name "updatebranch" -ErrorAction SilentlyContinue
    Remove-ItemProperty -Path $PoliciesPath -Name "branch" -ErrorAction SilentlyContinue
}

# 2. Limpiar Configuración de ClickToRun
if (Test-Path $ConfigPath) {
    Write-Host "Limpiando configuración ClickToRun residual..." -ForegroundColor Yellow
    Remove-ItemProperty -Path $ConfigPath -Name "UpdateChannel" -ErrorAction SilentlyContinue
    Remove-ItemProperty -Path $ConfigPath -Name "CDNBaseUrl" -ErrorAction SilentlyContinue
}

Write-Host "¡Proceso terminado! Se recomienda reiniciar el equipo antes de instalar Office." -ForegroundColor Green