
$PackageName='Input Package Name'
$VSTSFeedURL='VSTS Feed URL'
$AllVersion= .\NuGet.exe list $PackageName -Source $VSTSFeedURL -prerelease -allversions

Foreach ($data in   $AllVersion)
{
   $version=$data.Split(' ')[1]
   "Delete "+$version
    echo 是|.\NuGet.exe delete $PackageName $version -Source $VSTSFeedURL -ApiKey XXX
   "Delete OK"
}