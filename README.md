# Solución al Error de Canal de Actualizaciones en Office

Este script de PowerShell soluciona el problema que impide instalar Microsoft Office debido a un conflicto o bloqueo con el "Canal de actualizaciones" de instalaciones previas.

## 🚀 Cómo usarlo

Para ejecutar este script, necesitas abrir PowerShell con permisos de administrador.

### Opción Rápida (Línea de comandos)
Abre PowerShell como **Administrador** y ejecuta el siguiente comando para correr el script directamente desde este repositorio:

```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; IRM [https://raw.githubusercontent.com/TU_USUARIO/TU_REPOSITORIO/main/Fix-OfficeChannel.ps1](```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; IRM [https://raw.githubusercontent.com/djeork/TI/main/Fix-OfficeChannel.ps1](https://raw.githubusercontent.com/djeork/TI/main/Fix-OfficeChannel.ps1) | IEX
```) | IEX
