# Introduction {-}

Lors de mon cursus d'ingénierie informatique a l'epsi Bordeaux, j'ai eu l'occasion de travailler en alternance durant 3 ans à Cdiscount (de 2012 a 2015). Leader dans le domaine du e-commerce en France, Cdiscount est une entreprise qui se doit d'etre a la pointe de la technologie. Durant ces 3 ans, j'ai pu travailler dans plusieurs équipes ainsi que sur de nombreux projets tres interessants, ce qui m'a permis de m'améliorer dans de nombreux domaines.

Travaillant d'abord essentiellement sur des applications web internes, mon travail etait tout d'abord essentiellement le développement d'applications. Gagnant de l'expérience et de la confiance aupres de mes superieurs, mon travail de tous les jours a progressivement évolué. En plus du développement, j'ai eu du temps dégagé pour faire de la recherche sur les nouvelles technologies, et transmettre le résultat de mes recherches sous forme d'atelier en communauté de type coding dojo*.

Le monde du web est un mondu qui évolue tres vite et est difficile a suivre. De nombreux frameworks* et nouvelles technique/architectures apparaissent régulierement. Il n'est pas aisé de trouver la solution idéale lorsque l'on commence le développement d'une nouvelle application web de faire les bons choix technique allouant aisance de dévelloppement, assurance qualité, maintenance allégée du code, etc. En combinant mes recherches et mes compétences d'analyse et de développement, j'ai maintenant une bonne vision sur les possibilités et les choix techniques a faire en fonction des besoins de l'application.

Cela s'est ressenti non seulement dans la vie des applications sur lesquelles j'etais en charge, mais aussi dans mon métier. J'ai ainsi pu intégrer une équipe orientée R&D (Recherche et Développement), pour devenir un expert technique et évoluer du métier du développeur vers le métier d'architecte.

Le but de ce mémoire est de passer en revue ces possibilités, d'offrir des propositions d'architecture logicielle et des choix de technologies, basées sur mon expériences et le résultat de mes recherches. A la fin de celui-ci, nous serons capables de faire un choix sur la technologie et l'architecture a mettre en place, en fonction des besoins fonctionnels pour creer une application web, mais aussi une application mobile.

Nous verrons d'abord les besoins de créer une application web et l'évolution au fil des années de celles-ci. Nous verrons ensuite les différentes architectures modernes et utilisées sur le marché ainsi que les technologies actuelles répondant a ces problématiques. Nous aurons l'occasion de voir plusieurs exemples, comprenant la possibilite de faire aussi une application mobile via les applications que j'ai moi-meme develepe au sein de Cdiscount.

Developpeur full stack, architecture moderne

# Présentation de l'entreprise

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

## Évolution des navigateurs web

Une application Web utilise un ou plusieurs langages de présentation (généralement HTML/CSS) et est interprétée par un navigateur web. Le langage JavaScript, lui aussi interprété par le navigateur, permet de rendre encore plus dynamique l'application en permettant des interactions utilisateurs de plus en plus poussées et rapides. La qualité de l'application repose alors énormément sur la performance et la précision du navigateur et de son moteur de rendu (interpréteur HTML/CSS et moteur JavaScript). 

Un navigateur web est composé d'un moteur de rendu (layout engine) et d'un moteur JavaScript (JavaScript engine). Le moteur de rendu interprète les langages de présentation comme HTML*/CSS*, tandis que le moteur JavaScript interprète de langage de programmation JavaScript. Voici actuellement les principaux navigateurs web ainsi que les moteurs utilisés :

* Google Chrome (moteur de rendu : **Blink**, moteur JavaScript : **V8**)
* Firefox (moteur de rendu : **Gecko**, moteur JavaScript : **Spidermonkey**)
* Internet Explorer (moteur de rendu : **Trident**, moteur JavaScript : **Chakra**)
* Safari (moteur de rendu : **Webkit**, moteur JavaScript : **Nitro**)
* Opéra (moteur de rendu : **Blink**, moteur JavaScript : **V8**)

Les dernières version d'Opéra utilise le projet Chromium et comme base et utilisent donc les même moteur que Google Chrome, lui même basé sur le projet open source Chromium. Microsoft veut à terme remplacer son navigateur Internet Explorer par leur dernier projet en date : Microsoft Edge utilisant leur nouveau moteur de rendu **EdgeHTML** tout en gardant leur moteur JavaScript Chakra.

