# escape=`

FROM chocolatey/choco:latest-windows
WORKDIR c:\\BBR\\server
COPY .\src c:\\BBR\\src
COPY .\scripts c:\\BBR\\scripts
RUN choco install python --version=3.11.0 -y
RUN dir c:\BBR\server `
    dir c:\BBR\src `
    dir c:\BBR\scripts
CMD [ "powershell.exe", "-File", "c:\BBR\scripts\mk_env_file.ps1" ]
