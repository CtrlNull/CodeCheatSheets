## Installing Docker

```bash
sudo pacman -S docker
```

### Create daemon 

```bash
systemctl enable docker
systemctl start docker
```

### Sql Server installation

[Install Guide](https://hub.docker.com/_/microsoft-mssql-server)

```bash
sudo docker pull mcr.microsoft.com/mssql/server
```

Run the server
```bash
docker run -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=ThisIsLocalHost' -p 1433:1433 -d mcr.microsoft.com/mssql/server:2017-latest
```

Connect to it

```Bash
docker exec -it <container_id|container_name> /opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P ThisIsLocalHost

```