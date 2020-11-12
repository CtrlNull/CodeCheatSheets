# SCRCPY  [[ Phone connection ]]
[Scrcpy Documentation](https://github.com/Genymobile/scrcpy)
#### Screen off and Doesnt close
```scrcpy --stay-awake --turn-screed-off```
```scrcpy -w -S```
```scrcpy -Sw```
#### FullScreen
```scrcpy -f```


# DOCKER
[MS Docker Documentation](https://docs.microsoft.com/en-us/sql/linux/quickstart-install-connect-docker?view=sql-server-ver15&pivots=cs1-bash)

#### Create Docker

```Bash
sudo docker run -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=doesntMatter" \
   -p 1433:1433 --name FonzDB -h FonzDB \
   -d mcr.microsoft.com/mssql/server:2019-latest
```
# 