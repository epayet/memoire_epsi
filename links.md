# Mémoire

https://fr.wikipedia.org/wiki/Application_web
https://en.wikipedia.org/wiki/JavaScript_engine
https://en.wikipedia.org/wiki/V8_(JavaScript_engine)
https://en.wikipedia.org/wiki/Web_browser_engine
https://en.wikipedia.org/wiki/Rich_Internet_application<F37>
https://en.wikipedia.org/wiki/JavaScript
https://dzone.com/articles/why-java-developers-hate
https://en.wikipedia.org/wiki/CoffeeScript
https://en.wikipedia.org/wiki/TypeScript
https://en.wikipedia.org/wiki/Dart_(programming_language)
https://medium.com/javascript-scene/why-we-need-webassembly-an-interview-with-brendan-eich-7fb2a60b0723
http://asmjs.org/faq.html
https://medium.com/javascript-scene/what-is-webassembly-the-dawn-of-a-new-era-61256ec5a8f6
https://en.wikipedia.org/wiki/Asm.js
https://en.wikipedia.org/wiki/LLVM
https://fr.wikipedia.org/wiki/Node.js
http://githut.info/
https://en.wikipedia.org/wiki/Single-page_application
https://msdn.microsoft.com/en-us/library/ee658117.aspx
https://fr.wikipedia.org/wiki/Architecture_logicielle
https://fr.wikipedia.org/wiki/Mod%C3%A8le-vue-contr%C3%B4leur
http://fr.slideshare.net/aca_it/micro-services-40695502
http://martinfowler.com/eaaDev/uiArchs.html
http://martinfowler.com/articles/microservices.html
https://en.wikipedia.org/wiki/Domain-driven_design
http://martinfowler.com/bliki/BoundedContext.html
https://fr.wikipedia.org/wiki/SOAP
https://fr.wikipedia.org/wiki/Representational_State_Transfer
http://www.journaldunet.com/developpeur/outils/angular-js.shtml
https://fr.wikipedia.org/wiki/Cycle_en_V
https://fr.wikipedia.org/wiki/Extreme_programming
https://en.wikipedia.org/wiki/Scrum_(software_development)
http://www.slideshare.net/abagmar/anand-bagmar-behavior-driven-testing-bdt-in-agile
https://en.wikipedia.org/wiki/Test-driven_development#Benefits
http://juliendubreuil.fr/blog/developpement/de-application-monolithique-aux-architectures-microservices-ou-orientees-composants/
http://microservices.io/patterns/monolithic.html
http://programmers.stackexchange.com/questions/101337/whats-the-difference-between-stateful-and-stateless
https://www.netmarketshare.com/search-engine-market-share.aspx?qprid=4&qpcustomd=0
https://builtwith.angularjs.org/

## En plus

http://programmers.stackexchange.com/questions/218011/how-accurate-is-business-logic-should-be-in-a-service-not-in-a-model

# Livres

