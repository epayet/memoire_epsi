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

Les dernières version d'Opéra utilise le projet Chromium et comme base et utilisent donc les même moteur que Google Chrome, lui même basé sur le projet open source Chromium. Microsoft veut à terme remplacer son navigateur Internet Explorer par leur dernier projet en date : Microsoft Edge utilisant leur nouveau moteur de rendu **EdgeHTML** tout en gardant leur moteur JavaScript Chakra.

![Pourcentage d'utilisation des navigateurs en 2015][browserMarketShare]

Avant standardisation, les navigateurs avaient tout d'abord leur implémentation individuelle du DOM. Le DOM (Document Object Model) est maintenant un standard du W3C (organisme de normalisation à but non lucratif) qui décrit une interface indépendante de tout langage de programmation et de toute plate-forme, permettant à des scripts d'accéder ou de mettre à jour le contenu, la structure ou le style de documents HTML et XML*. 

TODO peut etre pas autant parler des navigateurs, des parts de marché, des moteurs, etc.
TODO l'image en annexe ?

### Apparition et disparition des RIA

D'après Wikipédia : « *Une Rich Internet Application (RIA), ou application Internet riche, est une application Web qui offre des caractéristiques similaires aux logiciels traditionnels installés sur un ordinateur. La dimension interactive et la vitesse d'exécution sont particulièrement soignées dans ces applications Web* ».

Avant que les moteurs JavaScript soient aussi avancés, comparés aux applications de bureau, les applications web souffraient d'un manque de performance notoire très souvent à cause de la manipulation du DOM très coûteuse. Le principe d'une RIA est alors d'installer un plugin sur l'ordinateur permettant d'utiliser les ressources du système d'exploitation au lieu de celles du navigateur web (plus limitées) pour faire fonctionner l'application. Il était désormais possible d'utiliser des ressources précédemment inaccessibles au navigateur comme la caméra, ou encore le GPU* pour du jeu video plus performant.

Les plus utilisés et installés sont les suivants :

* Adobe Flash
* JavaFX
* Microsoft Silverlight

Une étude avec Google Trends montre que depuis 2012, ces plugins sont remplacés au fur et à mesure par des alternatives basées uniquement sur des technologies directement utilisées par le navigateur web (HTML5, JavaScript, etc.). Cela s'explique par l'avancée récente des standards du web permettant l'accès aux ressources comme la caméra, un espace de stockage relativement élevé (LocalStorage), une utilisation avancée des sockets*, au portage de librairies avancées dans le monde du web comme WebGL (sous-ensemble d'OpenGL, interface de programmation de 3D dynamique bien connue dans les applications de bureau), etc.

L'intérêt est que les utilisateurs des applications web n'ont plus besoin d'installer et maintenir à jour un logiciel tiers. Adobe Flash lui même a annoncé qu'il allait arrêter la production de son logiciel pour les mobiles et qu'il incitait les développeurs à se tourner vers des solutions full web. Nous allons voir comment l'évolution de ces technologies ont permis de se reposer uniquement sur celles-ci pour faire des applications web.

TODO trop long ?

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

TODO trop long certains trucs ?
TODO images trop grandes ? meilleure image possible. annexe ?
TODO les titres 5, too much ? bullet instead ? ou change style

## Mobile

### Mobile Web

### Mobile Natif

TODO Natif mobile ou mobile natif ?

## Projet de démonstration : POC

### Motivations

### Description

### Objectifs

# Tendances architecturales 

Les évolutions récentes du JavaScript ont changé les methodes de developpement d'application web. Nous allons maintenant voir comment cela a impacte l'architecture logicielle des applications web.

## Rappel des principaux styles d'architecture

Qu'importe le type d'application (web, bureau, front-end, back-end, etc.), il est essentiel de decider de l'architecture logiciel globale de celle-ci. C'est encore plus crucial pour un SI. Il existe plusieurs styles d'architecture et nous allons voir les principaux utilisés aujourd'hui.

