function Get-RegistryProperties {
    param(
        [Parameter(Mandatory=$true)]
        [string]$Key
    )
    
    Push-Location
    Set-Location -Path $Key
    $object = Get-ItemProperty * 
    Pop-Location
    Write-Output -InputObject $object
}