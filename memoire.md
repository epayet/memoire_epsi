# Introduction {-}

Lors de mon cursus d'ingénierie informatique a l'epsi Bordeaux, j'ai eu l'occasion de travailler en alternance durant 3 ans à Cdiscount (de 2012 a 2015). Leader dans le domaine du e-commerce en France, Cdiscount est une entreprise qui se doit d'etre a la pointe de la technologie. Durant ces 3 ans, j'ai pu travailler dans plusieurs équipes ainsi que sur de nombreux projets tres interessants, ce qui m'a permis de m'améliorer dans de nombreux domaines.

Travaillant d'abord essentiellement sur des applications web internes, mon travail etait tout d'abord essentiellement le développement d'applications. Gagnant de l'expérience et de la confiance aupres de mes superieurs, mon travail de tous les jours a progressivement évolué. En plus du développement, j'ai eu du temps dégagé pour faire de la recherche sur les nouvelles technologies, et transmettre le résultat de mes recherches sous forme d'atelier en communauté de type coding dojo*.

Le monde du web est un mondu qui évolue tres vite et est difficile a suivre. De nombreux frameworks* et nouvelles technique/architectures apparaissent régulierement. Il n'est pas aisé de trouver la solution idéale lorsque l'on commence le développement d'une nouvelle application web de faire les bons choix technique allouant aisance de dévelloppement, assurance qualité, maintenance allégée du code, etc. En combinant mes recherches et mes compétences d'analyse et de développement, j'ai maintenant une bonne vision sur les possibilités et les choix techniques a faire en fonction des besoins de l'application.

Cela s'est ressenti non seulement dans la vie des applications sur lesquelles j'etais en charge, mais aussi dans mon métier. J'ai ainsi pu intégrer une équipe orientée R&D (Recherche et Développement), pour devenir un expert technique et évoluer du métier du développeur vers le métier d'architecte.

Le but de ce mémoire est de passer en revue ces possibilités, d'offrir des propositions d'architecture logicielle et des choix de technologies, basées sur mon expériences et le résultat de mes recherches. A la fin de celui-ci, nous serons capables de faire un choix sur la technologie et l'architecture a mettre en place, en fonction des besoins fonctionnels pour creer une application web, mais aussi une application mobile.

Nous verrons d'abord les besoins de créer une application web et l'évolution au fil des années de celles-ci. Nous verrons ensuite les différentes architectures modernes et utilisées sur le marché ainsi que les technologies actuelles répondant a ces problématiques. Nous aurons l'occasion de voir plusieurs exemples, comprenant la possibilite de faire aussi une application mobile via les applications que j'ai moi-meme develepe au sein de Cdiscount.

Developpeur full stack, architecture moderne

# Présentation de l'entreprise {-}

Cdiscount est une entreprise de e-commerce qui gère le site web Cdiscount.com. Ses
employés ainsi que ses entrepôts sont situés à Bordeaux. Elle emploie environ 1500
personnes dont environ 300 dans la partie SI (Système d’Information). Elle a été créée en
1998 par trois frères et vendait principalement des CDs. Elle vend aujourd’hui toutes sortes
de marchandises (High tech, loisirs, équipements de maison, etc.). Cdiscount possède aussi
deux magasins physiques à Bordeaux et à Paris qui proposent les meilleures ventes du site
internet physiquement.

Elle est aujourd’hui filiale à 99,6% du Groupe Casino qui est un grand groupe de distribution
en France et dans le monde. Ceci lui a permis de profiter de différents avantages comme la
livraison dans les magasins casino. Le site s'est alors imposé comme l'un des principaux sites
de vente en ligne français avec un chiffre d'affaires de 1,6 milliard d'euros TTC. Elle passe
ainsi en France devant Amazon, le leader mondial dans ce domaine.
Cdiscount a profité aussi du groupe Casino pour s’implémenter de plus en plus à
l’international. Elle s’est récemment implémentée en Colombie et en Côte d’Ivoire, puis
bientôt au Brésil ou encore au Panama pour profiter du e-commerce fleurissant de ces pays.
Pour s’adapter à ces changements, Cdiscount revoit de plus en plus son architecture au
niveau des équipes et au niveau du code réalisé. Son objectif actuel est d’avoir une
plateforme facilement utilisable dans un autre pays. Pour cela il faut notamment gérer
l’intertionalisation et la facilité de déploiement de l’application. Il est donc nécessaire de
s’assurer du bon fonctionnement de toutes les couches applicatives et les adapter aux
nouveaux besoins. Ainsi l’objectif de Cdiscount est de plus en plus miser sur la qualité du
code ainsi que l’innovation et choisir au mieux les technologies adaptées à chaque besoin.
Plusieurs chantiers sont en cours pour ces changements.
Le SI de Cdiscount est historiquement divisé en ��quipe par domaine. En voici quelques-uns :

* Front

C’est l’équipe qui s’occupe de l’interface du site. Au niveau de la logique « métier », ils se
basent sur les services web créés par l’équipe services.
* DBA

DBA signifie DataBase Administrator (administrateur de base de données). Cette équipe
s’assure de la qualité et du fonctionnement de l’utilisation de la base de données.

* Delivery Management

2Ils s’occupent de la gestion des différents serveurs à distance. Ils s’occupent donc des
déploiements d’applications d’un environnement à un autre et s’assurent du maintien à jour
et du bon fonctionnement de celles-ci (fichiers de configuration, etc.).

* MCO

Le maintien en condition opérationnelle (abrégé MCO) est l'ensemble des mesures prises
pour garantir que la bascule vers un environnement dégradé n'entraîne pas une altération
inacceptable des conditions de travail habituelles.
Dans le cadre d'un plan de continuité d'activité (PCA), le MCO couvre principalement la
stratégie de sauvegarde utilisée et la méthodologie de déploiement de celle-ci sur un
environnement dégradé ainsi que la réplication de la configuration des équipements.
Il prévoit aussi, dans le cadre d'une production continue, le remplacement des pièces
défectueuses, le diagnostic des pannes, la formation, la documentation.

* Sécurité

Cette équipe est chargée de s’assurer de la sécurité du site et des différents développements
réalisés, ainsi que différentes failles possibles liées au réseau.

* Architecture

Ce sont ceux qui font l’architecture globale du SI. Ils font ainsi les choix de technologie et de
conception. Ils s’occupent aussi du Framework de Cdiscount.

* Fonctionnel/Métier

Ils s’occupent de discuter des besoins de l’entreprise et de créer les projets en conséquence.
Ils s’occupent du budget à appliquer aux projets ainsi que les spécifications/cahiers des
charges.

* Big Data

C’est une équipe dédiée à la récolte ainsi que l’analyse des données récoltées en masse sur
le site Cdiscount. Ils utilisent ces données pour réaliser des rapports
hebdomadaires/mensuels sur différents sujets.

* Services

C’est l’équipe qui intègre toutes les fonctionnalités dîtes « métier » du site sous forme de
services web développées généralement pour l’équipe Front mais aussi pour d’autres
équipes ayant besoin de fonctionnalités internes (exemple : back-office).

* Lab : R&D

C’est l’équipe chargée de maintenir l�innovation à Cdiscount. Pour cela, elle est en constante
veille informatique et propose de nouvelles idées de technologies au SI. Leur objectif est de
maintenir à jour les technologies utilisées, et donc de construire la plateforme de demain.
Elle propose aussi des projets innovants comme l’open API et a le champ libre sur le choix
des technologies.
Si historiquement, les équipes sont séparées comme présenté ci-dessus, de plus en plus,
Cdiscount crée des équipes avec une vision différente, ce qu’elle appelle des « feature
teams ». Ce sont des équipes non pas spécialisées dans un domaine, mais spécialisées sur
un/une sujet/fonctionnalité. Pour cela, elle réunit plusieurs personnes aux compétences
différentes et forme une équipe autour d’un sujet qu’elles connaissent bien. Voici quelques
exemples de « feature team » :

* Market Place

C’est l‘équipe en charge de la place de marché de Cdiscount, c’est-à-dire les autres vendeurs
que Cdiscount qui vendent leurs produits à travers Cdiscount.

* Moteur de Recherche

C’est l’équipe en charge du moteur de recherche.

* Order

C’est l’équipe en charge de la prise de commande.
Historiquement, les technologies principales utilisées chez Cdiscount proviennent du monde
Microsoft :
* C#
* ASP.NET
* SQL Server
* WCF
* Visual Studio

Cependant, au vu des changements actuels, de plus en plus d’alternatives sont apparues,
comme du Java ou encore du NodeJS pour certaines applications.
Après avoir travaillé dans l’équipe Services l’année dernière, j’ai eu cette année la chance
d’intégrer l’équipe « Lab ». J’ai pu alors exercer librement ma veille technologique et
proposer des choix techniques pour certaines applications.

# Application Web

Il existe 3 grandes familles d'applications informatique (logiciels) :

* **Application de bureau**

D'après Wikipédia : « *Une application de bureau (Desktop application en anglais) est un logiciel applicatif qui affiche son interface graphique dans un environnement de bureau, il est hébergé et exécuté par l'ordinateur de l'usager. Cette technologie est apparue avec les premiers environnements de bureau en 1970* ».

* **Application Web**

D'après Wikipédia : « *Une application web (aussi appelée web app, de l'anglais) est une application manipulable grâce à un navigateur web* ».

* **Application mobile**

D'après Wikipédia : « *Une application mobile est un logiciel applicatif développé pour un appareil électronique mobile, tel qu'un assistant personnel, un téléphone portable, un « smartphone », un baladeur numérique, une tablette tactile* ».

Ce qui différencie finalement ces 3 types d'applications est le support sur lequel elles sont accessibles. Ceci implique généralement des technologies et langages différents. Les avancées récentes des navigateurs web ont fait des applications web des applications complètes et avancées en utilisant uniquement les technologies web (centrées généralement autour du Javascript).

La facilité de développement de celles-ci ainsi que la performance des moteurs de navigateurs ont propulsé les applications web à un tout autre niveau, dépassant même les limites de la plateforme. En effet, il est désormais possible de faire des application natives mobiles ou de bureau en n'utilisant que des technologies web (JavaScript, HTML/CSS, etc) approchant les performances des applications natives. Cela permet d'avoir un coût de développement moindre grâce à la réutilisation de code pour les différentes plateformes. Le web est maintenant la cible de toutes les applications.

Nous allons donc d'abord voir comment fonctionne une application web, puis l'évolution au fil du temps des technologies correspondantes.

## Description

Une application web, contrairement à une application de bureau, est une application uniquement manipulable via un navigateur web. L'application est généralement installée sur un serveur et est accessible via un réseau (internet, réseau local, etc.). On a ici une architecture client/serveur où le navigateur web est le client. À la différence d'un site web statique, une application web est constituée de liens hypertextes* provoquant l'envoi de nouvelles requêtes utilisant généralement le protocole HTTP. Voici des exemples d'applications web les plus courantes :

