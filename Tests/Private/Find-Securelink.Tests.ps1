$here = (Split-Path -Parent $MyInvocation.MyCommand.Path).Replace((Join-Path "Tests" Private), (Join-Path Remove-Securelink Private))
$sut = (Split-Path -Leaf $MyInvocation.MyCommand.Path).Replace(".Tests.", ".")

. (Join-Path $here $sut)

# To make test runable from project root, and from test directory itself. Do quick validation.
$testsPath = Join-Path "Tests" "Private"
if ((Get-Location).Path -match [Regex]::Escape($testsPath))
{
    $psmPath = (Resolve-Path "..\..\Remove-Securelink\Remove-Securelink.psm1").Path
}
else
{
    $psmPath = (Resolve-Path ".\Remove-Securelink\Remove-Securelink.psm1").Path
}

Import-Module $psmPath -Force -NoClobber

InModuleScope "Remove-Securelink" {

    Describe "Find-Securelink" {
        It "should return $true if SecureLinkCM.exe is present" {
            $slPath = "C:\Users\$env:USERNAME\AppData\Local\SecureLink"
            Find-Securelink($slPath) | Should be $true
        }

        It "should return $false if SecureLinkCM.exe is not present" {
            $slWrongPath = "C:\Users\$env:USERNAME\AppData\Local"
            Find-Securelink($slWrongPath) | Should be $false
        }

    }

}
