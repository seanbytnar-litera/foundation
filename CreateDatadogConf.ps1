if ( -Not (Test-Path "C:\ProgramData\Datadog\conf.d\Foundation-Api.d"))
{
    New-Item -Path "C:\ProgramData\Datadog\conf.d\Foundation-Api.d" -type directory | out-null
}
if ( -Not (Test-Path "C:\ProgramData\Datadog\conf.d\Foundation-App.d"))
{
    New-Item -Path "C:\ProgramData\Datadog\conf.d\Foundation-App.d" -type directory | out-null
}
if ( -Not (Test-Path "C:\ProgramData\Datadog\conf.d\Foundation-Import.d"))
{
    New-Item -Path "C:\ProgramData\Datadog\conf.d\Foundation-Import.d" -type directory | out-null
}
if ( -Not (Test-Path "C:\ProgramData\Datadog\conf.d\Foundation-Search.d"))
{
    New-Item -Path "C:\ProgramData\Datadog\conf.d\Foundation-Search.d" -type directory | out-null
}

new-item -path C:\ProgramData\Datadog\conf.d\Foundation-Api.d -name conf.yaml -type "file" -value 'logs:
  - type: file
    path: "c:/logs/fsg/foundation-api-logs.json"
    service: "Foundation-Api"
    source: "Foundation-Api"'
new-item -path C:\ProgramData\Datadog\conf.d\Foundation-App.d -name conf.yaml -type "file" -value 'logs:
  - type: file
    path: "c:/logs/fsg/foundation-app-logs.json"
    service: "Foundation-App"
    source: "Foundation-App"'
new-item -path C:\ProgramData\Datadog\conf.d\Foundation-Import.d -name conf.yaml -type "file" -value 'logs:
  - type: file
    path: "c:/logs/fsg/foundation-import-logs.json"
    service: "Foundation-Import"
    source: "Foundation-Import"'
new-item -path C:\ProgramData\Datadog\conf.d\Foundation-Search.d -name conf.yaml -type "file" -value 'logs:
  - type: file
    path: "c:/logs/fsg/foundation-search-logs.json"
    service: "Foundation-Search"
    source: "Foundation-Search"'