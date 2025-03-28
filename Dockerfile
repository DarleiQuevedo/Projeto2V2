# Use a imagem de runtime do .NET Core
# FROM mcr.microsoft.com/dotnet/core/sdk:3.1 AS build
# WORKDIR /app

# Copie o arquivo csproj e restaura as dependências
# COPY *.csproj ./
# RUN dotnet restore

# Copie o resto do código e compila
# COPY . ./
# RUN dotnet publish -c Release -o out

# Construa a imagem de runtime
FROM mcr.microsoft.com/dotnet/core/aspnet:6.0 AS runtime
WORKDIR /app

# Copiar os binários gerados na etapa de build
# COPY --from=build /app/out ./
COPY --from=build /codebuild/output/src1677695234/src/out/ ./

# Expõe a porta e inicia o aplicativo
EXPOSE 80

# Configurar o comando de inicialização
ENTRYPOINT ["dotnet", "MeuSite.dll"]
