FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /app

COPY /DockerDependencyTest/DockerDependencyTest.csproj ./
RUN dotnet restore

COPY . ./
ADD https://github.com/ufoscout/docker-compose-wait/releases/download/2.12.1/wait /wait
RUN chmod +x /wait

CMD /wait && dotnet test --logger trx --results-directory /var/temp