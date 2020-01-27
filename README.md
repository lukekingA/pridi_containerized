# pridi_containerized

1. Make sure that you have bower and grunt and composer installed.

2. Add the files in the repo to the base of the project where the 
  * html
  * pridiApp
  * .gitignore
  * _etc..._

3. cd into pridiApp directory and run `npm i', `bower install`, and `grunt build`

4. `cd ..` and run `composer install`

5. `cd devDeploy` 

6. `mkdir dbDump`

7. Put you SQL dump file into the dbDump/ directory.

8. `./deploy.sh` to start op the container environment.

9. `docker exec devdeploy_db_1 mysql -uroot -ppassword < dbDump/DumpFile.sql` where the __DumpFile.sql__ is the file name of your dump.