![Pourcentage d'utilisation des navigateurs en 2015][browserMarketShare]

Avant standardisation, les navigateurs avaient tout d'abord leur implémentation individuelle du DOM. Le DOM (Document Object Model) est maintenant un standard du W3C (organisme de normalisation à but non lucratif) qui décrit une interface indépendante de tout langage de programmation et de toute plate-forme, permettant à des scripts d'accéder ou de mettre à jour le contenu, la structure ou le style de documents HTML et XML*. 

## Apparition et disparition des RIA

D'après Wikipédia : « *Une Rich Internet Application (RIA), ou application Internet riche, est une application Web qui offre des caractéristiques similaires aux logiciels traditionnels installés sur un ordinateur. La dimension interactive et la vitesse d'exécution sont particulièrement soignées dans ces applications Web* ».

Avant que les moteurs JavaScript soient aussi avancés, comparés aux applications de bureau, les applications web souffraient d'un manque de performance notoire très souvent à cause de la manipulation du DOM très coûteuse. Le principe d'une RIA est alors d'installer un plugin sur l'ordinateur permettant d'utiliser les ressources du système d'exploitation au lieu de celles du navigateur web (plus limitées) pour faire fonctionner l'application. Il était désormais possible d'utiliser des ressources précédemment inaccessibles au navigateur comme la caméra, ou encore le GPU* pour du jeu video plus performant.

Les plus utilisés et installés sont les suivants :

* Adobe Flash
* JavaFX
* Microsoft Silverlight

Une étude avec Google Trends montre que depuis 2012, ces plugins sont remplacés au fur et à mesure par des alternatives basées uniquement sur des technologies directement utilisées par le navigateur web (HTML5, JavaScript, etc.). Cela s'explique par l'avancée récente des standards du web permettant l'accès aux ressources comme la caméra, un espace de stockage relativement élevé (LocalStorage), une utilisation avancée des sockets*, au portage de librairies avancées dans le monde du web comme WebGL (sous-ensemble d'OpenGL, interface de programmation de 3D dynamique bien connue dans les applications de bureau), etc.

L'intérêt est que les utilisateurs des applications web n'ont plus besoin d'installer et maintenir à jour un logiciel tiers. Adobe Flash lui même a annoncé qu'il allait arrêter la production de son logiciel pour les mobiles et qu'il incitait les développeurs à se tourner vers des solutions full web. Nous allons voir comment l'évolution de ces technologies ont permis de se reposer uniquement sur celles-ci pour faire des applications web.

## Évolution du Javascript

JavaScript, aussi appelé ECMAScript est un langage de scripts. Il a été créé en 1995 par Brendan Eich. Il a connu depuis de nombreuses améliorations et est à ce jour à la version 6 (on parle d'ECMAScript 6 ou encore d'ECMAScript2015.). Nous allons voir comment celui-ci a beaucoup évolué, et pourquoi ce langage est devenu l'un des langages les plus utilisés actuellement.

### Attributs du langage JavaScript

* **Programmation dynamique**

Le JavaScript est un langage de programmation dit dynamique ou interprété. C'est donc un langage qui exécute au lancement du programme beaucoup de comportements que les langages dits statiques exécutent durant la compilation. 

* **Langage de scripts**

Le JavaScript est aussi un langage de scripts. Un moteur interprète directement le code source à la volée plutôt que d'exécuter du code machine pré-compilé.

* **Langage orienté prototype**

L'orienté prototype est une forme d'orienté objet sans classe, basée sur la notion de prototype. Un prototype est un objet à partir duquel on crée de nouveaux objets.

* **First-class function**

