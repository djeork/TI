# 📦 Suite de Despliegue Automatizado - NOVA TI

Este repositorio contiene herramientas y scripts interactivos desarrollados en PowerShell para la instalación masiva, configuración y soporte técnico optimizado de software esencial.

---

# 🚀 1. MICROSOFT OFFICE FIX (ACCESO DIRECTO)

Si solo necesitas solucionar el problema del canal de actualizaciones de Office de forma inmediata, ejecuta esta línea en **PowerShell como Administrador**:

```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; IRM [https://raw.githubusercontent.com/djeork/TI/main/Fix-OfficeChannel.ps1](https://raw.githubusercontent.com/djeork/TI/main/Fix-OfficeChannel.ps1) | IEX
Set-ExecutionPolicy Bypass -Scope Process -Force; IRM https://raw.githubusercontent.com/djeork/TI/main/instalar.ps1 | IEX
