# EmailSender - Bot Twitter - AutoFollow 

### Membres de l'équipe de TOULOUSE :)

L'équipe THP de TOULOUSE : 
Patrick Razafindrakoto(@patpasha), Paul Riviere (@Blud7), Paul Trin-Dinh (@askprod), 
Amine Kanafi (@KTVII), Thierry Ospital(@Swelly31)

### Objectif du programme

Il s'agit là de créer un programme qui va scrapper les emails de 3 département français (Var, Morbihan et Alpes Maritime, soit 577 mairies), et de leur adresser un message de présentation du programme THP. Tout cela accompagné d'un follow sur leur compte Twitter

### Arborescence
```
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
```
###  Installation

Cloner le repo, puis rentrer dans ce dernier via la commande :

	cd JOUR14

Il sera nécessaire d'installer certaines gems pour faire fonctionner le programme grâce à la commande :

	bundle install

Pour lancer le programme, taper la commande suivante dans le Terminal :

	ruby app.rb


### Comment ça fonctionne

Le lancement de la commande (ruby app.rb) effectue le scrapping sur les 3 département pré-cités....



