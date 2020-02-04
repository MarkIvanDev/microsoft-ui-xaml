$pgoBranch           = "master"
$packageId           = "MUXPGODatabase-test"

# Get release version
[xml] $customProps   = ( Get-Content "..\..\version.props" )
$releaseVersionMajor = ( [int]::Parse( $customProps.GetElementsByTagName("MUXVersionMajor").'#text' ) )
$releaseVersionMinor = ( [int]::Parse( $customProps.GetElementsByTagName("MUXVersionMinor").'#text' ) )