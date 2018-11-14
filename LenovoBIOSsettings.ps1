<#
    .SYNOPSIS
        Script to set Lenovo BIOS settings.
    .DESCRIPTION
        The script accomplishes its task by creating an array of BIOS settings and then using Lenovo WMI classes to apply them.
#>
 
# BIOS settings in an array.
$BIOSSettings = @(
    "WakeOnLAN,ACOnly",
    "WakeOnLANDock,Enable",
    "SecurityChip,Active",
    "SecureBoot,Enable",
    "EthernetLANOptionROM,Enable",
    "SGXControl,Disable",
    "IPv4NetworkStack,Enable",
    "IPv6NetworkStack,Enable",
    "UefiPxeBootPriority,IPv4First",
    "ThunderboltSecurityLevel,NoSecurity",    #UserAuthorization  in the future
    "PreBootForThunderboltDevice,Enable",
    "WakeByThunderbolt,Enable",
    "AMTControl,Disable",
    "ThunderboltBIOSAssistMode,Disable"
	"MACAddressPassThrough, Enable"
	"USBBIOSSupport, Enable"
	"AdaptiveThermalManagementAC, MaximizePerformance"
	"AdaptiveThermalManagementBattery, Balanced"
	"TXTFeature, Disable"
	"PhysicalPresenceForTpmProvision, Disable"
	"PhysicalPresenceForTpmClear, Disable"
	"BootMode, Quick"


)
 
# Apply each setting.
ForEach ($Setting in $BIOSSettings) {
 
    (Get-WmiObject -Class Lenovo_SetBiosSetting –Namespace root\wmi).SetBiosSetting($Setting)
 
}
 
# Save BIOS settings.
(Get-WmiObject -Class Lenovo_SaveBiosSettings -Namespace root\wmi).SaveBiosSettings()