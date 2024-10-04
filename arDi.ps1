#Get all directory in home
$allDir = Get-childItem -Path ~ -directory

#find all directory that match a specific pattern
foreach ($dir in $allDir){
    if($dir.Name -like "?_*"){
        #create the archive name
        $archiveName = $dir.Name+".zip"
        #create the archive
        Compress-Archive -Path $dir.FullName -DestinationPath ~\$archiveName

    }
}