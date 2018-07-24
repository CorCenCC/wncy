# WNCY: WordNet Cymraeg

## Using WNCY

To use WNCY, simply install it as a new database using the provided SQL files. For example, using MySQL in linux:  
```bash
mysql -u [user] -p [password] < wncy_schema.sql  
```
```bash
mysql -u [user] -p [password] < wncy_data.sql
```

## Contents

* sql/  
  * wncy_schema.sql  
  * wncy_data.sql  
* wncy.json  

## Contact

Questions about WordNet Cymraeg can be directed to:  
* Steve Neale <<steveneale3000@gmail.com>> <<NealeS2@cardiff.ac.uk>>  
* Irena Spasic <<SpasicI@cardiff.ac.uk>>  
* Dawn Knight <<KnightD5@cardiff.ac.uk>>

## License

WordNet Cymraeg is distributed under the FreeBSD license. A copy of the license should be located within this repository. If not, you can find out more about the license [here](https://www.freebsd.org/copyright/freebsd-license.html).