* Evans DDD
* DDD vite fait : http://blog.infosaurus.fr/public/docs/DDDViteFait.pdf
* [David Garlan and Mary Shaw, January 1994, CMU-CS-94-166, see "An Introduction to Software Architecture" at http://www.cs.cmu.edu/afs/cs/project/able/ftp/intro_softarch/intro_softarch.pdf]
* livre sur SOA
* Clean code ?
* Philosophie unix ? do one thing and do it well
* RESTful ?
* la ou il y a la pyramide de tests : http://www.amazon.com/gp/product/0321579364?ie=UTF8&tag=martinfowlerc-20&linkCode=as2&camp=1789&creative=9325&creativeASIN=0321579364
* kent beck TDD : http://www.amazon.fr/Test-Driven-Development-By-Example/dp/0321146530

# Conferences

* Eric evans sur DDD et les microservices : https://skillsmatter.com/skillscasts/6259-ddd-and-microservices-at-last-some-bounderies<F37>

# Images

browser share : https://en.wikipedia.org/wiki/Comparison_of_web_browser_engines

# LaTeX

<http://tex.stackexchange.com/questions/70860/can-latex-perform-calculation-like-excel-formula-table>

# Notes

on peut utiliser le mot pattern comme ca ?
assez insisté sur la qualité logicielle et ce que ca apporte ?

## Notes kiwi

le poc tarde a arriver
le mobile est un peu long
résumé des archi avec avantages inconvenients interessant

sinon faut faire comme JM
dire ben voilà les plus importantes/utilisées
faire une grosse description
et faire une partie autre
et forcer un peu moins sur la description

## Notes OA

SOA trop léger
manque d'implication personnelle
impression de lire un listing des archis

## Notes GTA

Le responsive web design facilite le développement et l’adapation des écran grâce aux media queries du CSS3 et les frameworks prêts à l’emploi sont nombreux. => ca veut rient dire apparremment

structure du projet et code en annexe pour casser la theorie ?

prouver les gains financiers que peut apporter une appli hybride

## Anciennes notes

<!--

# Notes et plan {-}

## But

Faire une application web moderne et professionnelle.

Faire les bon choix : architecture, technologie et méthodologie

Démonstration avec projet POC

Mot clés : maintenable, assurance qualité

## Notes

TODO les tableaux sont pas jolis
TODO ajouter DDD vite fait dans la biblio pour la traduction en français
TODO link sur microservices et netflix ?
TODO les grosses images en annexe ? j'ai une petite image des microservicers vs monolithic surinternet

si j'enleve le javascript au debut, justifier quelque part pourquoi j'utilise ca et que c'est trop bien la version ES6

tourner l'implementation des microservices sous forme d'etapes, la derniere c'est genre avec plein de monitoring, voir meme du scaling auto, mais bon ca c'est de la competence de devops

### Résumé des differents styles

| Style d'architecture | Description |
| --- | --- |
| Client/Serveur | Sépare le systeme en deux applications distinctes ou le client envoie des requetes au serveur. Tres souvent, le serveur est l'intermediaire avec une base de donnees et contient un peu de logique de l'application. TODO pas joli (originellement il disait que the server is a database with application logic represented as stored procedures)|
| Architecture orienté composents | Décompose l'application en composants foncionnels réutilisables exposant des interfaces de communication bien défini. |
| DDD (Domain Driven Design) | Un style d'architecture orienté objet concentré sur la modélisation d'un domaine métier et sur la définition d'objets métiers (TODO y'a un S ?) basés sur des entités en rapport avec le domaine métier. TODO ca veut rien dire nan ? |
| Architecture en couches | Partitionne l'application en plusieurs couches (groupes logiques) | 
| Orienté evenements | Style d'architecture utilisant un systeme d'evenements pouvant envoyer et recevoir des messages en utilisant un ou plusieurs canal de communication. De cette maniere, les applications peuvent interagir sans connaitre en detail les autres applications (couplage faible). |
| N-tiers, 3-tiers | Sépare les fonctionnalités de l'application un plusieurs segments de la meme maniere que l'architecture en couches, a la difference que dans ce cas, chaque segment est situé sur une machine differente. TODO c'est vrai ca ? parler de n+1 ? |
| Orienté objet | Paradigme bien connu basé sur la division des responsabilités d'une application ou d'un systeme en objets individuels et reutilisables, chacun comprenant les donnees et le comportement relevant a cet objet. |
| SOA (Service-Oriented Architecture) | Refere aux applications qui exposent et consument des fonctionnalités a travers un service utilisant des contrats et des messages. |

TODO en fait le SPA c'est un client serveur parce que ca separe vraiment du coup
TODO ca se dit vraiment en francais le systeme ?
TODO style d'architecture on dit aussi pattern
TODO Message bus en fait c'est orienté eventements nan ?
TODO integrer les microservices dans le tableau ou faire pouf apres y'a eu les microservices
TODO n tiers 3 tiers c'est en anglais, en francais c'est architecture trois tiers, ou pas ?
TODO le tableau c'est juste traduit du site, verifier individuellement que c'est vraiment ca
TODO traduire les noms en anglais genre SOA
TODO en fait je sais pas si je garde cette partie, c'est pas dans le nouveau plan, annexe ?

-->

# TODO

* Refacto visuel
* Vérification des normes (nombre de pages, etc.)
* Ajout du glossaire, sources, etc.
* Relecture finale
* abstract
