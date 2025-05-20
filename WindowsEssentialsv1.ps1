Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

#Janela Principal
$form = New-Object System.Windows.Forms.Form
$form.Text = "Windows Essentials v1.0"
$form.Size = New-Object System.Drawing.Size(320,280)
$form.StartPosition = "CenterScreen"


$button1 = New-Object System.Windows.Forms.Button
$button1.Location = New-Object System.Drawing.Point(12,12)
$button1.Size = New-Object System.Drawing.Size(75,23)
$button1.Text = "7zip"
$button1.Add_Click({
    [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
    $installerPath = "$env:TEMP\7zip.exe"
    Invoke-WebRequest -Uri "https://www.7-zip.org/a/6z2409-x64.exe" -OutFile $installerPath
        if (-Not (Test-Path $installerPath)) {
        [System.Windows.Forms.MessageBox]::Show(
        "Aviso!`nNão foi possível efetuar o download pelo site oficial.`nSerá feito download pelo link de emergencia.`n`nTenha ciência de que talvez o programa esteja desatualizado!",
        "Download Falhou!",
        [System.Windows.Forms.MessageBoxButtons]::OK,
        [System.Windows.Forms.MessageBoxIcon]::Warning
        )
        Invoke-WebRequest -Uri "https://www.dropbox.com/scl/fi/mxzy930l435b2nekh7jb3/7zip.exe?rlkey=vlfa2ewujvoejrjjsnim233xo&st=8kci0vmd&dl=1" -OutFile $installerPath
    }
    Start-Process $installerPath
})

# Botão 2
$button2 = New-Object System.Windows.Forms.Button
$button2.Location = New-Object System.Drawing.Point(12,41)
$button2.Size = New-Object System.Drawing.Size(75,23)
$button2.Text = "Discord"
$button2.Add_Click({
    $installerPath = "$env:TEMP\Discord.exe"
    Invoke-WebRequest -Uri "https://stable.dl2.discordapp.net/distro/app/stable/win/x64/1.0.9191/DiscordSetup.exe" -OutFile $installerPath
        if (-Not (Test-Path $installerPath)) {
        [System.Windows.Forms.MessageBox]::Show(
        "Aviso!`nNão foi possível efetuar o download pelo site oficial.`nSerá feito download pelo link de emergencia.`n`nTenha ciência de que talvez o programa esteja desatualizado!",
        "Download Falhou!",
        [System.Windows.Forms.MessageBoxButtons]::OK,
        [System.Windows.Forms.MessageBoxIcon]::Warning
        )
        Invoke-WebRequest -Uri "https://www.dropbox.com/scl/fi/iexl5meb6e4uhace8r60h/DiscordSetup.exe?rlkey=66szuqcji8crzhd49e6s85xe6&st=xevxz12e&dl=1" -OutFile $installerPath
    }
    Start-Process $installerPath
})

# Botão 3
$button3 = New-Object System.Windows.Forms.Button
$button3.Location = New-Object System.Drawing.Point(12,70)
$button3.Size = New-Object System.Drawing.Size(75,23)
$button3.Text = "VLC Player"
$button3.Add_Click({
    $installerPath = "$env:TEMP\Vlc.exe"
    Invoke-WebRequest -Uri "https://espejito.fder.edu.uy/videolan/vlc/3.0.21/win64/vlc-3.0.21-win64.exe" -OutFile $installerPath
        if (-Not (Test-Path $installerPath)) {
        [System.Windows.Forms.MessageBox]::Show(
        "Aviso!`nNão foi possível efetuar o download pelo site oficial.`nSerá feito download pelo link de emergencia.`n`nTenha ciência de que talvez o programa esteja desatualizado!",
        "Download Falhou!",
        [System.Windows.Forms.MessageBoxButtons]::OK,
        [System.Windows.Forms.MessageBoxIcon]::Warning
        )
        Invoke-WebRequest -Uri "https://www.dropbox.com/scl/fi/rzg6a4hcjip6hwm0avou3/vlc-3.0.21-win64.exe?rlkey=b5k03253t7204iitoibpudjn4&st=xpngwmev&dl=1" -OutFile $installerPath
    }
    Start-Process $installerPath
})

# Botão 4
$button4 = New-Object System.Windows.Forms.Button
$button4.Location = New-Object System.Drawing.Point(12,99)
$button4.Size = New-Object System.Drawing.Size(75,23)
$button4.Text = "Steam"
$button4.Add_Click({
    $installerPath = "$env:TEMP\Steam.exe"
    Invoke-WebRequest -Uri "https://cdn.fastly.steamstatic.com/client/installer/SteamSetup.exe" -OutFile $installerPath
        if (-Not (Test-Path $installerPath)) {
        [System.Windows.Forms.MessageBox]::Show(
        "Aviso!`nNão foi possível efetuar o download pelo site oficial.`nSerá feito download pelo link de emergencia.`n`nTenha ciência de que talvez o programa esteja desatualizado!",
        "Download Falhou!",
        [System.Windows.Forms.MessageBoxButtons]::OK,
        [System.Windows.Forms.MessageBoxIcon]::Warning
        )
        Invoke-WebRequest -Uri "https://www.dropbox.com/scl/fi/hfm2xnam8syjc6zck034y/SteamSetup.exe?rlkey=d3ess7m9sos7r4uvxsmgxtrs6&st=pa1z9k55&dl=1" -OutFile $installerPath
    }
    Start-Process $installerPath
})

# Botão 5
$button5 = New-Object System.Windows.Forms.Button
$button5.Location = New-Object System.Drawing.Point(12,128)
$button5.Size = New-Object System.Drawing.Size(75,23)
$button5.Text = "Telegram"
$button5.Add_Click({
    $installerPath = "$env:TEMP\Telegram.exe"
    Invoke-WebRequest -Uri "https://td.telegram.org/tx64/tsetup-x64.5.14.3.exe" -OutFile $installerPath
        if (-Not (Test-Path $installerPath)) {
        [System.Windows.Forms.MessageBox]::Show(
        "Aviso!`nNão foi possível efetuar o download pelo site oficial.`nSerá feito download pelo link de emergencia.`n`nTenha ciência de que talvez o programa esteja desatualizado!",
        "Download Falhou!",
        [System.Windows.Forms.MessageBoxButtons]::OK,
        [System.Windows.Forms.MessageBoxIcon]::Warning
        )
        Invoke-WebRequest -Uri "https://www.dropbox.com/scl/fi/7d45ildoh0q86wjgeumlv/tsetup-x64.5.14.3.exe?rlkey=zzqcmywrltgf55mc6i244o1n0&st=um62cd0v&dl=1" -OutFile $installerPath
    }
    Start-Process $installerPath
})

# Botão 6
$button6 = New-Object System.Windows.Forms.Button
$button6.Location = New-Object System.Drawing.Point(93,12)
$button6.Size = New-Object System.Drawing.Size(75,23)
$button6.Text = "Chrome"
$button6.Add_Click({
    $installerPath = "$env:TEMP\Chrome.exe"
    Invoke-WebRequest -Uri "https://www.dropbox.com/scl/fi/pr7vfrb9bxchhypvhhbsy/ChromeSetup.exe?rlkey=46pc5ik4qsxoy5xwnj1ca8fvw&st=7s4hqmom&dl=1" -OutFile $installerPath
        if (-Not (Test-Path $installerPath)) {
        [System.Windows.Forms.MessageBox]::Show(
        "Aviso!`nNão foi possível efetuar o download pelo site oficial.`nSerá feito download pelo link de emergencia.`n`nTenha ciência de que talvez o programa esteja desatualizado!",
        "Download Falhou!",
        [System.Windows.Forms.MessageBoxButtons]::OK,
        [System.Windows.Forms.MessageBoxIcon]::Warning
        )
        Start-Process "https://www.google.com"
    }
    Start-Process $installerPath
})

# Botão 7
$button7 = New-Object System.Windows.Forms.Button
$button7.Location = New-Object System.Drawing.Point(93,41)
$button7.Size = New-Object System.Drawing.Size(75,23)
$button7.Text = "MSI/RTSS"
$button7.Add_Click({
    $installerPath = "$env:TEMP\Afterburner.zip"
    Invoke-WebRequest -Uri "https://ftp.nluug.nl/pub/games/PC/guru3d/afterburner/[Guru3D]-MSIAfterburnerSetup466Beta5Build16555.zip" -OutFile $installerPath
        if (-Not (Test-Path $installerPath)) {
        [System.Windows.Forms.MessageBox]::Show(
        "Aviso!`nNão foi possível efetuar o download pelo site oficial.`nSerá feito download pelo link de emergencia.`n`nTenha ciência de que talvez o programa esteja desatualizado!",
        "Download Falhou!",
        [System.Windows.Forms.MessageBoxButtons]::OK,
        [System.Windows.Forms.MessageBoxIcon]::Warning
        )
        Invoke-WebRequest -Uri "https://www.dropbox.com/scl/fi/8dn8xetdhrakgxvmgtrnq/Guru3D-MSIAfterburnerSetup466Beta5Build16555.zip?rlkey=p32u18t82o8je99wqvh36kjiv&st=j53u0iq7&dl=1" -OutFile $installerPath
    }
    $temp = $env:TEMP
    $zipPath = Join-Path $temp "Afterburner.zip"
    $extractPath = Join-Path $temp "Afterburner"
    Expand-Archive -Path $zipPath -DestinationPath $extractPath -Force
    $instalador = Join-Path $env:TEMP "Afterburner\MSIAfterburnerSetup466Beta5.exe"
    Start-Process $instalador
    #Instala o Rivatunner Junto :3
    $installerPath2 = "$env:TEMP\RTSS.zip"
    Invoke-WebRequest -Uri "https://ftp.nluug.nl/pub/games/PC/guru3d/afterburner/[Guru3D.com]-RTSS.zip" -OutFile $installerPath2
    $zipPathRTSS = Join-Path $temp "RTSS.zip"
    $extractPathRTSS = Join-Path $temp "RTSS"
    Expand-Archive -Path $zipPathRTSS -DestinationPath $extractPathRTSS -Force
    $instaladorRTSS = Join-Path $env:TEMP "RTSS\RTSSSetup736.exe"
    Start-Process $instaladorRTSS
})

# Botão 8
$button8 = New-Object System.Windows.Forms.Button
$button8.Location = New-Object System.Drawing.Point(93,70)
$button8.Size = New-Object System.Drawing.Size(75,23)
$button8.Text = "Parsec"
$button8.Add_Click({
    $installerPath = "$env:TEMP\Parsec.exe"
    Invoke-WebRequest -Uri "https://builds.parsec.app/package/parsec-windows.exe" -OutFile $installerPath
        if (-Not (Test-Path $installerPath)) {
        [System.Windows.Forms.MessageBox]::Show(
        "Aviso!`nNão foi possível efetuar o download pelo site oficial.`nSerá feito download pelo link de emergencia.`n`nTenha ciência de que talvez o programa esteja desatualizado!",
        "Download Falhou!",
        [System.Windows.Forms.MessageBoxButtons]::OK,
        [System.Windows.Forms.MessageBoxIcon]::Warning
        )
        Invoke-WebRequest -Uri "https://www.dropbox.com/scl/fi/bjxw4k1hsiwnfgsjx03fv/parsec-windows.exe?rlkey=7xr6wwawwqw5zvnlviq25b1sr&st=l1jvlij1&dl=1" -OutFile $installerPath
    }
    Start-Process $installerPath
})

# Botão 9
$button9 = New-Object System.Windows.Forms.Button
$button9.Location = New-Object System.Drawing.Point(93,99)
$button9.Size = New-Object System.Drawing.Size(75,23)
$button9.Text = "Radmin"
$button9.Add_Click({
    $installerPath = "$env:TEMP\Radmin.exe"
    Invoke-WebRequest -Uri "https://download.radmin-vpn.com/download/files/Radmin_VPN_1.4.4642.1.exe" -OutFile $installerPath
        if (-Not (Test-Path $installerPath)) {
        [System.Windows.Forms.MessageBox]::Show(
        "Aviso!`nNão foi possível efetuar o download pelo site oficial.`nSerá feito download pelo link de emergencia.`n`nTenha ciência de que talvez o programa esteja desatualizado!",
        "Download Falhou!",
        [System.Windows.Forms.MessageBoxButtons]::OK,
        [System.Windows.Forms.MessageBoxIcon]::Warning
        )
        Invoke-WebRequest -Uri "https://www.dropbox.com/scl/fi/gvmwoqa0wbp8ewr2fa730/Radmin_VPN_1.4.4642.1.exe?rlkey=xetsxz3q9crmol0a2w7rb1694&st=fqfq54g0&dl=1" -OutFile $installerPath
    }
    Start-Process $installerPath
})

# Botão 10
$button10 = New-Object System.Windows.Forms.Button
$button10.Location = New-Object System.Drawing.Point(93,128)
$button10.Size = New-Object System.Drawing.Size(75,23)
$button10.Text = "Stremio"
$button10.Add_Click({
    $installerPath = "$env:TEMP\Stremio.exe"
    Invoke-WebRequest -Uri "https://dl.strem.io/stremio-shell-ng/v5.0.5/StremioSetup-v5.0.5.exe" -OutFile $installerPath
        if (-Not (Test-Path $installerPath)) {
        [System.Windows.Forms.MessageBox]::Show(
        "Aviso!`nNão foi possível efetuar o download pelo site oficial.`nSerá feito download pelo link de emergencia.`n`nTenha ciência de que talvez o programa esteja desatualizado!",
        "Download Falhou!",
        [System.Windows.Forms.MessageBoxButtons]::OK,
        [System.Windows.Forms.MessageBoxIcon]::Warning
        )
        Invoke-WebRequest -Uri "https://www.dropbox.com/scl/fi/uq62szhbnzp1kq8wo6yc0/StremioSetup-v5.0.5.exe?rlkey=uab1o1ijoi3ftebppxubpstnu&st=rjca5qm0&dl=1" -OutFile $installerPath
    }
    Start-Process $installerPath
})


# Botão 11
$button11 = New-Object System.Windows.Forms.Button
$button11.Location = New-Object System.Drawing.Point(174,12)
$button11.Size = New-Object System.Drawing.Size(75,23)
$button11.Text = "Spotify"
$button11.Add_Click({
    $installerPath = "$env:TEMP\Spotify.exe"
    Invoke-WebRequest -Uri "https://download.scdn.co/SpotifySetup.exe" -OutFile $installerPath
        if (-Not (Test-Path $installerPath)) {
        [System.Windows.Forms.MessageBox]::Show(
        "Aviso!`nNão foi possível efetuar o download pelo site oficial.`nSerá feito download pelo link de emergencia.`n`nTenha ciência de que talvez o programa esteja desatualizado!",
        "Download Falhou!",
        [System.Windows.Forms.MessageBoxButtons]::OK,
        [System.Windows.Forms.MessageBoxIcon]::Warning
        )
        Invoke-WebRequest -Uri "https://www.dropbox.com/scl/fi/c15frzd6ham1o3ggeqdsd/SpotifySetup.exe?rlkey=itf8073plo1lavcj8mgui2i87&st=sevl766t&dl=1" -OutFile $installerPath
    }
    Start-Process $installerPath
})

# Botão 12
$button12 = New-Object System.Windows.Forms.Button
$button12.Location = New-Object System.Drawing.Point(174,41)
$button12.Size = New-Object System.Drawing.Size(75,23)
$button12.Text = "D/Nvidia"
$button12.Add_Click({
    $installerPath = "$env:TEMP\Nvidia.exe"
    Invoke-WebRequest -Uri "https://us.download.nvidia.com/Windows/576.52/576.52-notebook-win10-win11-64bit-international-dch-whql.exe" -OutFile $installerPath
        if (-Not (Test-Path $installerPath)) {
        [System.Windows.Forms.MessageBox]::Show(
        "Aviso!`nNão foi possível efetuar o download pelo site oficial.`nSerá feito download pelo link de emergencia.`n`nTenha ciência de que talvez o programa esteja desatualizado!",
        "Download Falhou!",
        [System.Windows.Forms.MessageBoxButtons]::OK,
        [System.Windows.Forms.MessageBoxIcon]::Warning
        )
        Invoke-WebRequest -Uri "https://www.dropbox.com/scl/fi/qlgmp84tl2sf1sq71cjzk/576.52-notebook-win10-win11-64bit-international-dch-whql.exe?rlkey=c60wdrzjvoanj1ihi8qk4he8s&st=aj0e90vk&dl=1" -OutFile $installerPath
    }
    Start-Process $installerPath
})

# Botão 13
$button13 = New-Object System.Windows.Forms.Button
$button13.Location = New-Object System.Drawing.Point(174,70)
$button13.Size = New-Object System.Drawing.Size(75,23)
$button13.Text = "D/AMD"
$button13.Add_Click({
    $installerPath = "$env:TEMP\AMD.exe"
    Invoke-WebRequest -Uri "https://drivers.amd.com/drivers/whql-amd-software-adrenalin-edition-25.5.1-win10-win11-may8-rdna.exe" -OutFile $installerPath
        if (-Not (Test-Path $installerPath)) {
        [System.Windows.Forms.MessageBox]::Show(
        "Aviso!`nNão foi possível efetuar o download pelo site oficial.`nSerá feito download pelo link de emergencia.`n`nTenha ciência de que talvez o programa esteja desatualizado!",
        "Download Falhou!",
        [System.Windows.Forms.MessageBoxButtons]::OK,
        [System.Windows.Forms.MessageBoxIcon]::Warning
        )
        Invoke-WebRequest -Uri "https://www.dropbox.com/scl/fi/rm3liw9ojtbaamngdm14o/whql-amd-software-adrenalin-edition-25.5.1-win10-win11-may8-rdna.exe?rlkey=k8tfczazh6t5bex2y34i3u5lo&st=dvo5pwma&dl=1" -OutFile $installerPath
    }
    Start-Process $installerPath
})

# Botão 14
$button14 = New-Object System.Windows.Forms.Button
$button14.Location = New-Object System.Drawing.Point(174,99)
$button14.Size = New-Object System.Drawing.Size(75,23)
$button14.Text = "null"
$button14.Add_Click({
    [System.Windows.Forms.MessageBox]::Show((Get-Date).ToString(), "Data e Hora")
})

# Botão 15
$button15 = New-Object System.Windows.Forms.Button
$button15.Location = New-Object System.Drawing.Point(174,128)
$button15.Size = New-Object System.Drawing.Size(75,23)
$button15.Text = "null"
$button15.Add_Click({
    [System.Windows.Forms.MessageBox]::Show((Get-Date).ToString(), "Data e Hora")
})

# Botão Sair
$exitButton = New-Object System.Windows.Forms.Button
$exitButton.Location = New-Object System.Drawing.Point(174,192)
$exitButton.Size = New-Object System.Drawing.Size(75,23)
$exitButton.Text = "Sair"
$exitButton.Add_Click({
    $form.Close()
})

# Adicionar os botões ao formulário
$form.Controls.Add($button1)
$form.Controls.Add($button2)
$form.Controls.Add($button3)
$form.Controls.Add($button4)
$form.Controls.Add($button5)
$form.Controls.Add($button6)
$form.Controls.Add($button7)
$form.Controls.Add($button8)
$form.Controls.Add($button9)
$form.Controls.Add($button10)
$form.Controls.Add($button11)
$form.Controls.Add($button12)
$form.Controls.Add($button13)
$form.Controls.Add($button14)
$form.Controls.Add($button15)
$form.Controls.Add($exitButton)

# Exibir o formulário
[void]$form.ShowDialog()