* Moteur de recherche : Application qui recherche des documents (Ex : Google, Bing, Yahoo, etc.)
* WebMail : Application qui permet d'envoyer et de recevoir des courriers électroniques (Ex : Gmail, Outlook, etc.)
* Système de gestion de contenu : Application qui présente des documents
    * Blog : Système de gestion de contenu organisé par date
    * E-commerce : Site marchand (Ex : Amazon, Cdiscount, etc.)
    * Wiki : Création collaborative de documents (Ex : Wikipédia)
* Messagerie instantanée : Application qui permet à plusieurs utilisateurs d'échanger des messages textuels entre eux (Ex : Skype, Facebook messenger, etc.)
* Jeu : Jeu vidéo accessible via le navigateur web
* Réseau social : Application permettant de partager du contenu avec d'autres personnes (Ex : Facebook, Linkedin, etc.)

Il existe de nombreux autres types d'applications, comme par exemple Google Maps qui permet de consulter des cartes géographiques du monde entier.

## Navigateurs web

Une application Web utilise un ou plusieurs langages de présentation (généralement HTML/CSS) et est interprétée par un navigateur web. Le langage JavaScript, lui aussi interprété par le navigateur, permet de rendre encore plus dynamique l'application en permettant des interactions utilisateurs de plus en plus poussées et rapides. La qualité de l'application repose alors énormément sur la performance et la précision du navigateur et de son moteur de rendu (interpréteur HTML/CSS et moteur JavaScript). 

Un navigateur web est composé d'un moteur de rendu (layout engine) et d'un moteur JavaScript (JavaScript engine). Le moteur de rendu interprète les langages de présentation comme HTML*/CSS*, tandis que le moteur JavaScript interprète de langage de programmation JavaScript. Voici actuellement les principaux navigateurs web ainsi que les moteurs utilisés :

* Google Chrome (moteur de rendu : **Blink**, moteur JavaScript : **V8**)
* Firefox (moteur de rendu : **Gecko**, moteur JavaScript : **Spidermonkey**)
* Internet Explorer (moteur de rendu : **Trident**, moteur JavaScript : **Chakra**)
* Safari (moteur de rendu : **Webkit**, moteur JavaScript : **Nitro**)
* Opéra (moteur de rendu : **Blink**, moteur JavaScript : **V8**)

TODO pas obligé de nommer tous les moteurs...

Les dernières version d'Opéra utilise le projet Chromium et comme base et utilisent donc les même moteur que Google Chrome, lui même basé sur le projet open source Chromium. Microsoft veut à terme remplacer son navigateur Internet Explorer par leur dernier projet en date : Microsoft Edge utilisant leur nouveau moteur de rendu **EdgeHTML** tout en gardant leur moteur JavaScript Chakra.

TODO ca aussi

![Pourcentage d'utilisation des navigateurs en 2015][browserMarketShare]

TODO browser market share pas necessaire

Avant standardisation, les navigateurs avaient tout d'abord leur implémentation individuelle du DOM. Le DOM (Document Object Model) est maintenant un standard du W3C (organisme de normalisation à but non lucratif) qui décrit une interface indépendante de tout langage de programmation et de toute plate-forme, permettant à des scripts d'accéder ou de mettre à jour le contenu, la structure ou le style de documents HTML et XML*. 

TODO Le DOM pourquoi pas

### Apparition et disparition des RIA

D'après Wikipédia : « *Une Rich Internet Application (RIA), ou application Internet riche, est une application Web qui offre des caractéristiques similaires aux logiciels traditionnels installés sur un ordinateur. La dimension interactive et la vitesse d'exécution sont particulièrement soignées dans ces applications Web* ».

Avant que les moteurs JavaScript soient aussi avancés, comparés aux applications de bureau, les applications web souffraient d'un manque de performance notoire très souvent à cause de la manipulation du DOM très coûteuse. Le principe d'une RIA est alors d'installer un plugin sur l'ordinateur permettant d'utiliser les ressources du système d'exploitation au lieu de celles du navigateur web (plus limitées) pour faire fonctionner l'application. Il était désormais possible d'utiliser des ressources précédemment inaccessibles au navigateur comme la caméra, ou encore le GPU* pour du jeu video plus performant.

Les plus utilisés et installés sont les suivants :

* Adobe Flash
* JavaFX
* Microsoft Silverlight

Une étude avec Google Trends montre que depuis 2012, ces plugins sont remplacés au fur et à mesure par des alternatives basées uniquement sur des technologies directement utilisées par le navigateur web (HTML5, JavaScript, etc.). Cela s'explique par l'avancée récente des standards du web permettant l'accès aux ressources comme la caméra, un espace de stockage relativement élevé (LocalStorage), une utilisation avancée des sockets*, au portage de librairies avancées dans le monde du web comme WebGL (sous-ensemble d'OpenGL, interface de programmation de 3D dynamique bien connue dans les applications de bureau), etc.

L'intérêt est que les utilisateurs des applications web n'ont plus besoin d'installer et maintenir à jour un logiciel tiers. Adobe Flash lui même a annoncé qu'il allait arrêter la production de son logiciel pour les mobiles et qu'il incitait les développeurs à se tourner vers des solutions full web. Nous allons voir comment l'évolution de ces technologies ont permis de se reposer uniquement sur celles-ci pour faire des applications web.

TODO trop long, p e juste evoquer les RIA 

### Évolution du Javascript

JavaScript, aussi appelé ECMAScript est un langage de scripts. Il a été créé en 1995 par Brendan Eich. Il a connu depuis de nombreuses améliorations et est à ce jour à la version 6 (on parle d'ECMAScript 6 ou encore d'ECMAScript2015.). Nous allons voir comment celui-ci a beaucoup évolué, et pourquoi ce langage est devenu l'un des langages les plus utilisés actuellement.

#### Attributs du langage JavaScript

* **Programmation dynamique**

Le JavaScript est un langage de programmation dit dynamique ou interprété. C'est donc un langage qui exécute au lancement du programme beaucoup de comportements que les langages dits statiques exécutent durant la compilation. 

* **Langage de scripts**

Le JavaScript est aussi un langage de scripts. Un moteur interprète directement le code source à la volée plutôt que d'exécuter du code machine pré-compilé.

* **Langage orienté prototype**

L'orienté prototype est une forme d'orienté objet sans classe, basée sur la notion de prototype. Un prototype est un objet à partir duquel on crée de nouveaux objets.

* **First-class function**

