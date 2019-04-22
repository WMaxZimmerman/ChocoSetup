function Pin-App {    param(
        [string]$appname,
        [switch]$unpin
    )
    try{
        if ($unpin.IsPresent){
            ((New-Object -Com Shell.Application).NameSpace('shell:::{4234d49b-0245-4df3-b780-3893943456e1}').Items() | ?{$_.Name -eq $appname}).Verbs() | ?{$_.Name.replace('&','') -match 'Von "Start" lösen|Unpin from Start'} | %{$_.DoIt()}
            return "App '$appname' unpinned from Start"
        }else{
            ((New-Object -Com Shell.Application).NameSpace('shell:::{4234d49b-0245-4df3-b780-3893943456e1}').Items() | ?{$_.Name -eq $appname}).Verbs() | ?{$_.Name.replace('&','') -match 'An "Start" anheften|Pin to Start'} | %{$_.DoIt()}
            return "App '$appname' pinned to Start"
        }
    }catch{
        Write-Error "Error Pinning/Unpinning App! (App-Name correct?)"
    }
}

Pin-App "Mail" -unpin
Pin-App "Calendar" -unpin
Pin-App "Microsoft Edge" -unpin
Pin-App "Photos" -unpin
Pin-App "Cortana" -unpin
Pin-App "Weather" -unpin
Pin-App "xbox" -unpin
Pin-App "Groove music" -unpin
Pin-App "movies & tv" -unpin
Pin-App "microsoft solitaire collection" -unpin
Pin-App "onenote" -unpin
Pin-App "Candy Crush Friends" -unpin
Pin-App "Candy Crush Saga" -unpin
Pin-App "Cooking Fever" -unpin
Pin-App "Surface" -unpin
Pin-App "Drawboard PDF" -unpin
Pin-App "Calculator" -unpin
Pin-App "Maps" -unpin
Pin-App "The New York Times Crossword" -unpin
Pin-App "Fresh Paint" -unpin
Pin-App "Flipboard" -unpin
Pin-App "Paint 3D" -unpin
Pin-App "Microsoft News" -unpin
Pin-App "Skype" -unpin
Pin-App "Microsoft Store" -unpin
Pin-App "Office" -unpin
Pin-App "Word 2016" -unpin
Pin-App "Excel 2016" -unpin
Pin-App "PowerPoint 2016" -unpin

Pin-App "Gardenscapes" -unpin
Pin-App "Asphalt Street Storm Racing" -unpin
Pin-App "Netflix" -unpin
Pin-App "Dolby Access" -unpin
Pin-App "Spotify Music" -unpin