Mais tout d'abord qu'est-ce qu'un style architectural ? Voici une definition de David Garlan and Mary Shaw dans leur livre "An Introduction to Software Architecture" :

"family of systems in terms of a pattern of structural organization. More specifically, an architectural style determines the vocabulary of components and connectors that can be used in instances of that style, together with a set of constraints on how they can be combined. These can include topological constraints on architectural descriptions (e.g., no cycles)."

Ce qui peut etre traduit par : "... famille de systemes en termes d'un modèle d'organisation structurelle. Plus specifiquement, un style d'architecture determine le vocabulaire des composants et connecteurs qui peuvent etre utilises dans des cas de ce style, avec un ensemble de contraintes sur la façon dont ils peuvent être combinés. Ceux-ci peuvent inclure des contraintes topologiques sur descriptions architecturales (par exemple, pas de cycles)."

TODO les citations en anglais faut traduire ou pas ?
TODO faire des jolis citations
TODO wikipedia faut citer ou pas ?

Voici un tableau comprenant les principaux styles d'architecture logicielles classés par catégorie.

| Catégorie | Styles d'architectures |
| --- | --- |
| Communication | SOA (Service Oriented Architecture), Message Bus |
| Déploiement | Client/Serveur, N-tiers, 3-tiers |
| Domaine | DDD (Domain Driven Design) |
| Structure | Orienté composants, Orienté objet, Architecture en couches |

TODO pas joli tableau
TODO les microservices, ici ou apres ?

L'architecture logiciel ne se limite généralement pas a un seul style d'architecture. C'est tres souvent une combinaison de plusieurs styles qui vont faire un systeme complet. TODO pas joli. Par exemple, l'architecture SOA est composee de services utilisant une architecture en couches avec un style orienté objet. Ainsi un SI peut utiliser plusieurs styles selon le niveau de granularite ou l'aspect du systeme decrit. Nous ferons remarquer que, comme en architecture traditionnelle, c'est souvent par le mélange d'anciens styles que les nouveaux apparaissent. Genre Microservice c'est un SOA en moins monolithe.

TODO copier coller wiki https://fr.wikipedia.org/wiki/Architecture_logicielle#Les_styles_architecturaux
insister un peu la dessus, conclusion p e ?

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
TODO je parle a un moment de kafka tout ca ?
TODO integrer les microservices dans le tableau ou faire pouf apres y'a eu les microservices
TODO tableau page entiere en annexe ou integré ?
TODO n tiers 3 tiers c'est en anglais, en francais c'est architecture trois tiers, ou pas ?
TODO le tableau c'est juste traduit du site, verifier individuellement que c'est vraiment ca
TODO traduire les noms en anglais genre SOA

## Architecture traditionnelle

### Description

On dit qu'une application web utilise une architecture traditionnelle lorsque la formation de la vue (HTML) se produit du cote du serveur (server-side rendering). Le principe est le suivant : 

* Un navigateur web envoie une premiere requete lors de l'arrivee sur un site web. 
* Le serveur va chercher des donnees si necessaire, puis forme la vue entierement (document HTML statique) et repond ce document au navigateur.
* Le navigateur affiche cette page directement. Si l'internaute remplit un formulaire, ou clique sur un lien pour changer de page, l'operation precedente recommence. Il recoit la page HTML suivant, etc.

Du cote du serveur, une architecture du type MVC* (Modele Vue Controleur) est generalement mise en place pour bien separer les concepts (formation de la vue, des donnees et de la logique metier*). L’HTML étant un document statique, pour rendre l’expérience utilisateur plus intéressante, on utilise du javascript chargé côté client pour modifier la structure de l’HTML courant (via le DOM) et permettre des effets de type animation, etc. Il faut bien comprendre que les fichiers HTML/CSS/Javascript sont chargés à chaque demande de page, car lorsque l’utilisateur demande une autre page (par exemple passage de l’accueil du site à la gestion de son compte), la logique est différente ainsi que l’HTML (le CSS et le Javascript sont souvent mis en cache par le navigateur). Une nouvelle page web correspond à une nouvelle logique qui doit être générée.

