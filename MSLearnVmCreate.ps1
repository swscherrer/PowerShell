Import-Module -Name Az

Connect-AzAccount

$vmName = "WingtiptoysVM"
$resourceGroup = "WingtiptoysRG"

$adminCredential = Get-Credential -Message "Enter a username and password for the VM administrator."

New-AzVm -ResourceGroup $resourceGroup -Name $vmName -Credential $adminCredential -Image UbuntuLTS