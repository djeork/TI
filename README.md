# 🛠️ Script de Instalación Automatizada de Software

Este repositorio contiene scripts interactivos en PowerShell que te permiten descargar, instalar y reparar herramientas esenciales de forma masiva y silenciosa.

<p align="center">
  <img src="https://novati.pe/wp-content/uploads/2026/06/LOGO-2026-06.png#865" alt="NOVA TI S.A.C." width="300">
</p>

---

## 🚀 Microsoft Office Fix 

Si solo necesitas solucionar el problema del canal de actualizaciones de Office de forma inmediata, ejecuta esta línea en **PowerShell como Administrador**:

```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; IRM https://raw.githubusercontent.com/djeork/TI/main/Fix-OfficeChannel.ps1| IEX
 
## 🚀 Instalador de Aplicaciones

Si quieres abrir el menú interactivo para elegir e instalar navegadores u otras utilidades (como Google Chrome), utiliza esta línea de comandos en PowerShell como Administrador:

Set-ExecutionPolicy Bypass -Scope Process -Force; IRM [https://raw.githubusercontent.com/djeork/TI/main/instalar.ps1](https://raw.githubusercontent.com/djeork/TI/main/instalar.ps1) | IEX
