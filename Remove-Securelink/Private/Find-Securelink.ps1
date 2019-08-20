<#
.SYNOPSIS
    Find Securelink
.DESCRIPTION
    Function to verify SecureLink is present
#>
function Find-Securelink
{
    [CmdletBinding()]
    param(
        $slPath
    )

    process
    {
        if (Test-Path "$slPath\SecureLinkCM.exe" -PathType Leaf)
        {
            return $true
        }
        else { return $false }

    }
}