Les fonctions sont des objets de première classe, c'est-à-dire pouvant être utilisés sans restriction. Ce langage permet donc l'utilisation des fonctions comme tout autre variable, ce qui les rend utilisable dans différents contexte (arguments pour d'autres fonctions, retour de fonctions, stockage dans des structures de données, fonctions anonymes, etc.).

Ce mélange de caractéristiques permet au JavaScript d'êtres un langage multi-paradigme* permettant plusieurs styles de programmation : orienté objet, fonctionnel, impératif, etc. Une des caractéristiques phare de ce langage est la possibilité de faire de la programmation dite événementielle ou asynchrone grâce à la notion de callback (fonction de rappel). C'est une fonction qui est passée en argument à une autre fonction. Cette dernière peut alors faire usage de cette fonction de rappel comme de n'importe quelle autre fonction, alors qu'elle ne la connaît pas par avance.

### Un langage incompris

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

### Des alternatives viables mais pas majoritairement adoptées

Les sur-langages les plus utilisés sont les suivants :

* **CoffeeScript** : Créé en 2009, inspiré par le Python, Ruby, et le Haskell
* **TypeScript** : Créé par Microsoft en 2012, ajoute la possibilité d'ajouter des variables fortement typées et d'utiliser des classes pour un orienté objet plus "classique"
* **Dart** : Créé par Google en 2013, ajoute de nombreuses fonctionnalités comme des classes, des interfaces, des classes abstraites, des variables fortement typées, etc. Possède aussi un interpréteur directement intégré au navigateur Google Chrome. Le JavaScript est utilisé pour les autres navigateurs.

Ces surcouches ont toutes le même but : ajouter des fonctionnalités, faciliter le développement web, et apporter des évolutions qui apparaîtront plus vite que les nouveaux standards ECMAScript grace au support de la communauté. Cependant, aucun d'eux n'a réellement pu émerger pour devenir la solution idéale pour créer des applications web. Actuellement, elles ont plus le statut d'alternatives viables mais pas majoritairement adoptées. Cela s'explique par plusieurs raisons.

D'une part, le JavaScript a pris une place trop importante dans le monde du Web pour être remplacé. On reste énormément dépendant de ce langage, étant le seul ayant un interpréteur de bonne qualité et standardisé sur tous les navigateurs.

Malgré les avantages que proposent ces nouveaux langages, toutes les équipes de développement ne l'adoptent pas forcément. Beaucoup de développeurs connaissent déjà très bien le JavaScript et ne veulent pas s'en défaire pour apprendre un nouveau langage. Le fait qu'il existe de nombreuses surcouches montre bien qu'il est difficile de n'avoir qu'un seul standard de développement satisfaisant tous les développeurs. Il est cependant agréable d'avoir le choix.
 
Voici une citation de Brendan Eich, le créateur du langage Javascript : « *You don’t break the web, you don’t get to clean the slate and start over. Anybody who tries is going to fail* », qui peut être traduit par : « *On ne casse pas le web, on ne peut pas tout effacer et tout recommencer. Toute personne essayant échouera* ». Selon lui, il n'est pas possible refaire le web, la seule solution est de l'améliorer.

Le langage Javascript est trop omniprésent et il est difficile de s'en défaire. Est-on vraiment obligé de dépendre d'une librairie tierce, ou un sur-langage pour avoir un langage de programmation correct ? Nous allons voir que la version 6 sortie récemment permet de répondre a beaucoup des problématiques posées. 

### Une version 6 bien évoluée

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

### Des performances plus que correctes	

Nous avons vu que le web est énormément dépendant du langage JavaScript. La performance des moteurs JavaScript est donc cruciale pour l’avancée des applications web. Les développeurs des navigateurs web l'ont bien compris et fournissent énormément d'efforts à l'optimisation de ceux-ci. La concurrence des navigateurs est telle qu'on parle de "guerre des navigateurs". 

#### Des moteurs JavaScript performants, mais est-ce suffisant ?

Avant la deuxième guerre des navigateurs en 2008-2009, les moteurs JavaScript étaient de simples interpréteurs. Le moteur V8 de Google créé en 2008 marque un nouveau tournant avec l'utilisation du JIT (Just In Time) compilation* (compilation juste à temps). Le fait de compiler le code Javascript en code natif avant de l’exécuter lui permet d'avoir de meilleures performances. Ce moteur a été créé pour les navigateurs mais aussi en tant que moteur autonome, ce qui a permis la création de projets indépendants (utilisation côté serveur, etc.). 

Etant un langage de haut-niveau, le JavaScript propose de nombreuses fonctionnalités comme la gestion automatique de la mémoire, types dynamiques, etc. qui facilitent la programmation mais sont coûteuses au niveau de la performance. Malgré les optimisations qu'apporte les derniers moteurs JavaScript, ces opérations restent coûteuses. Il a été prouvé que des langages de plus bas niveau (avec gestion manuelle de la mémoire, typage strict, etc.) compilés (et non interprétés) sont beaucoup plus performants mais plus difficiles à écrire et maintenir.

Le JavaScript étant le support obligatoire pour faire des applications web, il reste la actuellement la cible de tout langage de programmation. Nous avons déjà vu qu'il est possible de transformer un code source de plus haut niveau (sur-langage) en JavaScript (CoffeeScript, TypeScript, etc.). Mais qu'en est-il des langages de plus bas niveau (C/C++) ? 

#### Solution actuelle : asm.js

asm.js est un sous-ensemble de JavaScript ne contenant que le nécessaire pour un langage de plus bas-niveau en évitant d'utiliser les fonctionnalités coûteuses de haut-niveau. Le but est d'approcher les performances des applications natives (applications de bureau). Etant un sous-ensemble du JavaScript, il est déjà supporté par tous les navigateurs actuels. Le projet Emscripten permet de compiler du C/C++ en code asm.js (ou tout autre langage pouvant être converti en LLVM*).

La possibilité de compiler du code natif dans le monde du web permet d'avoir de meilleures performances (seulement 1.5x plus lentes que du natif avec asm.js). Ces outils ont permis le portage de code existant dans les applications de bureau dans le monde du web simplement et efficacement. L'exemple le plus impressionnant est le portage en 4 jours seulement du moteur de jeu bien connu Unreal Engine avec des performances impressionnantes. De nombreux autres programmes natifs ont suivi le mouvement (Dosbox, Unity, Vim, SQLite, etc.). 

#### Solution future : WebAssembly

Le futur du web veut suivre cette lignée et trouver une solution standardisée et efficace qui peut cohabiter avec le JavaScript. Le Web a besoin d'une structure officielle permettant l'utilisation de langages de bas-niveau, et ne pas dépendre uniquement du JavaScript. Un projet officiel a démarré, et se nomme WebAssembly.  Il a pour but de gérer le format binaire par les navigateurs.  Avoir un nouveau format de fichier permettrait donc de faciliter le passage des langages comme le C au Web. Ce projet a été officialise le 17 Juin 2015 par Brendan Eich, le créateur du langage JavaScript. Microsoft, Google, etc. travaillent ensemble pour officialiser et répandre ce nouveau format de fichier (qui aura l'extension .wasm). Des performances 20 fois supérieures a asm.js sont annoncées.

Le but ici n'est pas de remplacer JavaScript (nous avons vu auparavant que c'est pour l'instant impossible), mais d'apporter un nouveau langage alternatif. Le Web pourra ainsi profiter du meilleur des deux mondes : langage de haut niveau interprété (JavaScript), et un langage de bas niveau compilé en binaire (WebAssembly). Pour résumer voici ce qu'est et va apporter WebAssembly :

* Des performances améliorées : Les points critiques de l'application pourront être écrit en WebAssembly et être utilise comme module en JavaScript
* Un nouveau langage au format binaire
* Des navigateurs plus modernes : Ils pourront comprendre un format binaire plus efficace et plus léger
* Nouvelle cible de compilation : Les différents langages pourront utiliser ce support. La compilation pour le Web sera alors facilitée

#### Une utilisation étendue

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

# Notes et plan

* Application Web
    * Description
    * Evolution des technologies web
        * Evolution des navigateurs
        * Apparition et disparition des RIA
        * Evolution du Javascript
	        * Attributs du langage
            * Un langage incompris
            * Des alternatives viables mais pas majoritairement adoptées
            * Une version 6 bien evoluée
            * Des performances plus que correctes
            * Une utilisation etendue
* Tendances Architectures actuelles
    * Passage aux SPA
    * Front 
        * MVC/MVVM
        * Orienté composants
            * Web components standard, implémentation dans les frameworks
        * Events
            * Portes ouvertes au bordel
            * Des regles pour une bonne communication
    * Back
        * Web Services
            * RESTful
            * SOAP
            * SOA classique
            * MicroServices
    * Javascript avancé
* Technos correspondantes
    * Front
        * Angular
        * React + Flux
        * Polymer
    * Back
        * Node
        * ...
    * Javascript polyfill
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

# Glossaire

* Lien hypertexte
* HTML
* CSS
* XML
* GPU
* socket
* paradigme
* Expressions lambda
* LLVM
* Framework

[browserMarketShare]: images/browser_share.png
[npmModules]: images/npm_modules.PNG
[repositoryGithub]: images/repository_github.png
