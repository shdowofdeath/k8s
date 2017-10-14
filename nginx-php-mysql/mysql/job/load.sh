echo updating apk
apk update 
echo install mysql-client 
apk add mysql-client 
echo creating TABLE and updating 
mysqladmin -u root -ppassword -h mysql  create myDB 
mysql -u root -ppassword -h mysql -e 'CREATE TABLE MyGuests (id int ,firstname VARCHAR(20), lastname VARCHAR(20))' myDB
mysql -u root -ppassword -h mysql -e 'INSERT INTO MyGuests (id,firstname,lastname) VALUES('1',"miki","hayut");'  myDB
mysql -u root -ppassword -h mysql -e 'INSERT INTO MyGuests (id,firstname,lastname) VALUES('2',"miki1","ha");'  myDB
mysql -u root -ppassword -h mysql -e 'INSERT INTO MyGuests (id,firstname,lastname) VALUES('3',"miki2","hay");'  myDB 
