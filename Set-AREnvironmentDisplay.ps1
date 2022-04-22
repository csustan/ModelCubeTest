param (
    [Parameter(Mandatory=$true)]
    [string]$AppName,
    [Parameter(Mandatory=$true)]
    [string]$Site
   )

# Add some more file types
Add-WebConfigurationProperty -PSPath "MACHINE/WEBROOT/APPHOST/$Site/$AppName" -Filter "system.webServer/security/requestFiltering/fileExtensions" -Name "." -Value @{fileExtension='.dat'}
Add-WebConfigurationProperty -PSPath "MACHINE/WEBROOT/APPHOST/$Site/$AppName" -Filter "system.webServer/security/requestFiltering/fileExtensions" -Name "." -Value @{fileExtension='.mtl'}
Add-WebConfigurationProperty -PSPath "MACHINE/WEBROOT/APPHOST/$Site/$AppName" -Filter "system.webServer/security/requestFiltering/fileExtensions" -Name "." -Value @{fileExtension='.obj'}
Add-WebConfigurationProperty -PSPath "MACHINE/WEBROOT/APPHOST/$Site/$AppName" -Filter "system.webServer/security/requestFiltering/fileExtensions" -Name "." -Value @{fileExtension='.patt'}

# Add new Mime Type
Add-WebConfigurationProperty -PSPath 'MACHINE/WEBROOT/APPHOST/$Site/$AppName' -Filter "system.webServer/staticContent" -Name "." -Value @{fileExtension='.dat';mimeType='application/octet-stream'}