![Schéma en anglais représentant l’architecture classique][traditionalArchitecture]

### Critiques de l'architecture

Cette architecture a été utilisée depuis très longtemps et les frameworks proposés (généralement du MVC) sont très avances. Nous allons cependant voir les limites de celles-ci.

#### Temps de chargement

Le client doit charger la page HTML à chaque fois qu’il navigue entre les pages où qu’il envoie un formulaire. Les traitements serveur sont exécutés à chaque fois, et le client recharge le javascript côté client à chaque requête, ce qui ralentit beaucoup sa navigation. De plus, la création de la page HTML est a la charge du serveur, ce qui augmente le travail effectue cote serveur.L'avantage est que la page affichée est définitive et allege le client.

#### Limites de l'architecture MVC

Avec cette architecture, le serveur est charge a la fois de gerer les donnees, les vues et la logique metier. L'architecture MVC* a pour but de bien marquer cette separation au niveau du code. Si la couche Model sert d'acces au donnees, la couche Vue sert a generer l'HTML, la partie Controler fait le lien entre les deux. On met tres souvent la logique pure de l'application dans les controleurs, ce qui rend difficile sa reutilisation dans un autre contexte.

#### Un metier difficilement reutilisable (couplage fort)

Le code metier est tres souvent melange avec les controlleurs de l'application web. Le metier est donc dans ce cas fortement couple avec l'application web. Pour creer une application sur un autre support (mobile, bureau, etc.), cette logique est difficilement reutilisable et devra surement etre reimplementee dans une autre technologie (redevelopper l'acces aux donnees, etc.). 

TODO ca c'est peut etre plutot les limites de l'architecture MVC qui a enmene a la creation del'architecture SOA, peut etre que ca a rien a voir avec les limites de l'architecture traditionnelle. 

#### Travail de la vue cote client et cote serveur confus

Le serveur genere les fichiers utilises par le navigateur (HTML/CSS/JavaScript). L'HTML est un langage statique. Nous avons vu precedemment que le JavaScript permet de dynamiser l'application. Le developpeur doit alors gerer l'HTML brut genere pour le client, ainsi que le JavaScript qui permettra de dynamiser le tout. 

#### Une architecture qui pousse au stateful

Une application dite "stateless" est une application qui ne garde aucune information entre les requetes HTTP. A l'inverse, une application dite "stateful" est une application qui a la possibilité de garder des informations entre les requetes (remplissage d'un panier, connexion d'un utilisateur). Il est commun lors du developpement d'application web de stoquer des variables en session pour chaque utilisateur. Si cela peut etre tres pratique, la gestion d'un etat apporte une difficulte supplementaire a l'application. En plus de cela, il est plus difficile de scaler (TODO ca existe comme mot ?) horizontalement (rajouter des serveurs) car le partage de ces informations entre plusieurs machines n'est pas tache aisee.

TODO expliquer ce qu'est la logique metier (business logic)

* Bien pour les applis de types :
    * Site marchand 
    * Site web statique

## Passage aux Single Page Application

### Description

Le javascript ayant évolué, permet des interactions plus dynamiques avec un serveur grâce à l’AJAX*. L’AJAX permet au javascript de lancer une requête http non bloquante (asynchrone) et d’avoir le résultat de la requête sans avoir à recharger la page.

Cet atout, combine a la performance des recent moteurs javascript ont permis l’apparition d’un nouveau type d’applications, les Single Page Applications (SPA). C’est une application permettant à l’utilisateur d’avoir une expérience dynamique et non bloquante (proche des applications de bureau). En effet, l’utilisateur ne charge qu’une seule fois les fichiers de l’application (HTML/CSS et surtout Javascript). Le javascript s’occupe ensuite de changer la structure des pages en
fonction des actions de l’utilisateur. Les communications serveur se font par AJAX et ne
demandent pas le rechargement de la page. 

Nous avons vu qu'avec l'architecture traditionnelle et le rendu cote serveur, la gestion de la vue et des donnees est confuse. Le but ici est d'avoir reelement deux applications totalement differentes. L'une est le client (la vue), comprenant toutes les interactions avec l'internaute (HTML/CSS/JavaScript), et l'autre est le serveur, comprenant la logique metier faisant abstraction de tout ce qui est visuel. Le serveur devient ce que l'on appelle commenement un web service, pouvant servir plusieurs types de client.

![Schéma en anglais représentant l’architecture Single Page Application][spaArchitecture]

### Avantages

#### Un meilleur découplage

Le fait d'avoir réellement deux applications différentes (serveur et client) rend plus facile le développement (couplage faible*). Il y a plusieurs avantages a cela. 

D'une part, l'architecture globle de l'application est beaucoup plus claire. Il n'y a plus de confusion entre le serveur qui doit s'occuper du chargement de la vue et le client qui doit rendre ce contenu statique plus dynamique. Le serveur ne sert finalement que les donnees.

D'autre part, la communication entre le client et le serveur s'effectuant generalement de maniere textuelle (json, xml, etc.*) via le protocole HTTP (on appelle cela un web service), cela permet d'avoir des technologies independantes. La migration d'un langage ou d'une technologie du cote serveur est alors facilitée. 

De plus, avec cette architecture, il est possible de facilement reutiliser le serveur dans un autre contexte avec un autre client. Il est alors plus aisé de creer un client natif mobile par exemple. Il suffit de refaire l'interface. TODO c'est moche comme phrase. 

#### Des performances améliorées

Le fait que le serveur ne se charge plus de former la vue, mais que des donnees de maniere textuelle soulage grandement la charge des serveurs. L'application web utilise ainsi les ressources du navigateurs pour former la vue. Cela est possible grace aux récentes avancées du JavaScript.

Nous avons vu la difference entre un programme stateful et stateless (TODO c'est vrai ?). Nous avons aussi vu que l'architecture traditionnelle pousse a l'utilisation du stateful du cote du serveur. Sans etre une regle, a l'inverse, l'architecture SPA pousse a l'architecture stateless. Cela facilite grandement la scalabilite horizontale et permet d'avoir des performances grandement ameliorees du cote du serveur aussi.

### Inconvenients

Cette architecture est finalement beaucoup plus evoluee et fonctionne tres differemment de l'architecture traditionnelle. Les standards du web et les navigateurs ont etes concus pour l'architecture traditionnelle et ce changement d'architecture apporte quelques difficultés. Cependant, celle-ci va de plus en plus devenir la norme et les standards ainsi que les navigateurs evoluent dans ce sens. 

TODO dire ca a la fin p e

#### JavaScript obligatoire

Pendant tres longtemps, le JavaScript etait tres peu utilisé et il etait meme facultatif. Les dernieres applications web reposant entierement sur ce dernier, les internautes se doivent de l'avoir activé pour utiliser les appliactions web. Ceci est de moins en moins problématique, car il est généralement activé par défaut. On peut aujourd'hui considérer que tous les internautes ont le JavaScript d'activé. 

#### Outils habituels du web a adapter

Si les applications web changent, les outils gravitant autour se doivent aussi de changer. Par exemple les moteurs de recherche qui indexent les sites web (SEO) n'executent généralement pas de JavaScript, or comme nous l'avons vu, celui-ci est tres souvent essentiel. Recemment, le moteur de recherche le plus utilise Google integre l'utilisation du JavaScript lors de l'indexation des pages.

Les outils d'analyse de trafic Web doivent aussi s'adapter. En effet, ceux-ci se basent beaucoup sur le chargement de nouvelles pages lors de son analyse, ce qui est beaucoup moins pertinant avec une architecture Single Page.

TODO des chiffres p e pour dire que Google est le plus utilise

#### Chargement de l'application un peu plus lourd

L'application n'ayant qu'un seul point d'entree, celle-ci peut etre un peu plus longue a charger au debut. Ceci vient du fait que le navigateur doit completement charger les frameworks dont il est dependant avant de pouvoir debuter l'application. Apres ce chargement initial, l'application est cependant tres fluide, n'ayant pas le besoin de recharger plus tard. De plus, les frameworks utilises sont tres souvent les memes et sont souvent mis en cache.

Finalement que des habitudes de développement a changer. Mais c'est dans le bon sens. evolution evolution
TODO conclusion ?

* Bien pour les applications de type:
    * Mail (Gmail)
* Dire dans quel cas c'est mieux quel archi quelque part avec des exemple p e

## Architecture Front-end

Nous avons vu que les applications Single Page peuvent etre developpees independemment d'un serveur. Quelles sont donc les possibilités au niveau de l'architecture ? TODO moche

### MVC et ses dérivés

#### MVC classique

Une architecture tres proche de ce que l'on fait generalement avec l'architecture traditionnelle est le MVC et ses dérivés. Le principe avec le MVC de base est que pour chaque page, il y ait un controleur. Le modele contient la logique de l'application ainsi que la couche d'access aux donnees. La vue interagit avec le controlleur et celui-ci interagit avec le modele. 

De cette maniere, le fait de changer de page ne fait finalement que changer de couple MVC. On peut résumer comme cela : TODO c'est pas vrai

* Vue : Affiche et interagie avec les donnees exposes par le controleur
* Modele : Logique de l'application (regles metiers specifiques, acces aux donnees)
* Controleur : Contient les methodes d'interaction avec l'utilisateur. Fais le lien entre la vue et le modele

Ceci est la définition théorique du pattern MVC. Cependant, il est souvent utilisé d'une maniere legerement differente. Le modele ne contient finalement généralement pas la logique de l'application. Il n'est utilise qu'en source de donnees. La logique se retrouve alors dans les controleurs. 

![Modèle Vue Contrôleur classique][mvc]

#### Critiques du modele MVC classique

Le probleme majeur de ce pattern est que la logique metier est fortement couple au controleur. Généralement, la définition d'un controleur est differente selon la technologie et le framework utilise. Ainsi, si la logique de l'application est dans le controleur, celle-ci devient fortement couple a la technologie utilisee. Si pour une certaine raison, un changement de technologie doit s'effectuer, il sera alors obligatoire de reimplementer la logique.

D'apres la definition du pattern MVC, les controleurs ne sont que des orchestrateurs. Meme si la logique se situe dans le modele, ce dernier contient de nombreux roles. Il contient finalement la logique de l'application. Mais finalement, qu'est-ce que la "logique de l'application" ?

2 Logiques : Application et Domain

TODO Dire quelque part que regle metier, logique metier ca vient de SOA
finalement inspiration de SOA, MVC et DDD

#### Proposition d'un meilleur modele

### Orienté composants

### Piloté par évènement

* Jquery
        * MVC/MVVM
        * Orienté composants
            * Web components standard, implémentation dans les frameworks
        * Events
            * Portes ouvertes au bordel
            * Des regles pour une bonne communication

## Architecture Back-end

## Vers une architecture isomorphique

Dire que y'a plein de trucs et que finalment ca depend beaucoup des projets, des equipes, etc.

# Méthodologie de développement : Extreme Programming

# Technologies correspondantes

# Notes et plan

## But

Faire une application web moderne et professionnelle.

Faire les bon choix : architecture, technologie et méthodologie

Démonstration avec projet POC

Mot clés : maintenable, assurance qualité

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
[traditionalArchitecture]: images/traditional_architecture.png
[spaArchitecture]: images/spa_architecture.png
[mvc]: images/mvc.png
