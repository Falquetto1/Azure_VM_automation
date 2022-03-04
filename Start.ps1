$azConn = Get-AutomationConnection -Name 'AzureRunAsConnection'
Add-AzureRMAccount -ServicePrincipal -Tenant $azConn.TenantID -ApplicationId $azConn.ApplicationId -CertificateThumbprint $azConn.CertificateThumbprint
$azVMs = Get-AzureRMVM | Where-Object {$_.Tags.Start -eq '5am'}
$azVMS | Start-AzureRMVM

