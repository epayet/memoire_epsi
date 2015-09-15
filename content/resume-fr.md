Il existe 3 grandes familles d'applications informatique : Application de bureau, web et mobile. La majeure différence est le support sur lequel elles sont accessibles, et par extension, les technologies à utiliser pour le développement de celle-ci. Les barrières technologique entre les supports sont de plus en plus fines, et il est désormais aisé d'utiliser une même famille de technologies pour plusieurs supports. Réutiliser une meme technologie pour plusieurs supports permet de réduire grandement les couts de développement et de maintenance. Le web est désormais la cible de toutes les applications.

Cdiscount, leader du ecommerce en France, et de plus en plus présente a l'internationnal. De ce fait, le nombre d'applications qu'elle possede est croissant, car Chaque pays possede ces specificités. Elle sous-traite actuellement le développement de ses applications mobiles. Elle songe fortement a reintgrer le dévepllopemnt de celles-ci en interne. Cependant, l'expertise technique de la société est le web. N'est-il pas possible d'utiliser son expertise pour créer des applications mobiles grace aux technologies web modernes ?

Le monde du web évolue très vite et est difficile à suivre. De nombreuses technologies apparaissent régulièrement. Faire une application web moderne, et de qualité n’est pas un travail facile. Trouver la solution idéale et faire les bons choix techniques selon le projet et le style de développement de l’équipe demande une bonne compétence d’analyse et une veille technologique active.

En parallèle, de nombreux chantiers sont en cours pour rénover le fonctionnement du SI (Sys tème d’Information) de Cdiscount et changer l’architecture interne ainsi que les méthodes de développement utilisées. Elle encourage fortement les nouvelles applications à utiliser les méthodes agiles et à implémenter l’architecture sur laquelle elle travaille (microservices). 

Lors de mon cursus d’ingénierie informatique à l’EPSI Bordeaux, j’ai eu l’occasion de travailler en alternance durant 3 ans à Cdiscount (de 2012 à 2015). Mon travail était tout d’abord essentiellement le développement d’applications. Gagnant de l’ex périence et de la confiance auprès de mes supérieurs, mon travail de tous les jours a progressivement évolué. En plus du développement, j’ai eu du temps dégagé pour faire de la recherche sur les nouvelles technologies, et de parfaire mes talents de conception. 

Je faisais partie de l'équipe Lab (R&D). C’est l’équipe chargée de maintenir l’innovation à Cdiscount. Pour cela, elle est en constante veille technologique et propose de nouvelles idées de technologies au SI. Leur objectif est de 3maintenir à jour les technologies utilisées, et donc de construire la plateforme de demain. Elle a le champ libre sur le choix des technologies.

Notre équipe s'est proposée pour creer un projet de type POC (Proof Of Concept). L'objectif principal est de démontrer comment faire une application de qualité, mais aussi les objectifs suivants : 

* Utilisation de notre expertise web pour créer une application mobile, et proposer une alternative de réalisation à Cdiscount moins chère, plus efficace et prête à l’emploi (industrialisable) 
* Démonstration de l’intérêt de l’utilisation des nouvelles technologies, et donc l’intérêt d’effectuer une veille technologique active
* Proposer une architecture moderne permettant l’isolation de la logique du domaine de l’application, et donc sa réutilisation dans un autre contexte, permettant le changement facile de technologie
* Cette architecture étant celle sur laquelle travaille l’équipe architecture, leur donner la possibilité d’utiliser notre projet comme preuve concrète de l’intérêt de celle-ci 
* Intérêt d�<t_X>avoir des petites équipes polyvalentes (pizzas team) sur des petits projets plutôt que de grosses équipes séparées par capacité logicielles sur des gros projets

Mais finalement qu’est-ce qu’un logiciel de qualité ? C’est selon moi un logiciel possédant les caractéristiques suivantes :

* Développement rapide de fonctionnalités (temps = argent)
* Développement de nouvelles fonctionnalités sans impact sur l’existant (non régression)
* Posséder une architecture évolutive permettant de limiter la dette technique et l’apparition des bugs
* Déploiements fréquents et rapides en production, permettant de satisfaire la demande du client
* S’assurer que l’application fonctionne toujours en production

Le POC a donc comme contexte celui-ci : 

Nous nous proposons de reproduire le comportement de l’application Android actuelle, mais en
utilisant :

* Technologies web uniquement
* Architecture bien choisie (en correspondance avec l’équipe architecture)
* Méthodologie agile

Nous avons une limite de deux mois, et nous sommes trois développeurs. À la fin des deux mois, nous présenterons le projet réalisé à un jury à la fois technique et non technique. Même si le but de cette application est plutôt orienté vers la technique, il faudra qu’elle soit agréable à utiliser et que le jury non technique soit convaincu que ce soit une solution viable.

Créer une bonne application commence par choisir une bonne architecture logicielle. Si il y a bien une chose a eviter, c'est le monolithe. Une application monolithique est une application mettant plusieurs fonctionnalités dans un seul processus. De nombreuses applications existantes sont monolithiques, car ce sont les plus simples à réaliser. Si cela convient aux petites applications, au fil du temps cette application deviendra de plus en plus complexe lors de son évolution. L’architecture modulaire prévue au début est alors difficile à garder.

« *De l’application simple à l’application à tout faire, il n’y a qu’un pas.* », Julien Dubreuil.

