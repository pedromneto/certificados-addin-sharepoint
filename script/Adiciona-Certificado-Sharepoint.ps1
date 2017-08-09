Clear-Host
if((Get-PSSnapin Microsoft.SharePoint.PowerShell -ErrorAction SilentlyContinue) -eq $null){
    Write-Host 'Carregando snapin SharePoint.PowerShell' -ForegroundColor White
    Add-PSSnapin Microsoft.SharePoint.PowerShell 
    Write-Host 'Carregamento concluído' -ForegroundColor Green
}
else{
    Write-Host 'Snapin SharePoint carregado' -ForegroundColor White
}

#--------------- Parametros ---------------

$caminhoCertificado = "C:\certificado\Addins\Cert\Certificado-Unica-App.cer"

$nomeCerficado ="Certificado Unico Addin"

#-----------------------------------------

$cert = New-Object System.Security.Cryptography.X509Certificates.X509Certificate2($caminhoCertificado)

New-SPTrustedRootAuthority -Name $nomeCerficado -Certificate $cert