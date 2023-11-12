$userData = Import-Csv 'C:\Users\Administrator\Desktop\utilisateurs.csv'

foreach ($user in $userData) {
    $firstname = $user.'Prénom'
    $lastname = $user.'Nom'
    $username = $user.'Nom Utilisateur'

    New-ADUser -SamAccountName $username -UserPrincipalName "$username@grp34.lab" -GivenName $firstname -Surname $lastname -Enabled $true
    Write-Host "Utilisateur $username créé avec succès."
}
