# Use a imagem de runtime do .NET Core
FROM mcr.microsoft.com/dotnet/sdk:8.0

# Define a pasta de Trabalho
WORKDIR /app

# Espoem a porta 80
EXPOSE 80
EXPOSE 8080

# Copia a aplicação já compilada
COPY out ./

# Define o comando de inicialização
ENTRYPOINT ["dotnet", "MeuSite.dll"]