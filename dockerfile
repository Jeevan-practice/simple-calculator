from microsoft/dotner:sdk

workdir /app

copy *.csproj /app/
run dotnet restore

copy . /app/

run dotnet publish -c release -o out

workdir /out

entrypoint ["dotnet","Calculator.dll"]