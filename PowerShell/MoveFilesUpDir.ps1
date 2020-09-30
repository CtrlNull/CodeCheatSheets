v$Directory = dir D:\Temp\IMG\ -Directory
foreach ($d in $Directory) {
    Write-Host "Working on directory $($d.FullName)..."
    Get-ChildItem -Path "$($d.fullname)\*" -File -Recurse -filter '*.jpg' |
        Where{$_.Directory.Name -ne $_.Extension.TrimStart('.')}|
        ForEach-Object {
            $Dest = join-path $d.FullName $_.Extension.TrimStart('.')
            If (!(Test-Path -LiteralPath $Dest))
            {New-Item -Path $Dest -ItemType 'Directory' -Force|Out-Null}

            If(Test-Path ($FullDest = Join-Path $Dest $_.Name)){
                Write-Warning "Filename conflict moving:`n     $($_.FullName)`nTo:`n     $FullDest"
            }Else{
                Move-Item -Path $_.FullName -Destination $Dest -Verbose
            }
      }
}

