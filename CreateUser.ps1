$userData = Import-Csv 'C:\Users\Administrator\Desktop\utilisateurs.csv'

foreach ($user in $userData) {
    $firstname = $user.'Prenom'
    $lastname = $user.'Nom'
    $username = $user.'NomUtilisateur'
    $completename = $user.'Complet'
    $password $vser = $user.'password'

    New-ADUser -SamAccountName $username -UserPrincipalName "$username@grp34.lab" -GivenName $firstname -Surname $lastname -Name $lastname -AccountPassword (convertTo.SecureString $password -AsPlainText -Force) -Enabled $true
    Write-Host "Utilisateur $username créé avec succès."
}
