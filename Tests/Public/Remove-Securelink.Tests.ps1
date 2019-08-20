$here = (Split-Path -Parent $MyInvocation.MyCommand.Path).Replace((Join-Path "Tests" Public), (Join-Path Remove-Securelink Public))
$sut = (Split-Path -Leaf $MyInvocation.MyCommand.Path).Replace(".Tests.", ".")

. (Join-Path $here $sut)

# To make test runable from project root, and from test directory itself. Do quick validation.
$testsPath = Join-Path "Tests" "Public"
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

    Describe "Remove-Securelink" {
        It "should inform if SecureLink is not present" {

        }
        It "should execute Invoke-Uninstall if SecureLink is present" {

        }

    }

}
