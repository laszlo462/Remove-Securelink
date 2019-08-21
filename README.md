# Remove-Securelink

**Content**

* [Introduction](#intro)
* [Installation](#install)
* [Functions](#functions)
* [Usage Examples](#usage)
* [Versions and Updates](#version)

## <a name=intro>Introduction</a>
A simple Powershell module to facilitate quick removal of the Citrix SecureLink application.

When working with several remote customer clients, there are frequent crashes upon connect due to version incompatibility.  I wanted a quick way of running the uninstaller, without having to open Add/Remove programs, scroll to the entry, and then click uninstall.

## <a name=install>Installation</a>
Open Powershell and execute the following command to install this package using PowerShellGet:

```Install-Module -Name Remove-Securelink```

Then, to manually import the module, execute the following:

```Import-Module Remove-Securelink```

Or, add the above line to your Microsoft.PowerShell_profile.ps1 to automatically load the module whenever a Powershell terminal is opened.

## <a name="functions">Functions</a>

### Public functions
Remove-Securelink

### Private functions
Find-Securelink

Invoke-Uninstall


## <a name=usage>Usage Examples</a>
It is preferrable to add this module to your Powershell profile to auto-import the module when starting a Powershell console.

Simply execute ```Remove-Securelink``` at your Powershell prompt.  If SecureLink is installed in the typical location (%appdata%/Local/), it will be uninstalled.  If SecureLink is not present, it will let you know and not attempt to uninstall.

## <a name=version>Versions and Updates</a>
1.0.0 - Initial Release