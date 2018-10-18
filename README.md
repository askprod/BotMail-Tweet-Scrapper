# EmailSender - Bot Twitter - AutoFollow 

### Membres de l'équipe de TOULOUSE :)

L'équipe THP de TOULOUSE : 
Patrick Razafindrakoto(@patpasha), Paul Riviere (@Blud7), Paul Trin-Dinh (@askprod), 
Amine Kanafi (@KTVII), Thierry Ospital(@Swelly31)

### Objectif du programme

Il s'agit là de créer un programme qui va scrapper les emails de 3 département français (Var, Morbihan et Alpes Maritime, soit 577 mairies), et de leur adresser un message de présentation du programme THP. Tout cela accompagné d'un follow sur leur compte Twitter

### Arborescence
<<<<<<< HEAD
'''
=======
```
>>>>>>> df1c16bf8228f600be15a0458eb50aeedb53543c
JOUR14
|_____ app.rb
|_____ README.md
|_____ Gemfile
|_____ Gemfile.lock
|_____ .gitignore
|_____ db
|       |_____ townhalls.json
|_____ lib
        |_____ 
              |_____ townhall_adder_to_db.rb
              |_____ townhall_follower.rb
              |_____ townhall_mailer.rb
              |_____ townhall_scrapper.rb
              views
                |_____ done.rb
                |_____ index.rb
<<<<<<< HEAD
'''
=======
```
>>>>>>> df1c16bf8228f600be15a0458eb50aeedb53543c
###  Installation

Cloner le repo, puis rentrer dans ce dernier via la commande :

	cd JOUR14

Il sera nécessaire d'installer certaines gems pour faire fonctionner le programme grâce à la commande :

	bundle install

Pour lancer le programme, taper la commande suivante dans le Terminal :

	ruby app.rb


### Comment ça fonctionne

1- Le lancement de la commande (ruby app.rb) effectue le scrapping sur les 3 département pré-cités.... et récupère les adresses emails de toutes les mairies présentes dans ces départements

2- Les noms des villes et leurs emails sont stockés dans un fichier json (townhalls.json) situé dans le dossier db (townhal_scrapper.rb)

3 - Ce fichier json est ensuite lu par l'appi de lancement des emails (townhall_mailer.rb) qui va lancer les lancer via un compte gmail.

4- l'appli twitter est ensuite lancée via le fichier townhall_follower.rb et va récupèrer le nom des villes dans le fichier json. Il va ensuite follower les comptes twitter de ces villes.





