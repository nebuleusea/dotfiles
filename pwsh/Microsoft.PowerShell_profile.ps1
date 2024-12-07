oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/jandedobbeleer.omp.json" | Invoke-Expression

function y {
    $tmp = [System.IO.Path]::GetTempFileName()
    yazi $args --cwd-file="$tmp"
    $cwd = Get-Content -Path $tmp
    if (-not [String]::IsNullOrEmpty($cwd) -and $cwd -ne $PWD.Path) {
        Set-Location -LiteralPath $cwd
    }
    Remove-Item -Path $tmp
}

function condaf {
    conda activate $(conda env list | fzf | gawk '{print $1}')
}

function setproxy {
    param (
        [int]$Port = 7890
    )
    $proxyUrl = "http://127.0.0.1:$Port"
    $env:http_proxy = $proxyUrl
    $env:https_proxy = $proxyUrl
    $env:ftp_proxy = $proxyUrl
}


function unsetproxy {
    $env:http_proxy = $null
    $env:https_proxy = $null
    $env:ftp_proxy = $null
}

