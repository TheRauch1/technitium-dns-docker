FROM mcr.microsoft.com/dotnet/aspnet

WORKDIR /App

RUN apt update && apt install wget -y

RUN wget https://download.technitium.com/dns/DnsServerPortable.tar.gz && tar -zxf DnsServerPortable.tar.gz -C /App

ENTRYPOINT [ "dotnet", "/App/DnsServerApp.dll" ]

EXPOSE 53
EXPOSE 5380