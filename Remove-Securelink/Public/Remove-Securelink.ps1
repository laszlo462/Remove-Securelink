<#
.SYNOPSIS
    Remove SecureLink Connection Manager

.DESCRIPTION
    If an existing installation of the Citrix SecureLink Connection Manager is present on the system, it will be uninstalled.
#>
function Remove-Securelink
{
    [CmdletBinding()]
    param(

    )

    process
    {
        # Initialize SecureLink path variable
        $slPath = "C:\Users\$env:USERNAME\AppData\Local\SecureLink"

        # First check that SecureLink is indeed present.
        if (Find-Securelink($slPath))
        {
            Invoke-Uninstall($slPath)
        }
        else
        {
            Write-Host "SecureLink not present"
        }

    }
}
