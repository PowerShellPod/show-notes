param(
    [parameter(Mandatory)]
    $EpisodeName,

    [parameter(Mandatory)]
    $EpisodeNumber
)

$FileName = ($EpisodeName -split ' ' -join '-').tolower()

$params = @{
    TemplatePath    = './templates'
    DestinationPath = './episodes'
    EpisodeName     = $EpisodeName
    EpisodeNumber   = $EpisodeNumber
    FileName        = $FileName
    Verbose         = $true
}

Invoke-Plaster @params