# 🛠️ Script de Instalación Automatizada de Software

Este repositorio contiene scripts interactivos en PowerShell que te permiten descargar, instalar y reparar herramientas esenciales de forma masiva y silenciosa.

<p align="center">
  <img src="https://novati.pe/wp-content/uploads/2023/11/logo-nova-ti-300x129.png" alt="NOVA TI S.A.C." width="300">
</p>

---

## 🚀 Microsoft Office Fix (Acceso Directo)

Si solo necesitas solucionar el problema del canal de actualizaciones de Office de forma inmediata, ejecuta esta línea en **PowerShell como Administrador**:

```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; IRM [https://raw.githubusercontent.com/djeork/TI/main/Fix-OfficeChannel.ps1](https://raw.githubusercontent.com/djeork/TI/main/Fix-OfficeChannel.ps1) | IEX
