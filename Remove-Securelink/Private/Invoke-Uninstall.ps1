<#
.SYNOPSIS
    Invoke Uninstall
.DESCRIPTION
    Function to perform the SecureLink uninstallation if present on the system.
#>
function Invoke-Uninstall
{
    [CmdletBinding()]
    param(
        $slPath
    )

    process
    {
        Start-Process -FilePath "$slPath\SecureLinkCM.exe" -ArgumentList "-uninstall" -Wait -NoNewWindow
        if (!Find-Securelink($slPath))
        {
            Write-Host "Success"
        }
    }
}