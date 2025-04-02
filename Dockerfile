# Use a imagem de runtime do .NET Core
FROM mcr.microsoft.com/dotnet/core/aspnet:3.1 AS runtime

# Define a pasta de Trabalho
WORKDIR /app

# Espoem a porta 80
EXPOSE 80

# Copia a aplicação já compilada
COPY out ./

# Define o comando de inicialização
ENTRYPOINT ["dotnet", "MeuSite.dll"]