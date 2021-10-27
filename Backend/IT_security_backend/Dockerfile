#See https://aka.ms/containerfastmode to understand how Visual Studio uses this Dockerfile to build your images for faster debugging.

FROM mcr.microsoft.com/dotnet/aspnet:5.0 AS base
WORKDIR /app
EXPOSE 80
EXPOSE 443

FROM mcr.microsoft.com/dotnet/sdk:5.0 AS build
WORKDIR /src
COPY ["IT_security_backend/IT_security_api.csproj", "IT_security_backend/"]
COPY ["IT_security_bll/IT_security_bll.csproj", "IT_security_bll/"]
COPY ["IT_security_dal/IT_security_dal.csproj", "IT_security_dal/"]
COPY ["IT_security_common/IT_security_common.csproj", "IT_security_common/"]
RUN dotnet restore "IT_security_backend/IT_security_api.csproj"
COPY . .
WORKDIR "/src/IT_security_backend"
RUN dotnet build "IT_security_api.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "IT_security_api.csproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "IT_security_api.dll"]
