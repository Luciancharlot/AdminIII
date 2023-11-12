$userData = Import-Csv 'C:\Users\Administrator\Desktop\utilisateurs.csv'

foreach ($user in $userData) {
    $username = $user.username
    $password = $user.password
    $firstname = $user.firstname
    $lastname = $user.lastname

    New-ADUser -SamAccountName $username -UserPrincipalName "$username@grp34.lab" -GivenName $firstname -Surname $lastname -AccountPassword (ConvertTo-SecureString $password -AsPlainText -Force) -Enabled $true
    Write-Host "Utilisateur $username créé avec succès."
}