Les fonctions sont des objets de première classe, c'est-à-dire pouvant être utilisés sans restriction. Ce langage permet donc l'utilisation des fonctions comme tout autre variable, ce qui les rend utilisable dans différents contexte (arguments pour d'autres fonctions, retour de fonctions, stockage dans des structures de données, fonctions anonymes, etc.).

Ce mélange de caractéristiques permet au JavaScript d'êtres un langage multi-paradigme* permettant plusieurs styles de programmation : orienté objet, fonctionnel, impératif, etc. Une des caractéristiques phare de ce langage est la possibilité de faire de la programmation dite événementielle ou asynchrone grâce à la notion de callback (fonction de rappel). C'est une fonction qui est passée en argument à une autre fonction. Cette dernière peut alors faire usage de cette fonction de rappel comme de n'importe quelle autre fonction, alors qu'elle ne la connaît pas par avance.

#### Un langage incompris

Le langage JavaScript a souvent été un langage de programmation déprécié de beaucoup de développeurs, surtout de ceux ayant l'habitude de programmer avec des langages fortement typés comme Java ou C#. En effet, contrairement à ce que l'on pourrait croire, le JavaScript n'a rien en commun avec le Java, ayant des sémantiques très différentes.

De plus le langage JavaScript a très longtemps été associe aux navigateurs web et à la manipulation du DOM* (Document Object Model). Etant donné que celui-ci a plusieurs implémentations différentes selon le navigateur et le moteur de rendu, devoir manipuler le DOM est alors souvent associé a manipuler le JavaScript avec des méthodes très différentes. Cela est de moins en moins grâce à la standardisation du W3C. Malgré l'apparition de la librairie très connue jQuery pour consolider ces différences, le fond du problème reste inchangé. On devient alors très dépendant de cette librairie que l'on inclut sur toutes les pages web, ce qui apporte son autre lot de problématiques (taille du site web augmentée, une nouvelle librairie tierce à maintenir à jour, etc.). 

Apres plusieurs sondages, voici une liste des reproches les plus accusés au langage JavaScript, le rendant souvent déroutant :

* Ressemblance forte au Java, mais tellement si différent
* Variables non limités par un scope (bloc de code), permettant ainsi l'utilisation de variables globales (difficile à déboguer et à maintenir)
* Le mot-clé "this" a une signification et une référence différente selon le contexte, contrairement aux autres langages ou il a une signification et une valeur fixe
* Les fonctions sont des objets et non des classes (on parle ici d'objet de première classe)
* Les point-virgules sont optionnels
* Les fonctions retournent forcément une valeur (si rien n'est retourné, on récupère la valeur "undefined")
* Compatibilité entre les navigateurs
* Code asynchrone difficile à maintenir, dû à la gestion de nombreuses callbacks (fonction de rappel). L’enchaînement d'instructions asynchrone n'est pas aisé et complexifie le code. On parle même "d'enfer de callback" (callback hell)

Pour combler les manques du langage et ses incompréhensions, de nombreux sur-langages sont apparus. Ce sont des langages de plus haut-niveau permettant soit la possibilité d’être directement interprété par le navigateur, soit la possibilité de se transcrire en JavaScript.

#### Des alternatives viables mais pas majoritairement adoptées

Les sur-langages les plus utilisés sont les suivants :

* **CoffeeScript** : Créé en 2009, inspiré par le Python, Ruby, et le Haskell
* **TypeScript** : Créé par Microsoft en 2012, ajoute la possibilité d'ajouter des variables fortement typées et d'utiliser des classes pour un orienté objet plus "classique"
* **Dart** : Créé par Google en 2013, ajoute de nombreuses fonctionnalités comme des classes, des interfaces, des classes abstraites, des variables fortement typées, etc. Possède aussi un interpréteur directement intégré au navigateur Google Chrome. Le JavaScript est utilisé pour les autres navigateurs.

Ces surcouches ont toutes le même but : ajouter des fonctionnalités, faciliter le développement web, et apporter des évolutions qui apparaîtront plus vite que les nouveaux standards ECMAScript grace au support de la communauté. Cependant, aucun d'eux n'a réellement pu émerger pour devenir la solution idéale pour créer des applications web. Actuellement, elles ont plus le statut d'alternatives viables mais pas majoritairement adoptées. Cela s'explique par plusieurs raisons.

D'une part, le JavaScript a pris une place trop importante dans le monde du Web pour être remplacé. On reste énormément dépendant de ce langage, étant le seul ayant un interpréteur de bonne qualité et standardisé sur tous les navigateurs.

Malgré les avantages que proposent ces nouveaux langages, toutes les équipes de développement ne l'adoptent pas forcément. Beaucoup de développeurs connaissent déjà très bien le JavaScript et ne veulent pas s'en défaire pour apprendre un nouveau langage. Le fait qu'il existe de nombreuses surcouches montre bien qu'il est difficile de n'avoir qu'un seul standard de développement satisfaisant tous les développeurs. Il est cependant agréable d'avoir le choix.
 
Voici une citation de Brendan Eich, le créateur du langage Javascript : « *You don’t break the web, you don’t get to clean the slate and start over. Anybody who tries is going to fail* », qui peut être traduit par : « *On ne casse pas le web, on ne peut pas tout effacer et tout recommencer. Toute personne essayant échouera* ». Selon lui, il n'est pas possible refaire le web, la seule solution est de l'améliorer.

Le langage Javascript est trop omniprésent et il est difficile de s'en défaire. Est-on vraiment obligé de dépendre d'une librairie tierce, ou un sur-langage pour avoir un langage de programmation correct ? Nous allons voir que la version 6 sortie récemment permet de répondre a beaucoup des problématiques posées. 

TODO partie peut etre pas utile ?

#### Une version 6 bien évoluée

On dit souvent que c'est que le JavaScript est à la fois adoré et détesté. C'est un langage très puissant mais souvent mal compris et mal utilisé car très permissif. Malgré une évolution plus lente que les autres alternatives open source, la récente version 6 fait de celui-ci un langage de plus en plus viable et comble les différents manques et incompréhensions citées auparavant. Même si aujourd'hui, cette version n'est pas prise en charge par tous les navigateurs, il est possible d'écrire du code en ES6, et le transformer en ES5 grâce à des transpileur (transforme un code source en un équivalent dans un autre langage). Le code écris est alors plus moderne et fonctionne malgré tout sur les différents navigateurs dès aujourd'hui. Le but est d'utiliser au plus tôt les derniers standards et avoir une application plus facile à maintenir et profiter rapidement des dernières évolutions.

Voici donc les principales nouvelles fonctionnalités accessibles avec cette nouvelle version :

* **Les Promesses (Promises)**

Le concept n'est pas nouveau des développeurs JavaScript, mais n'a jamais été standard car toujours implémenté via des librairies tierces. L'utilisation des promesses est désormais intégré avec le langage lui-même. Le but est d'éviter d'avoir "l'enfer du callback*" en ayant la possibilité d’enchaîner simplement des fonctions asynchrones.

* **Des variables plus scopées**

Le mot clé "var" permet de définir une nouvelle variable en Javascript. Cependant, celui-ci n'assurait pas que la variable reste dans le scope (bloc de code) ou elle est déclarée. Ceci peut porter à confusion et amener à avoir des variables globales sans s'en rendre compte ou d'avoir une variable déjà utilisée dans un scope précédent. La nouvelle version propose deux nouveaux mot-clés : "let" et "const", qui permettent de s'assurer que les variables restent bien le scope où elles sont déclarées.

* **Arrow functions**

Cela permet d'utiliser des fonctions de rappel (callback) tout en gardant la même référence du mot-clé "this". Comme vu précédemment, cela a toujours été très confus pour les développeurs, ayant l'habitude que ce mot-clé ait toujours la même référence. De plus, elle permettent l'utilisation plus classique des fonctions anonymes (lambda expression*).

* **Les Générateurs**

C'est un type de fonction qui permet de suspendre l'activité du bloc où elle est appelée et d'attendre le résultat de celui-ci (programmation synchrone). Il est désormais possible d'exécuter facilement du code asynchrone dans une boucle, permettant d'éviter encore une fois l'enfer du callback.

* **Les Modules**

La gestion des modules en JavaScript n'a jamais eu de définition claire et précise. Deux standards non officiels existent : AMD et CommonJS. Le but ici est de les rallier ces deux patterns* et d'en faire un standard officiel.

* **Classes**

L’arrivée de cette version est attendue de beaucoup de développeurs car il est désormais possible de créer des classes avec le pattern* orienté objet classique grâce au mot-clé "class". Il est cependant toujours possible d'utiliser l'orienté objet de type prototype.

Nous remarquerons que toutes ces nouveautés résolvent beaucoup des reproches cités auparavant et fait du JavaScript un langage très moderne utilisable des aujourd'hui. La prochaine version (ES7) est déjà annoncée et proposera elle-aussi son lot de nouveautés. Cette version encore aujourd'hui au stade de proposition. 

#### Des performances plus que correctes	

Nous avons vu que le web est énormément dépendant du langage JavaScript. La performance des moteurs JavaScript est donc cruciale pour l’avancée des applications web. Les développeurs des navigateurs web l'ont bien compris et fournissent énormément d'efforts à l'optimisation de ceux-ci. La concurrence des navigateurs est telle qu'on parle de "guerre des navigateurs". 

##### Des moteurs JavaScript performants, mais est-ce suffisant ?

Avant la deuxième guerre des navigateurs en 2008-2009, les moteurs JavaScript étaient de simples interpréteurs. Le moteur V8 de Google créé en 2008 marque un nouveau tournant avec l'utilisation du JIT (Just In Time) compilation* (compilation juste à temps). Le fait de compiler le code Javascript en code natif avant de l’exécuter lui permet d'avoir de meilleures performances. Ce moteur a été créé pour les navigateurs mais aussi en tant que moteur autonome, ce qui a permis la création de projets indépendants (utilisation côté serveur, etc.). 

Etant un langage de haut-niveau, le JavaScript propose de nombreuses fonctionnalités comme la gestion automatique de la mémoire, types dynamiques, etc. qui facilitent la programmation mais sont coûteuses au niveau de la performance. Malgré les optimisations qu'apporte les derniers moteurs JavaScript, ces opérations restent coûteuses. Il a été prouvé que des langages de plus bas niveau (avec gestion manuelle de la mémoire, typage strict, etc.) compilés (et non interprétés) sont beaucoup plus performants mais plus difficiles à écrire et maintenir.

Le JavaScript étant le support obligatoire pour faire des applications web, il reste la actuellement la cible de tout langage de programmation. Nous avons déjà vu qu'il est possible de transformer un code source de plus haut niveau (sur-langage) en JavaScript (CoffeeScript, TypeScript, etc.). Mais qu'en est-il des langages de plus bas niveau (C/C++) ? 

##### Solution actuelle : asm.js

asm.js est un sous-ensemble de JavaScript ne contenant que le nécessaire pour un langage de plus bas-niveau en évitant d'utiliser les fonctionnalités coûteuses de haut-niveau. Le but est d'approcher les performances des applications natives (applications de bureau). Etant un sous-ensemble du JavaScript, il est déjà supporté par tous les navigateurs actuels. Le projet Emscripten permet de compiler du C/C++ en code asm.js (ou tout autre langage pouvant être converti en LLVM*).

La possibilité de compiler du code natif dans le monde du web permet d'avoir de meilleures performances (seulement 1.5x plus lentes que du natif avec asm.js). Ces outils ont permis le portage de code existant dans les applications de bureau dans le monde du web simplement et efficacement. L'exemple le plus impressionnant est le portage en 4 jours seulement du moteur de jeu bien connu Unreal Engine avec des performances impressionnantes. De nombreux autres programmes natifs ont suivi le mouvement (Dosbox, Unity, Vim, SQLite, etc.). 

##### Solution future : WebAssembly

Le futur du web veut suivre cette lignée et trouver une solution standardisée et efficace qui peut cohabiter avec le JavaScript. Le Web a besoin d'une structure officielle permettant l'utilisation de langages de bas-niveau, et ne pas dépendre uniquement du JavaScript. Un projet officiel a démarré, et se nomme WebAssembly.  Il a pour but de gérer le format binaire par les navigateurs.  Avoir un nouveau format de fichier permettrait donc de faciliter le passage des langages comme le C au Web. Ce projet a été officialise le 17 Juin 2015 par Brendan Eich, le créateur du langage JavaScript. Microsoft, Google, etc. travaillent ensemble pour officialiser et répandre ce nouveau format de fichier (qui aura l'extension .wasm). Des performances 20 fois supérieures a asm.js sont annoncées.

Le but ici n'est pas de remplacer JavaScript (nous avons vu auparavant que c'est pour l'instant impossible), mais d'apporter un nouveau langage alternatif. Le Web pourra ainsi profiter du meilleur des deux mondes : langage de haut niveau interprété (JavaScript), et un langage de bas niveau compilé en binaire (WebAssembly). Pour résumer voici ce qu'est et va apporter WebAssembly :

* Des performances améliorées : Les points critiques de l'application pourront être écrit en WebAssembly et être utilise comme module en JavaScript
* Un nouveau langage au format binaire
* Des navigateurs plus modernes : Ils pourront comprendre un format binaire plus efficace et plus léger
* Nouvelle cible de compilation : Les différents langages pourront utiliser ce support. La compilation pour le Web sera alors facilitée

##### Une utilisation étendue

Comme vu précédemment, le JavaScript évolue énormément. Ses performances, sa facilite de programmation, et tous les avantages que nous avons vu précédemment ont fait apparaître des projets indépendants des navigateurs web. 

Un projet phare est Node.js, projet open source créé en 2009. C'est un environnement multi-plateforme orienté vers les applications réseaux. Node.js tire parti la machine virtuelle V8 et la programmation événementielle (asynchrone) de JavaScript pour créer des serveurs web ultra-performants pouvant tenir une charge importante, sans avoir besoin d'un logiciel externe comme Apache ou Nginx. Cette solution est maintenant utilisée par les plus grandes entreprises (Groupon, SAP, LinkedIn, Microsoft, Yahoo!, Walmart, etc) et possède une communauté très active. Paypal est passe d'un solution entièrement écrite en Java a une solution en Node.js. Le gestionnaire de paquets de Node.js (npm) est celui possédant le plus grand nombre de module (plus de 80 000 en 2014), faisant de Node.js le langage le plus actif, détrônant ainsi Java et son gestionnaire de paquets Maven. 

![Nombre de modules pour chaque langage][npmModules]

De nombreux outils et frameworks* sont apparus avec Node.js, dont les plus connus sont :

* Express : Framework web
* Browserify : Un outil pour utiliser les module Node.js dans le navigateur
* Babel : Outil pour transpiler du code JavaScript ES5 en ES6
* Cordova : Plateforme pour créer des application mobiles natives avec du JavaScript
* Grunt et Gulp : Outils d'automatisation de tâches
* Bower : Gestionnaire de paquets pour le front-end
* Yeoman : Générateur de fichiers pour accélérer le développement et la gestion des fichiers dans un projet
* Node-webkit (NW.js) : Application basée sur le moteur de rendu Webkit et Node.js permettant la création d'applications de bureau en utilisant uniquement les technologies web
* Mocha : Framework* de tests unitaires

La popularité de Node.js et des applications web ont fait grimper en flèche l'utilisation du JavaScript. Il est désormais le langage le plus actif ces dernières années. Les données du très connu site web Github (gestionnaire de source le plus utilisé) le démontre bien. Ainsi, en plus de posséder le plus grand nombre de modules, le langage JavaScript contient le plus grand nombre de dépôts actifs.

![Statistiques des langages de programmation sur Github][repositoryGithub]

TODO trop long certains trucs ? la partie sur utilisation etendue est interessante sinon le reste est un peu trop technique p e
TODO images trop grandes ? meilleure image possible. annexe ?

## Mobile

* Marché du mobile en explosion, en 2014, la navigation mobile a dépassé la navigation desktop
* Du coup, toujours connecté = beaucoup de navigation web
* Sur le mobile il y a donc 2 marchés : le web mobile et le natif, et les 2 sont a prendre
* Expliquer un peu la différence entre les 2

![Nombre d'internautes mobile et PC][Mobile-web-browsing-vs-desktop-web-browsing]

### Mobile Web

* Les technologies se sont adaptées : CSS3 media queries => ca s'appelle le responsive
* Beaucoup d'outils et de frameworks
* mais uniquement via navigateur web

### Mobile Natif

* Les applications natives sont quand meme beaucoup utilisées, plus que le web, enfin ca depend
* passent par le market
* Normalement un peu compliqué, langages différents par plateforme
* look & feel natif => l'utilisateur se retrouve
* bonnes performances

### Mobile hybride

* Il est désormais possible de faire des applis natives avec les technos du web, cross plateforme
* Plein d'outils, cordova, etc. Access aux fonctionnalités natives photos tout ca (webview)
* Seul probleme : look & feel web et performance, mais ca marche pas mal quand meme et c'est moins cher
* Donc au final, quand on fait une appli web, ben on peut faire eventuellement une appli mobile aussi, c'est pour ca qu'on integre ca ici
* avantages : cross plateforme et techno unique
* inconvenient : eventuellement perf selon l'appli et look & feel

## Projet de démonstration : POC

* Ce projet sera le support et la démonstration de ce mémoire
* C'est un projet de type POC (Proof of Concept)

### Contexte et motivations

#### Couts elevés

* Cdiscount possede un site web mobile, un site responsive, une appli native android, une appli native ios
* Cdiscount paye tres des partenaires pour developper les applis natives 
* L'expertise de Cdiscount c'est le web, et payer les partenaires ca coute cher, surtout avec l'intertionalisation et la spécificité de certains pays
* si ou pouvait utiliser notre expertise pour faire des applis mobiles nous meme ca serait cool

#### Recherche de meilleure méthode et architecture

* Cdiscount = Cycle en V, mais c'est en train de changer ? voir présentation entreprise ?
* Cdiscount en pleine reflexion sur l'architecture de son SI et se rend compte de ses faiblesses (citer les faiblesses ?)

#### Utilisation de l'expertise de notre équipe

* utilisation de nos recherches + expertise sur les nouvelles technos
* collaboration avec l'equipe archi
* 3 devs

### Description

* Le projet consiste donc a imiter le comportement de l'appli android actuel en utilisant :
    * Technologies web uniquement
    * Architecture bien choisie
    * bonne Méthodologie 
* Temps : 2 mois, et les limites que ca implique. On peut pas refaire toute l'appli en 2 mois a 3 devs. On verra jusqu'ou on peut aller

### Objectifs

#### Principal objectif

* principal objectif : comprendre la méthodologie pour avoir une application web de qualité. se munir des bons outils pour.
* qu'est-ce qu'un logiciel de bonne qualité ? un logiciel permettant
    * développement d'une fonctionnalité rapidement (temps = argent)
    * etre sur a tout moment que l'application fonctionne en prod
    * les nouveaux developpements ne regressent pas l'application (assurance qualité ?)
    * déploiement rapide, fréquent et simple en production

#### Autres objectifs

* démontrer qu'il est possible d'utiliser notre expertise web pour faire des applications mobiles
* que differentes technos existent et plus adaptées dans certains cas, et permettent plus de choses (meilleure testabilité, etc.), il faut avoir une veille active pour ca
* mais surtout bien faire comprendre que les technos au final ce n'est pas si essentiel que ca et qu'il faut pas en devenir dépendant
* proposer une autre facon de faire a Cdiscount et pour ca il faut prouver que c'est bien et industrialable
* montrer que cette facon de faire est en accord avec ce que veut mettre en place l'equipe archi
* que les petites equipes s'en sortent mieux avec une méthode agile sur des petits projets (pizzas team comme essaye de faire Cdiscount)
* Conclusion : devenir une inspiration pour Cdiscount sur plein de plans, et meme plus que ca => utiliser cette solution dans certains cas

# Choix d'architecture 

* faire un bonne appli commence par choisir une bonne archi
* c'est plus important que choisir des technos => si archi est bien choisie, il est possible de choisir et de changer de techno lorsque c'est necessaire
* faire la transition avce le poc, dire ben on va faire au fur et a mesure la conception

## Différents styles d'architecture

* il existe de nombreux styles d'archi
* comme son nom l'indique, il n'y a pas de bonne ou mauvaise archi, juste des avantages et des inconvenients
* pour ca il faut bien les comprendre et avoir une visu sur les principaux
* on va donc voir les principaux et leur description générale, ceux qui ont étés pris en considération pour le POC, et utilisé actuellement a Cdiscount

### Description

Qu'importe le type d'application (web, bureau, front-end, back-end, etc.), il est essentiel de decider de l'architecture logiciel globale de celle-ci. C'est encore plus crucial pour un SI. Il existe plusieurs styles d'architecture et nous allons voir les principaux utilisés aujourd'hui.

Mais tout d'abord qu'est-ce qu'un style architectural ? Voici une definition de David Garlan and Mary Shaw dans leur livre "An Introduction to Software Architecture" :

"family of systems in terms of a pattern of structural organization. More specifically, an architectural style determines the vocabulary of components and connectors that can be used in instances of that style, together with a set of constraints on how they can be combined. These can include topological constraints on architectural descriptions (e.g., no cycles)."

Ce qui peut etre traduit par : "... famille de systemes en termes d'un modèle d'organisation structurelle. Plus specifiquement, un style d'architecture determine le vocabulaire des composants et connecteurs qui peuvent etre utilises dans des cas de ce style, avec un ensemble de contraintes sur la façon dont ils peuvent être combinés. Ceux-ci peuvent inclure des contraintes topologiques sur descriptions architecturales (par exemple, pas de cycles)."

TODO faire des jolis citations

Voici un tableau comprenant les principaux styles d'architecture logicielles classés par catégorie.

| Catégorie | Styles d'architectures |
| --- | --- |
| Communication | SOA (Service Oriented Architecture), Message Bus |
| Déploiement | Client/Serveur, N-tiers, 3-tiers |
| Domaine | DDD (Domain Driven Design) |
| Structure | Orienté composants, Orienté objet, Architecture en couches |

* il y a un dernier qu'on verra apres, c'est les microservices. c'est une combinaison de plusieurs de ces styles

TODO pas joli tableau

* L'architecture logiciel ne se limite généralement pas a un seul style d'architecture. C'est tres souvent une combinaison de plusieurs styles qui vont faire un systeme complet. TODO pas joli. 
* Ainsi un SI peut utiliser plusieurs styles selon le niveau de granularite ou l'aspect du systeme decrit. 
* Nous ferons remarquer que, comme en architecture traditionnelle, c'est souvent par le mélange d'anciens styles que les nouveaux apparaissent. Genre Microservice c'est un SOA en moins monolithe.

### Résumé des differents styles

Nous allons d'abord voir un résumé de chaque style cité auparavant, puis détailler les plus importants utilisé dans le monde du web et ceux décris dans ce document. TODO en fait c'est les points clés

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

### MVC

#### Description

* Pas vraiment un style d'archi mais plus un design pattern. Mais bon il est tres utilisé dans le monde du web, donc ca vaut la peine d'en parler
* Ecrire des interfaces graphiques c'est pas facile. L'idée principale est de bien séparer les données, la présentation et les traitements. Il en resulte alors les 3 parties suivantes :
    * Modele : Représente le coeur algorithmique de l'application (traitements des données, interactions avec la base de données, etc.)
    * Vue : Ce avec quoi l'utilisateur interagit,  La vue n'effectue pas de traitement, elle recoit toute action de l'utilisateur et transfere au controlleur
    * Controlleur : Prend en charge la gestion des evenements de synchronisation pour mettre a jour la vue ou le modele et les synchroniser. Il reçoit tous les événements de la vue et enclenche les actions à effectuer. Si une action nécessite un changement des données, le contrôleur demande la modification des données au modèle afin que les données affichées se mettent à jour. 
* Flux de traitement :
    * Chaque action utilisateur est analysée par le controleur (clic de souris, etc.)
    * Le controleur demande au modele approprié d'effectuer les traitements et notifie a la vue que la requete est traitee
    * La vue notifiée fait alors une requete au modele pour se mettre a jour (par exemple pour afficher le resultat du traitement fait par le modele)
* Contient des dérivées (MVP, MVVM, etc.). On appelle ca les archi MV*, c'est a peu pres pareil au final

![Modèle Vue Contrôleur classique][mvc]

#### Avantages

* Simplicité et efficacité, clarté
* rapide a prendre en main
* Séparation des responsabilité minime mais présente
* facilite la modification => genre changer un traitement ne modifie pas la vue, et inversement, genre un changement de base de donnees
* tres repandu

#### Inconvénients et critiques

* Tres souvent pattern utilisé différement : logique dans les controleurs et modele uniquement comme source de donnees.
* C'est pas tres grave en soi, des variantes du MVC font ca
* Le vrai probleme c'est que la logique est fortement couplée au controleur. Comme le controleur c'est la techno qui le definit => logique couplé a la techno, ce qui rend le changement de techno difficile. et comme archi > techno...
* Mieux si la logique est a part. Mais en fait il y a 2 logiques, application et domaine. c'est melangé, fortement couplé. donc faut essayer de separer. Comment ? plusieurs solutions. 

ancien texte : 

Ceci est la définition théorique du pattern MVC. Cependant, il est souvent utilisé d'une maniere legerement differente. Le modele ne contient finalement généralement pas la logique de l'application. Il n'est utilise qu'en source de donnees. La logique se retrouve alors dans les controleurs. 

Le probleme majeur de ce pattern est que la logique metier est fortement couple au controleur. Généralement, la définition d'un controleur est differente selon la technologie et le framework utilise. Ainsi, si la logique de l'application est dans le controleur, celle-ci devient fortement couple a la technologie utilisee. Si pour une certaine raison, un changement de technologie doit s'effectuer, il sera alors obligatoire de reimplementer la logique.

D'apres la definition du pattern MVC, les controleurs ne sont que des orchestrateurs. Meme si la logique se situe dans le modele, ce dernier contient de nombreux roles. Il contient finalement la logique de l'application. Mais finalement, qu'est-ce que la "logique de l'application" ?

TODO probleme avec server side rendering, mais ca je le dis apres nan ?
TODO peut etre parler du MVC apres tous les styles pour avoir les concepts
TODO archi > techno, dire ca en premier ici, ou c'est dit avant ?
TODO peut etre pas donner de proposition de remplacement ici, juste des critiques. En conclusion de cette partie p e 

#### Bien pour

les trucs simples ?

### Architecture orienté composants

#### Description

* focus sur la decomposition en composants individuels (fonctionnel ou logique) exposant des interfaces de communication bien définies comprenant méthodes, proprietes et evenements.
* niveau d'abstraction plus haut que l'orienté objet 
* souvent partie d'un design plus grand ??????
* Attributs:
    * Reutilisable : Peut etre reutilise dans un autre scenario dans d'autres applications
    * Remplacable : Peut etre remplacé par des composants similaires
    * Sans contexte specifique : Les informations spéciques a une application comme des donnees sont passes en variable d'entree au lieu d'etre inclu et gere par le composant
    * Extensible : Possibilité d'étendre le comportement d'un composant
    * Encapsulé : Chaque composant expose des interfaces qui permettent a l'appelant d'utiliser les fonctionnalités du composant sans savoir son fonctionnement interne (état ou variables internes)
    * Indépendant : Pensé de maniere a dependre tres peu d'autres composants. Peut etre déployé dans un autre environnement sans affecté les autres composants

#### Avantages

* Facilité de déploiement : Changement de version avec peu d'impact sur le reste du systeme
* Cout réduit : Utilisation de composants externes permet de réduire le cout de développement et de maintenance
* Facilité de développement : Les composants exposent des interfaces providant (lol ?) une fonctionnalité bien définie, permettant de développer sans impact avec le reste du systeme. (TODO pas deja dit ca ?)
* Reutilisable : deja dit... TODO peut etre un avantage plutot qu'un attribut ?
* Atténuation de la complexité technique : TODO en fait ca je vais pas en parler je pense

#### Inconvénients et critques (et challenges ?)

* niveau un peu plus haut que l'orienté objet, il faut bien comprendre comment ca marche pour utiliser a bon escient
* ne peut fonctionner tout seul. le style doit etre combiné avec d'autres style pour etre vraiment bien
* en effet, ce style ne se concentre pas sur les protocoles de communication, gestion d'etat d'une application, etc.
* pas d'inconvenients en soi. il faut juste bien comprendre et l'utiliser a bon escient en le combinant avec d'autres styles pour en tirer profit. c'est un choix

TODO si c'est un choix, preciser quand est-ce que c'est mieux ? bien pour ?

#### Bien pour

??

### Architecture orienté évènements

#### Description

* principe : utliser un systeme permettant de recevoir et envoyer des messages en utilisant un ou plusieurs canal de communication. Ainsi, l'application peut interagir sans avoir le besoin de connaitre des details a propos de chacun. 
* Il y a generalement un bus central et c'est asynchrone
* couplage faible et application independantes
* communication standard ?

#### Avantages

* Extensible : Les appliciations peuvent etre enlevés ou rajouté sans avoir d'impact sur les applis existantes
* Faible complexité : Les applications ont uniquement besoin de savoir comment communiqer avec le bus et non pas avec le reste du systeme
* Flexibilité : La combinaison d'applications formant un systeme peut etre changée et manipulée a tout moment tout comme le pattern de communication
* Faible couplage : Chaque application n'a qu'une seule dependance : le bus. Le comportement interne est independant. ca peut meme etre un autre langage
* Scalabilité : il peut y avoir plusieurs instances d'une meme appli attachée au bus pour accelerer ou gerer plusieurs requetes a la fois

#### Inconvénients et critques (et challenges ?)

choisir un pattern de communication, c'est pas forcement facile. quoi mettre dans le message, types d'evenements, etc. 
evolution du message difficile ?
un peu complexe ?

TODO continuer
TODO voir l'archi microservices pour voir les inconvenients ?
TODO 2 types d'evenements : fais quelque chose et a fait quelque chose, le 2eme c'est mieux. En parler pour le front ca ?

#### Bien pour

??

### Architecture orienté domaine (DDD)

#### Description

* approche orienté objet qui dit que le design est basé sur le domaine métier, ses elements et comportements
* toujour en contact avec les specialistes donc (inconvenient => pas facile ?)
* coeur du logiciel = domain model (modelisation directe du domaine ?)
* Utilise le vocabulaire proffessionel du domaine plutot que du jargon technique
* domaine isolé et encapsulé au centre, la technique autour
* Citation de Eric Evans dans son livre DDD : 
    * "In order to create a good software, you have to know what the software is all about. You cannot create a banking software system unless you have a good understanding of what banking is all about, one must understand the domain of banking."

#### Avantages

* Communication : Toute partie de l'equipe de developpement utilise le domain modele et les entites qu'il definit pour communiquer le business knowledge et le requirements en utilisant un langage metier commun, sans jargon technique
* Extensible : le domain model est tres souvent modulaire et flexible. Mise a jour et changement simple en fonction des demandes metiers (requirements)
* Testable : domain model faiblement couplé et cohesive (??) => facilement testable
* domaine au milieu et technique autour => n'importe quel couche technique va aller, du front, du web service, etc.

TODO traduction domain model

#### Inconvénients et critques (et challenges ?)

langage domaine pas toujours facile a modeliser => communication problems ?
forte complexite

#### Bien pour

??

TODO sur le site https://msdn.microsoft.com/en-us/library/ee658117.aspx, ils proposent plein de livres pour le DDD

### Architecture orienté services (SOA)

#### Description

* Les fonctionalites d'une application sont proposées comme un set de services
* Utilisation d'interface de communication standard permettant l'invocation, la publication et la decouverte
* different de object oriented et component oriented
* communication en remote possible
* Attributs :
    * Autonomie : Chaque service est maintenu, developpe, et versionné independemment
    * Distribuable : peut etre n'importe ou sur le reseau tant que le reseau supporte le protcole de communication
    * Faible couplage : Chaque service est independant des autres. Il peut etre modifie, ou remplacé sans problemes tant l'interface est toujours compatible
    * partage de schemas et de contrats, pas de classes : pas de communication via classe interne

#### Avantages

* Alignement du domaine (??) : la reutilisation des services avec des interfaces standard augmentent les opportunités business et technique permettant un cout reduit (TODO ca veut pas dire grand chose ?)
* Abstraction : Les services sont autonomes et accedes via un contrat formel => couplage faible
* Découvrable : les services exposent une description qui permet aux autres applications et services de les localiser et d'automatiquement determiner l'interface
* Interoperabilite : Les protocoles et formats de donnees sont bases sur les standards de l'industre. Le provider et le consumer peuvent alors etre construits et deployes sur des plateformes differentes (langages aussi ?)
* Rationalisation (??) : Les services sont assez granulaires (??) pour fournir une fonctionnalité specifique, plutot que dupliquer la fonctionnalites dans plusieurs applications, ce qui supprime la duplication (TODO titre => reutilisation ??)

#### Inconvénients et critques (et challenges ?)

* monolithe
    * large code => intimidant => difficile a comprendre et a modifier
    * IDE, web container overloaded
    * dev ralenti
    * petit changement => grand impact 
        * chaque changement => full rebuild, test and deploy
        * obstacle pour les changements frequents et les deploiements
    * changement de techno = tout reecrire
    * pas de re-write partiel
    * si fail, tout le monolithe fail
    * scalabilité difficile
certains protocoles lourd ?

TODO 
TODO cdiscount est un monolithe, est-ce que c'est a cause du SOA ?
TODO SOA = monolithe ?

#### Bien pour

??

Consider the SOA style if you have access to suitable services that you wish to reuse; can purchase suitable services provided by a hosting company; want to build applications that compose a variety of services into a single UI; or you are creating Software plus Services (S+S), Software as a Service (SaaS), or cloud-based applications. The SOA style is suitable when you must support message-based communication between segments of the application and expose functionality in a platform independent way, when you want to take advantage of federated services such as authentication, or you want to expose services that are discoverable through directories and can be used by clients that have no prior knowledge of the interfaces.

TODO un livre sur SOA ?

### Microservices

#### Description

* d'apres martin fowler : 
    * "The microservices architecture style is an approach to developing a single application as a suite of small services, each running in its own process, and communicating with lightweight mechanisms, often an HTTP resource API. These services are built around business capabilities and independantly deployable by fully automated deployment machinery. There is a bare minimum of centralized management of these services, which may be written in different programming langages and use different data storage technologies"
* c'est du SOA mais avec une approche differente de l'implementation
    * SOA : integrates different applications as a set of services
    * MSA : architectu a single application as a set of services
* SOA : scalabilite horizontale (load balancing) et vertical (grosses machines)
* MSA : scalabilite fonctionnelle (horizontale ou verticale par fonctionnalité)
* Scalabilité des equipes : les equipes s'occupent d'un seul composant ?
* attributs : 
    * petit et focus sur une seule fonctionalité
        * facile a comprendre
        * IDE et déploiment rapide pour un seul service
    * Independant
        * Release et déploiement
        * Scalabilité
        * Dev
    * Faible couplage 
        * a travers des moyens de communication leger
    * Permet l'essai de nouvelles technos
    * La reecricture limité a un seul service (des fois ca fait du bien de reecrire)
    * Limites des modules claires et interface explicite
    * Donnee decentralisée et polyglote => chaque microservice a sa base de donnees, technologie independante (changeante)
* architecture evolutive (techno changeante, scalabilité, etc.)
* va tres bien avec le DDD : chaque domain model peut etre un microservice ?
* Le DDD aide a la decomposition fonctionelle

TODO traduire la citation
TODO refacto description + en resortir les avantages
TODO parler de l'exemple de netflix ? du monkey je sais plus quoi ?

#### Avantages

#### Inconvénients et critques (et challenges ?)

* la decomposition fonctionnelle c'est dur, si c'est mal fait, fort couplage entre les services et avantage des microservices perdus
* complexité opérationnelle : ca bouge beaucoup, il faut que ca soit beaucoup automatisé sinon c'est dur a gerer. Pour ca il faut du bon monitoring. La configuration est aussi plus dure
* Developpement distribué : savoir gerer :
    * donee decentralisée 
    * communication entre les services
    * gerer la failure des composants
* testing plus complexe
* technique : commencer doucement ?

#### Bien pour

Les SI complexes ? 

TODO regarder prez : http://fr.slideshare.net/aca_it/micro-services-40695502 et ailleurs pour des images ?
TODO avantages inconvenients sur page officielle : http://martinfowler.com/microservices/

TODO trouver un meilleur titre que "bien pour"
TODO garder le bien pour ?

## Spécificités du Front-end

TODO expliquer a un moment front-end, back-end
TODO differencier application traditionnelle et architecture traditionnelle, enfin c'est un peu l'archi quand meme ?

### Architecture traditionnelle

TODO remplacer par application traditionnelle ? parce que c'est pas vraiment une archi et sur les images c'est ecrit applciation

#### Description

On dit qu'une application web utilise une architecture traditionnelle lorsque la formation de la vue (HTML) se produit du cote du serveur (server-side rendering). Le principe est le suivant : 

* Un navigateur web envoie une premiere requete lors de l'arrivee sur un site web. 
* Le serveur va chercher des donnees si necessaire, puis forme la vue entierement (document HTML statique) et repond ce document au navigateur.
* Le navigateur affiche cette page directement. Si l'internaute remplit un formulaire, ou clique sur un lien pour changer de page, l'operation precedente recommence. Il recoit la page HTML suivant, etc.

Du cote du serveur, une architecture du type MVC* (Modele Vue Controleur) est generalement mise en place pour bien separer les concepts (formation de la vue, des donnees et de la logique metier*). L’HTML étant un document statique, pour rendre l’expérience utilisateur plus intéressante, on utilise du javascript chargé côté client pour modifier la structure de l’HTML courant (via le DOM) et permettre des effets de type animation, etc. Il faut bien comprendre que les fichiers HTML/CSS/Javascript sont chargés à chaque demande de page, car lorsque l’utilisateur demande une autre page (par exemple passage de l’accueil du site à la gestion de son compte), la logique est différente ainsi que l’HTML (le CSS et le Javascript sont souvent mis en cache par le navigateur). Une nouvelle page web correspond à une nouvelle logique qui doit être générée.

![Schéma en anglais représentant l’architecture classique][traditionalArchitecture]

TODO relire

#### Critiques de l'architecture

Cette architecture a été utilisée depuis très longtemps et les frameworks proposés (généralement du MVC) sont très avances. Nous allons cependant voir les limites de celles-ci.

##### Temps de chargement

Le client doit charger la page HTML à chaque fois qu’il navigue entre les pages où qu’il envoie un formulaire. Les traitements serveur sont exécutés à chaque fois, et le client recharge le javascript côté client à chaque requête, ce qui ralentit beaucoup sa navigation. De plus, la création de la page HTML est a la charge du serveur, ce qui augmente le travail effectue cote serveur.L'avantage est que la page affichée est définitive et allege le client.

##### Limites de l'architecture MVC

Avec cette architecture, le serveur est charge a la fois de gerer les donnees, les vues et la logique metier. L'architecture MVC* a pour but de bien marquer cette separation au niveau du code. Si la couche Model sert d'acces au donnees, la couche Vue sert a generer l'HTML, la partie Controler fait le lien entre les deux. On met tres souvent la logique pure de l'application dans les controleurs, ce qui rend difficile sa reutilisation dans un autre contexte.

##### Un metier difficilement reutilisable (couplage fort)

Le code metier est tres souvent melange avec les controlleurs de l'application web. Le metier est donc dans ce cas fortement couple avec l'application web. Pour creer une application sur un autre support (mobile, bureau, etc.), cette logique est difficilement reutilisable et devra surement etre reimplementee dans une autre technologie (redevelopper l'acces aux donnees, etc.). 

TODO ca c'est peut etre plutot les limites de l'architecture MVC qui a enmene a la creation del'architecture SOA, peut etre que ca a rien a voir avec les limites de l'architecture traditionnelle. 

##### Travail de la vue cote client et cote serveur confus

Le serveur genere les fichiers utilises par le navigateur (HTML/CSS/JavaScript). L'HTML est un langage statique. Nous avons vu precedemment que le JavaScript permet de dynamiser l'application. Le developpeur doit alors gerer l'HTML brut genere pour le client, ainsi que le JavaScript qui permettra de dynamiser le tout. 

##### Une architecture qui pousse au stateful

Une application dite "stateless" est une application qui ne garde aucune information entre les requetes HTTP. A l'inverse, une application dite "stateful" est une application qui a la possibilité de garder des informations entre les requetes (remplissage d'un panier, connexion d'un utilisateur). Il est commun lors du developpement d'application web de stoquer des variables en session pour chaque utilisateur. Si cela peut etre tres pratique, la gestion d'un etat apporte une difficulte supplementaire a l'application. En plus de cela, il est plus difficile de scaler (TODO ca existe comme mot ?) horizontalement (rajouter des serveurs) car le partage de ces informations entre plusieurs machines n'est pas tache aisee.

* Bien pour les applis de types :
    * Site marchand 
    * Site web statique

TODO expliquer ce qu'est la logique metier (business logic)
TODO refacto 
TODO garder le plan : description, avantages, inconvénients/critiques, bien pour ?

### Passage aux Single Page Application

#### Description

Le javascript ayant évolué, permet des interactions plus dynamiques avec un serveur grâce à l’AJAX*. L’AJAX permet au javascript de lancer une requête http non bloquante (asynchrone) et d’avoir le résultat de la requête sans avoir à recharger la page.

Cet atout, combine a la performance des recent moteurs javascript ont permis l’apparition d’un nouveau type d’applications, les Single Page Applications (SPA). C’est une application permettant à l’utilisateur d’avoir une expérience dynamique et non bloquante (proche des applications de bureau). En effet, l’utilisateur ne charge qu’une seule fois les fichiers de l’application (HTML/CSS et surtout Javascript). Le javascript s’occupe ensuite de changer la structure des pages en
fonction des actions de l’utilisateur. Les communications serveur se font par AJAX et ne
demandent pas le rechargement de la page. 

Nous avons vu qu'avec l'architecture traditionnelle et le rendu cote serveur, la gestion de la vue et des donnees est confuse. Le but ici est d'avoir reelement deux applications totalement differentes. L'une est le client (la vue), comprenant toutes les interactions avec l'internaute (HTML/CSS/JavaScript), et l'autre est le serveur, comprenant la logique metier faisant abstraction de tout ce qui est visuel. Le serveur devient ce que l'on appelle commenement un web service, pouvant servir plusieurs types de client.

![Schéma en anglais représentant l’architecture Single Page Application][spaArchitecture]

#### Avantages

##### Un meilleur découplage

Le fait d'avoir réellement deux applications différentes (serveur et client) rend plus facile le développement (couplage faible*). Il y a plusieurs avantages a cela. 

D'une part, l'architecture globle de l'application est beaucoup plus claire. Il n'y a plus de confusion entre le serveur qui doit s'occuper du chargement de la vue et le client qui doit rendre ce contenu statique plus dynamique. Le serveur ne sert finalement que les donnees.

D'autre part, la communication entre le client et le serveur s'effectuant generalement de maniere textuelle (json, xml, etc.*) via le protocole HTTP (on appelle cela un web service), cela permet d'avoir des technologies independantes. La migration d'un langage ou d'une technologie du cote serveur est alors facilitée. 

De plus, avec cette architecture, il est possible de facilement reutiliser le serveur dans un autre contexte avec un autre client. Il est alors plus aisé de creer un client natif mobile par exemple. Il suffit de refaire l'interface. TODO c'est moche comme phrase. 

##### Des performances améliorées

Le fait que le serveur ne se charge plus de former la vue, mais que des donnees de maniere textuelle soulage grandement la charge des serveurs. L'application web utilise ainsi les ressources du navigateurs pour former la vue. Cela est possible grace aux récentes avancées du JavaScript.

Nous avons vu la difference entre un programme stateful et stateless (TODO c'est vrai ?). Nous avons aussi vu que l'architecture traditionnelle pousse a l'utilisation du stateful du cote du serveur. Sans etre une regle, a l'inverse, l'architecture SPA pousse a l'architecture stateless. Cela facilite grandement la scalabilite horizontale et permet d'avoir des performances grandement ameliorees du cote du serveur aussi.

#### Inconvenients

Cette architecture est finalement beaucoup plus evoluee et fonctionne tres differemment de l'architecture traditionnelle. Les standards du web et les navigateurs ont etes concus pour l'architecture traditionnelle et ce changement d'architecture apporte quelques difficultés. Cependant, celle-ci va de plus en plus devenir la norme et les standards ainsi que les navigateurs evoluent dans ce sens. 

TODO dire ca a la fin p e

##### JavaScript obligatoire

Pendant tres longtemps, le JavaScript etait tres peu utilisé et il etait meme facultatif. Les dernieres applications web reposant entierement sur ce dernier, les internautes se doivent de l'avoir activé pour utiliser les appliactions web. Ceci est de moins en moins problématique, car il est généralement activé par défaut. On peut aujourd'hui considérer que tous les internautes ont le JavaScript d'activé. 

##### Outils habituels du web a adapter

Si les applications web changent, les outils gravitant autour se doivent aussi de changer. Par exemple les moteurs de recherche qui indexent les sites web (SEO) n'executent généralement pas de JavaScript, or comme nous l'avons vu, celui-ci est tres souvent essentiel. Recemment, le moteur de recherche le plus utilise Google integre l'utilisation du JavaScript lors de l'indexation des pages.

Les outils d'analyse de trafic Web doivent aussi s'adapter. En effet, ceux-ci se basent beaucoup sur le chargement de nouvelles pages lors de son analyse, ce qui est beaucoup moins pertinant avec une architecture Single Page.

TODO des chiffres p e pour dire que Google est le plus utilise

##### Chargement de l'application un peu plus lourd

L'application n'ayant qu'un seul point d'entree, celle-ci peut etre un peu plus longue a charger au debut. Ceci vient du fait que le navigateur doit completement charger les frameworks dont il est dependant avant de pouvoir debuter l'application. Apres ce chargement initial, l'application est cependant tres fluide, n'ayant pas le besoin de recharger plus tard. De plus, les frameworks utilises sont tres souvent les memes et sont souvent mis en cache.

Finalement que des habitudes de développement a changer. Mais c'est dans le bon sens. evolution evolution

TODO conclusion ?
TODO refacto 
TODO avantages inconvenients sur http://nerds.airbnb.com/isomorphic-javascript-future-web-apps/

* Bien pour les applications de type:
    * Mail (Gmail)
* Dire dans quel cas c'est mieux quel archi quelque part avec des exemple p e

### Choix de styles d'architecture

#### MVC

* beaucoup de mvc en front mais bon on a vu que c'etait pas terrible

TODO Au final je prends pas ce style, en parler ou pas ? c'est juste que c'est beaucoup utilisé. J'ai deja critiqué nan ?

#### Architecture orienté composants

Web components
custom elements and custom properties
shadow dom with css scoping
html imports
but => isolation (comme le style d'origine)
source http://blogs.windows.com/msedgedev/2015/07/14/bringing-componentization-to-the-web-an-overview-of-web-components/

#### Architecture orienté évènements

communication entre les composants => messages ou bus d'evenements

TODO Dire que y'a plein de trucs et que finalment ca depend beaucoup des projets, des equipes, etc.
TODO isomorphique ou pas ?

## Spécificités du Back-end

### Application traditionnelle

le back fait aussi la vue

TODO

### Passage aux Web services

soap, rest

TODO web services, voir ou mettre les majuscules

### Choix de styles d'architecture

#### SOA

cdiscount le fait

#### Microservices

cdiscount veut le faire
c'est ce qu'on veut faire avec le poc

TODO choix d'architecture avec S ou pas ?
TODO cette partie vraiment interessante ? p e juste les soap rest et encore

## Idéologie commune

architecture avant technologie
grande inspiration de DDD mais pas mal de microservices quand meme
domaine avant tout, business logic de SOA, 2 types de logique, etc.

TODO mettre le contenu de cette partie ici ou en intro ? c'est une conclusion ? ce qu'il faut retenir ? 
TODO Je dis que tel style est meilleur que tel autre. Dans tous les cas ou juste celui du POC ? 
TODO rajouter des references a des livres avec toutes ces archis
TODO parler de l'archi en couche parce que cdiscount utilise ca ? critiquer celle de cdiscount ? Si oui comparer au MVC un peu
TODO mettre une image expliquative par archi ?
TODO qu'est-ce qui est appliqué au POC

# Choix technologiques

choix du poc
on a vu que l'archi est plus important que la techno, mais bon on se repose dessus donc faut quand meme choisir des technos qui permettent d'appliquer l'archi. 
surtout faut pas devenir dependant trop de la techno, le business model doit rester isolé
donc bien choisir ses technos en fonction des besoins, mais pouvoir en changer facilement selon le composant et sans impacter trop le systeme c'est mieux

## Front-end

### Choix d'un framework SPA

c'est difficile a choisir
framework = structure
donne : architecture flexible, reusable components et enforce la separation of concerns 
une autre solution c'est de pas utiliser du tout mais faut un high level et c'etait p e pas ce qui etait bon pour cdiscount
je presente pas tous les frameworks parce que y'en a beaucoup. Je vais juste présenter ceux entre lesquels j'ai hésité pour le POC
au final comme ca evolue beaucoup, ca va dependre du moment
ils sont tous open source

#### AngularJS

##### Description

* créé en 2009 par google
* propose :
    * Injection de dépendances
    * Orienté composants via directives
    * MVC mais avec notion de "service" qui peut servir pour mettr de la business logic
    * testing
        * unit
        * E2E via protractor
    * modules
    * two way data binding
* Version 2 en cours de développement qui va apporter plus de choses : 
    * Shadow DOM
    * Plus de performances
    * Encore plus orienté composant
    * Plus simple

##### Avantages

* stable : 1.4
* beaucoup utilisé (voir les stats) et beaucoup de modules open source, beaucoup de reponses dessus
* si bien utilisé (de facon moderne), passage a la version 2 facile, voir meme une autre techno, surtout si on fait du DDD
* eviter la manipulation du DOM
* bonne séparation pour chaque composant (HTML, JS, CSS) meme si le CSS est pas encore scopé dans la version 1

##### Inconvénients

* pas facile a prendre en main ? surtout s'il faut bien l'utiliser
* version 2 qui casse tout
* angular way ?
* performances ?

#### ReactJS + Flux

##### Description

* React : 
    * créé en 2013 par Facebook
    * orienté composants
    * que la vue (V de MVC)
    * Utilise le virtual DOM, un peu différent du shadow dom (pas standard) mais tres performant
* Flux
    * architecture créé par Facebook qui complémente les composants react qui prone le flow de donnees unidirectionnel (contraire du two-way data binding)
        * plus perf (le double way ca a des cycles de digestion)
        * Les donees descendent et les actions remontent
    * orienté évenements

##### Avantages

* Simple
* Flux sur la bonne voie de faire les choses bien
* server side rendering possible pour le SEO
* performant
* commence a etre stable et a etre pas mal utilisé, ca commence a etre le chouchoux du moment en fait, surtout a cause de la polémique avec angular 2
* des outils qui apparaissent autour comme react native, qui permet d'utiliser les composants mobile natifs, mais bon c'est early et y'a pas android

##### Inconvénients

* JSX j'aime pas trop => mélange des fichiers HTML et JS => vue + logique
* tout recent
* pas standard : JSX + virtual DOM
* au final c'est pas vraiment des inconvénients, ca dépend du style de dev

#### Polymer

##### Description

* créé par Google en 2014
* permet de creer facilement de maniere standard des web components
* ce n'est pas vrament un framework
* polyfill
* utilise les derniers trucs : 
    * shadow dom
    * html import

##### Avantages

* permet d'utiliser les web components de maniere standard qui peut marcher partout avec les polyfills
* perfs ok

##### Inconvénients

* tres early, version 1.0 y'a pas longtemps
* tres peu de modules open source
* moins complet que les autres, faut combiner avec d'autres trucs. pas vraiment un inconvenient, plus un choix

#### Aide pour choisir et choix pour le POC

* Il est possible de faire de l'orienté composants avec tous, et sont tous bien. apres c'est juste un choix
* pour le poc, j'ai choisi angular parce que
    * mature
    * style approuvé personnellement, en plus j'ai de l'experience dessus
    * performances correctes selon moi et dans ce use case la ca va
    * SEO pas un probleme pour moi (de toute facon c'est quand meme possible)
    * beaucoup de ressources et de modules existant sur internet
    * testing trop bien
    * efficace
* react c'est bien mais
    * j'aime pas trop le jsx, je prefere la separation des fichiers d'angular
    * failli prendre ca, mais bon c'est une histoire de preferance la
* polymer c'est bien aussi mais
    * vraiment tres early, la version 1 est sorti alors qu'on etait deja en train de dev le POC, important pour la mise en production
    * independant, c'est bien mais pour une vrai appli faut le composer avec d'autres trucs, on etait plus efficace avec angular. pour d'autres applis et plus tard si on y passe du temps
* rajouté un bus d'evenements fait maison pour faire de l'orienté evenements, en plus y'a pas d'origine ca sur angular. inspirations de flux
* conclusion : la techno choisie (angular + bus evenements) permet de mettre en place l'archi qu'on veut (composants + events). ca permet aussi d'autres trucs qui vont nous servir pour la methodo choisie (on verra plus tard, mais c'est le testing qui est vraiment interressant)
* au final ils sont tous bien, c'est vraiment un choix

TODO meilleur titre ?
TODO parler de la structure des fichiers d'un component ? (controller, service, css, etc.)

### Choisir les bons outils

le web est devenu plus complexe, on est loin du bon vieux php qui va en prod en ftp
maintenant y'a pleeeein d'outils

#### Outils de compilation

##### Gulp

* task runner definition
* il y en a plusieurs mais moi j'ai pris gulp
* plusieurs taches :
    * build web
    * build mobile
    * watch
    * server
* a la compil il faut transpiler parce qu'on fait du bon javascript qui va rester mais qui est pas encore bien supporté (ES6)

old
Un « task runner » javascript est très utile du côté du frontend. En effet, lorsque l’on
développe une application web, il arrive très souvent que certaines tâches se répètent.
L’utilisation d’un « task runner » permet d’éviter ces répétitions (DRY : Don’t Repeat
Yourself), et automatiser certains mécanismes (compilation CSS, minification Javascript,
etc.).

##### Cordova

* anciennement PhoneGap
* framework de dévepllopemnt mobile
* permet de faire du natif avec les technos web = application hybride
* fonctionnalité natives du tel comme photo, GPS, tout ca
* acceleration webview avec cocoonjs

TODO pas deja dis ca ?

#### Gestionnaire de paquets

* utliser beaucoup de librairies open source c'est bien mais c'est dur a gerer
* un gestionnaire de paquets pour ca c'est bien, ca s'utilise commme en backend
* bower = l'équivalent frontend

#### Gestionnaire de versions

* versionnig est tres important
* git le plus utilisé

#### Automate

* component angular demande beaucoup de fichiers, et la création est longue et répétitive (DRY)
* du coup j'ai fait un générateur de composants angular (ca existait pas)
* yeoman : tres connu et fait ca `yo angular-es6-components:component myComponent` pour generer tous les fichiers

TODO meilleur nom ?
                
#### Framework Graphique

* le CSS c'est pas facile, des surcouches tres bien existent (SASS, LESS) mais on a pas utilisé ca (on aurait pu mais on a pas intégré ca pour l'instant)
* Angular material : joli, facile, etc.
* on aurait pu utiliser bootsrap tres utilisé mais material fait tres moderne et flat (subjectif)
 
## Back-end

### Choix d'un langage

* comme vu au debut, le js c'est trop fort et pour gerer le backend couplé a l'es6 c'est parfait, et npm c'est cool aussi
* de toute facon, microservices on peut changer les technos
* on a pris nodejs mais on aurait pu prendre autre chose (java, c sharp, etc.)
* le tout c'est que ca soit restful

old 
Java (avec framework http comme Jersey)
C# (avec WCF)
PHP (pas optimisé à la base pour faire du RESTful, mais possible tout de même)

### Containers 

* la meilleure techno pour mettre en place l'archi des microservices, c'est docker.
* Docker permet de créer des containers linux isolé. c'est un peu comme une vm mais pas trop et en plus léger
* Dépend du kernel linux et est parfait pour creer des instances d'applications
* pour le poc on a commencé par faire une api node dans un seul container.
* il est ensuite possible de découpler l'api en microservices. par exemple, les routes /api/products ou /api/basket peuvent devenir des microservices tournant dans des containers différents avec un nombre d'instances différentes
* l'api sera alors une api gateway

TODO parler de l'archi de l'appli, de la source de données orchestration tout ca ? je pense pas
TODO faire un schéma ? ou 2 ?

# Méthodologie

## Cycle en V

* modele conceptuel de gestion de projet
* plusieurs étapes (voir image ?)
* En pratique, il est difficile voire impossible de totalement détacher la phase de conception d'un projet de sa phase de réalisation.
* C'est souvent au cours de l'implémentation qu'on se rend compte que les spécifications initiales étaient incomplètes, fausses, ou irréalisables, sans compter les ajouts de nouvelles fonctionnalités par les clients 
* Cdiscount le fait mais essaye de changer, créé des pizzas team plus agile comme vu au debut
* colle pas trop avec les microservices et le déploiement rapide parce que un cycle en V c'est long
* une equipe independante et polyvalente devrait etre dédiée par microservice pour s'occuper elle meme des releases, choix techniques tout ca

## Méthode agile : Extreme Programming

* Extreme Programming (XP) est une méthode agile plus particulièrement orientée sur l'aspect réalisation d'une application, sans pour autant négliger l'aspect gestion de projet. XP est adapté aux équipes réduites avec des besoins changeants. XP pousse à l'extrême des principes simples.
* Son but principal est de réduire les coûts du changement. Dans les méthodes traditionnelles, les besoins sont définis et souvent fixés au départ du projet informatique ce qui accroît les coûts ultérieurs de modifications. XP s'attache à rendre le projet plus flexible et ouvert au changement en introduisant des valeurs de base, des principes et des pratiques.
* pousser a l'extreme :
    * puisque la revue de code est une bonne pratique, elle sera faite en permanence (par un binôme)
    * puisque les tests sont utiles, ils seront faits systématiquement avant chaque mise en œuvre
    * puisque la conception est importante, elle sera faite tout au long du projet (refactoring)
    * puisque la simplicité permet d'avancer plus vite, nous choisirons toujours la solution la plus simple
    * puisque la compréhension est importante, nous définirons et ferons évoluer ensemble des métaphores
    * puisque l'intégration des modifications est cruciale, nous l'effectuerons plusieurs fois par jour
    * puisque les besoins évoluent vite, nous ferons des cycles de développement très rapides pour nous adapter au changement
* cycle de dev pour chaque scenario
    * une phase d'exploration détermine les scénarios "client" qui seront fournis pendant cette itération
    * l'équipe transforme les scénarios en tâches à réaliser et en tests fonctionnels
    * chaque développeur s'attribue des tâches et les réalise avec un binôme
    * lorsque tous les tests fonctionnels passent, le produit est livré
* convient parfaitement aux microservices

## Appliqué au projet

### Différents rituels

* pair programming
* daily standup meeting
* planning poker
* code review

TODO vraiment le temps de parler de ca ?

### Différents types de tests

* differents types de tests
* y'en a qui sont plus importants que d'autres (pyramide de tests)
* mais si on peut tout faire c'est bien
* TDD : on fait ca tout le temps, ca aide a la conception et la formation de bon code quelque soit le niveau (front, back, logique, etc.)
* pour le front, le test de haut niveau c'est du test d'ui. c'est pas facile mais protractor avec angular aide bien (E2E test)
* pour le serveur, c'est du test d'integration

### Déploiement continu

* fait partie de l'extreme programming
* niveau au dessus de l'integration continue
* integration continue c'est un ensemble de pratiques utilisées en génie logiciel consistant à vérifier à chaque modification de code source que le résultat des modifications ne produit pas de régression dans l'application développée
* Le principal but de cette pratique est de détecter les problèmes d'intégration au plus tôt lors du développement. De plus, elle permet d'automatiser l'exécution des suites de tests et de voir l'évolution du développement du logiciel.
* L'intégration continue est de plus en plus utilisée en entreprise afin d'améliorer la qualité du code et du produit final
* et donc le déploiement continu, c'est que en plus de tout ca, la mise en production est automatique apres chaque feature développée
* avec ca on est sur que ca marche en prod avec tous les tests
* plusieurs outils pour ca. deja il faut un serveur d'integration qui surveille le gestionnaire de version pour que a chaque commit, il lance les tests et tout ca. Nous on a utilisé Jenkins pour ca, mais y'a plein d'autres trucs. Docker aide vachement aussi, parce que faut juste lancer des containers

TODO déploiement a la fin du dev d'une feature ou a la fin d'une release ?

## Démonstration de développement d'une fonctionnalité

* User story
* creation d'une branche
* Integration test
* E2E test
* Nouveau composant : TDD, etc. Idem pour les routes
* Validation par le PO
* Un bug ? Création d'un test mettant en valeur le bug, puis correction
* code review
* integration de la nouvelle branche
* tests ok ?

TODO meilleur nom ?

# Résultats du projet

## Résultat

* appli web qui tourne sur android, ios et web
* liste produits, acceuil, navigation, fiche produit
* on a pas fait panier, commentaires, etc.
* eperience utilisateur ok :)

## Objectifs atteints ?

Pas eu le temps trop de faire les microservices, mais juste une question de temps c'etait prevu

TODO revoir objectifs de base et regarder si on les a atteint

## Challenges

* Integrer l'existant, l'archi de cdiscount est pas encore en microservices, mais au final on a fait semblant, ca sera facile a migrer quand Cdiscount sera en microservices
* analytics et SPA, c'est pas donné, faut adapter, surtout que le systeme de cdiscount est pas fait pour, mais bon pour le poc c'etait pas tres grave
* penser en microservices c'est pas facile quand on a pas l'habitude mais c'set cool

## La suite ? 

* on a fait la présentation aux chefs, ils ont trouvé l'idée tres bien, bonne mise en place des microservices sur une appli legerement en dehors des autres trucs. manque un peu de maturité selon eux (pejoratif), enfin ils ont demandé de développer un peu le truc pour que ca soit vraiment industrialisable. on pourra tester ensuite sur des applis petites (sites verticaux) pour verifier que c'est vraiment bien. et si oui, la integrer pour de vrai

TODO conclure sur le projet ici, ou dans la grande conclusion ?

# Conclusion {-}

TODO

# Notes et plan {-}

## But

Faire une application web moderne et professionnelle.

Faire les bon choix : architecture, technologie et méthodologie

Démonstration avec projet POC

Mot clés : maintenable, assurance qualité

## Notes

sur wiki archi logicielle, il y a les criteres d'un bon logiciel, ca peut faire une bonne intro avec la dégradation de logiciel (dette technique ?)

## Plan

* Application web
    * Description
    * Navigateurs web
        * Apparition et disparition des RIA
        * Evolution du JavaScript
            Attributs du langage
            Un langage incompris
            Une version 6 evoluée ??
            Performance
            Utilisation étendue (mobile, desktop, etc.)
            Popularité du JavaScript
    * Mobile
        * Mobile Web responsive
        * Mobile natif
            Cordova, etc
    * Projet de démonstration : POC
        * Motivations 
        * Description
        * Objectifs
* Choix d'architecture
    * Différents styles d'architecture
        * Description
        * MVC
        * Architecture orienté composants
        * Architecture orienté évènements
        * DDD
        * SOA
        * Microservices
    * Spécificités du Front-end
        * Application traditionnelle
        * Passage aux SPA
        * Choix d'un style d'architecture
            * MVC
                beaucoup font ca mais pas terrible
            * Orienté composants
                ca c'est mieux, surtout avec les web components, shadow dom tout ca, mais pas trop parler de techno ici quand meme
            * Orienté évènements
                ca c'est pas mal aussi, on parle pas de flux de suite, p e un peu l'archi quand meme
    * Spécificités du Back-end
        * Application traditionnelle
        * Passage aux web services
            * Protocole SOAP
            * Tendance au RESTful
        * Choix d'un style d'architecture
            * SOA
            * Microservices
    * Ideologie commune
        * Architecture avant technologie
        * Inspiration de DDD
            domaine avant tout, business logic de SOA, 2 types de logique, etc.
* Choix technologiques
    * Front-end
        * Choix d'un framework SPA
            * Angular
            * ReactJS + Flux architecture
            * Polymer
        * Choisir les bons outils
            * Outil de compilation
                Gulp
                Transpilation
            * Gestionnaire de paquets
                Bower
            * Automate
                Yeoman
            * Framework Graphique ?
                Angular material
    * Back-end
        * Choix d'un langage
            * NodeJS
                Mais c'est pas tres important
            * Communication RESTful
            * Intégration avec l'existant chez Cdiscount
        * Containers
            * Docker
* Méthodologie
    * Méthode agile : Extreme Programming
    * Appliqué au POC
        * TDD
            Jasmine, Karma, etc.
            Protractor
            Integration test for server
            Test coverage, etc.
        * Déploiement continu
            Jenkins
        * Planning, retro, dette technique, etat du systeme first (avant fonctionalité), etc.
    * Développement d'une fonctionnalité : cheminement réel
        * User story
        * Integration test
        * E2E test
        * Nouveau composant : TDD, etc. Idem pour les routes
        * Validation par le PO
        * Un bug ? Création d'un test mettant en valeur le bug, puis correction
* POC, le résultat
    * Idéologie et architecture respectée
    * Objectif atteint en 2 mois ?
        * Pas eu le temps de bien faire les microservices, mais ca viendra
    * La suite ?
        On a eu le temps de faire ceci cela en 2 mois, la suite s'annonce bien
        Quelques challenges quand meme : integrer l'existant, analytics, etc.
        Financierement c'est cool
        Une inspiration pour le SI de Cdiscount
        Tiens d'ailleurs ils sont en train de mettre en place du MicroServices alors que c'était du SOA

## Ancien plan

* Application Web
    * Description
    * Evolution des navigateurs
    * Apparition et disparition des RIA
    * Evolution du Javascript
* Tendances Architectures 
    * Rappel des principaux styles d'architcecture
        * SOA ramene au monolithe
    * Front
        * Architecture traditionnelle
        * Passage aux SPA
        * Styles
            * MVC/MVVM
            * Orienté composants
            * Events
    * Back
        * Web Services
            * RESTful
            * SOAP
            * SOA classique
            * MicroServices
    * Vers une archi isomorphique
* Technos correspondantes
    * Front
        * Angular
        * React + Flux
        * Polymer
    * Back
        * Node
        * ...
    * Javascript polyfill
    * Outils (yeoman, etc)
    * Docker
* Charte de choix
* Projet démonstration
    * Choix technique et implémentation
        * Generator
    * Limites
    * Aller plus loin
    * Methodos: Extreme programming
        * Testing
        * Déploiement continu
* Aspect Financier
    * Un seul code

* Full stack / Devops
* Veille
* Mobile
Isomorphic app
Web binary
Api gateway (microservices with REST)

# Glossaire {-}

TODO

[browserMarketShare]: images/browser_share.png
[npmModules]: images/npm_modules.PNG
[repositoryGithub]: images/repository_github.png
[traditionalArchitecture]: images/traditional_architecture.png
[spaArchitecture]: images/spa_architecture.png
[mvc]: images/mvc.png
[Mobile-web-browsing-vs-desktop-web-browsing]: images/Mobile-web-browsing-vs-desktop-web-browsing.jpg
