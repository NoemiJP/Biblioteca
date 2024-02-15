echo "noemi" | sudo -S mysql -u root -p alumno -e "SET GLOBAL
time_zone = '+3:00';"
echo "noemi" | sudo -S mysql -u root -p alumno -e "create database
biblioteca;"
echo "noemi" | sudo -S mysql -u root -p alumno -e "create user
bibliotecario identified by 'bibliotecario';"
echo "noemi" | sudo -S mysql -u root -p alumno -e "grant all
privileges on biblioteca.* to 'bibliotecario';"
echo "noemi" | sudo -S mysql -u root -p alumno -D biblioteca -e
"create table libros (isbn INT(13) primary key, titulo varchar(30) not
null, autor varchar(30) not null);"