La base de code d'un monolithe est tres importante et intimidante. Il est difficile a comprendre et a modifier. Le moindre changement a un grand impact sur la totalité du code. De plus, il engage a long terme sur une technologie unique. 

Il existe plusieurs styles d'architecture. Les principaux sont :

| Catégorie | Styles d'architectures |
| --- | --- |
| Communication | SOA (Service Oriented Architecture), Message Bus |
| Déploiement | Client/Serveur, N-tiers, 3-tiers |
| Domaine | DDD (Domain Driven Design) |
| Structure | Orienté composants, Orienté objet, Architecture en couches |

L’architecture logicielle ne se limite généralement pas à un seul style d’architecture, c’est très souvent une combinaisons de plusieurs styles qui formeront un système logiciel complet.

Il existe un autre style, plus récent qui s'inspire grandement des autres, mais avec une approche différente au niveau de l'implementation :

* SOA : Intègre différentes applications comme un ensemble de services 
* Microservices : Architecture chaque application comme un ensemble de services

C'est le style que Cdiscount veut utiliser, et c'est celui que l'on va mettre en place pour notre projet, au fur et a mesure, car sa mise en place est complexe. 

Le DDD (Domain Driven Design) nous a appris qu'il existe en fait deux types de logiques dans une application : logique de domaine et logique applicative. Le fait de les séparer permet une meilleure liberté technologique. C'est d'autant plus utile dans le domaine du web car les technologies évoluent très vite. Il est important d'effectuer une veille technologique active pour pouvoir en profiter.

Pour notre projet, l'application client sera une SPA basée sur une architecture orientée composants couplée avec une architecture orientée événements. Le serveur sera un web service RESTful basé sur l'architecture des microservices.

Les choix technologiques sont nombreux, surtout pour le front-end car il existe plusieurs frameworks SPA. Nous avons choisi AngularJS pour sa maturité, combiné avec un bus d'événements fait maison pour respecter nos choix d'architecture (composants et evenements). Nous avons aussi utilisé de nombreux outils, nous permettant d'etre productif en evitant les répétitions (DRY).

Si Cdiscount utilise historique la méthode du cycle en V pour la gestion de projet, elle veut tendre vers des méthodes agiles. C'est pourquoi nous allons utiliser SCRUM combiné avec l'Extreme Programming (XP). Ils allient parfaitement gestion de projets et bonnes pratiques de développement. Ce que nous retenons vraiment des méthodes agiles sont :

* Testabilité : Un logiciel testé permet de s'assurer que toute nouvelle fonctionnalité n'affecte pas le reste du système. Le fait d'écrire le test en premier (TDD) force le refactoring constant et assure une bonne conception dès le départ, limitant la dette technique.
* Code review : La revue de code par un autre collègue permet de s'assurer de la qualité de celui-ci.
* Jamais de dette technique : La dette technique ralentit le développement et renforce la possibilité d'avoir des bugs dans le système.
* Déploiements rapides, faciles, et fréquents
* Utiliser les bons outils
* Une bonne communication
* Bien être des membres de l’équipe

Voici notre méthodologie concrète employée pour ajouter une fonctionnalité au produit.

* Création d'une nouvelle branche sur le gestionnaire de versions (évite le conflit avec les autres nouvelles fonctionnalités implémentées en parallèle)
* Écriture de tests de haut niveau (Intégration ou UI selon le cas)
* Écriture du code source en TDD strict (il est interdit d'ajouter du code source sans la mise en valeur du manque par un test)
* Code review par un autre membre de l'équipe
* Intégration de la nouvelle branche sur la branche principale
* Vérification de la non régression grâce à l’intégration continue

Ayant appliqué ces principes (architecture, méthodologies, technologies) sur notre projet durant 2 mois avec notre équipe de 3 développeurs, nous sommes arrivés à un résultat satisfaisant. Grâce à la technologie Cordova, nous avons créé une application fonctionnant sur plusieurs terminaux mobiles (iOS, Android) ainsi que sur les navigateurs web. Le résultat est selon nous satisfaisant, avec de bonnes performances, et une interface utilisateur simple et efficace. 

Le projet de démonstration est un succès et a atteint ses objectifs. C'est un logiciel de qualité, permettant l'implémentation rapide de nouvelles fonctionnalités sans accumuler de dette technique. Nous avons par la même occasion démontré à Cdiscount qu'il est possible de créer des applications mobiles en utilisant uniquement les technologies web, notre domaine d'expertise. Lors de la présentation, le jury s'en est bien rendu compte et souhaite tester notre solution sur des applications transverses. Il faut avant cela, que nous finalisons l'intégration avec les méthodes actuelles de Cdiscount.

TODO copy paste conclusion

Le travail d'un architecte logiciel est la conception d'applications. Le travail d'un développeur de logiciel est la réalisation d'applications. Nous avons vu qu'il est difficile de séparer la phase de conception d’un projet de sa phase de réalisation. C'est le point faible de la méthodologie du cycle en V, et les méthodes agiles ont pour but de rallier ces deux phases. De nombreuses entreprises séparent ces deux rôles, et la qualité du logiciel est en amoindrie.

Un ingénieur logiciel est capable de concevoir ET réaliser une application. Le meilleur chemin pour avoir un logiciel de qualité est d'avoir une équipe d'ingénieurs logiciels, travaillant ensemble durant toutes les phases du projet (conception, réalisation et mise en oeuvre). 
