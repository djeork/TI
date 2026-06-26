## 🚀 Microsoft Office Fix (Acceso Directo)

Si solo necesitas solucionar el problema del canal de actualizaciones de Office de forma inmediata, ejecuta esta línea en **PowerShell como Administrador**:

```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; IRM [https://raw.githubusercontent.com/djeork/TI/main/Fix-OfficeChannel.ps1](https://raw.githubusercontent.com/djeork/TI/main/Fix-OfficeChannel.ps1) | IEX
