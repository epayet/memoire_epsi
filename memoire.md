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

« *Une application de bureau (Desktop application en anglais) est un logiciel applicatif qui affiche son interface graphique dans un environnement de bureau, il est hébergé et exécuté par l'ordinateur de l'usager. Cette technologie est apparue avec les premiers environnements de bureau en 1970* », définition de Wikipédia.

* **Application Web**

« *Une application web (aussi appelée web app, de l'anglais) est une application manipulable grâce à un navigateur web* », définition de Wikipédia.

* **Application mobile**

« *Une application mobile est un logiciel applicatif développé pour un appareil électronique mobile, tel qu'un assistant personnel, un téléphone portable, un « smartphone », un baladeur numérique, une tablette tactile* », définition de Wikipédia.

Ce qui différencie finalement ces 3 types d'applications est le support sur lequel elles sont accessibles. Ceci implique généralement des technologies et langages différents. Les avancées récentes des navigateurs web ont fait des applications web des applications complètes et avancées en utilisant uniquement les technologies web (centrées généralement autour du Javascript).

La facilité de développement de celles-ci ainsi que la performance des moteurs de navigateurs ont propulsé les applications web à un tout autre niveau, dépassant même les limites de la plateforme. En effet, il est désormais possible de faire des application natives mobiles ou de bureau en n'utilisant que des technologies web approchant les performances des applications natives. Cela permet d'avoir un coût de développement moindre grâce à la réutilisation de code pour les différentes plateformes. Le web est désormais la cible de toutes les applications.

## Description

Une application web, contrairement à une application de bureau, est une application uniquement manipulable via un navigateur web. L'application est généralement installée sur un serveur et est accessible via un réseau (internet, réseau local, etc.). On a ici une architecture client/serveur où le navigateur web est le client. À la différence d'un site web statique, une application web est constituée de liens hypertextes* provoquant l'envoi de nouvelles requêtes utilisant généralement le protocole HTTP*. Voici des exemples d'applications web les plus courantes :

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

## Utilisation massive du JavaScript

Aujourd'hui, les applications web dépendent énormément (si ce n'est uniquement) du langage de programmation JavaScript, mais ce n'était pas toujours le cas.

### Apparition et disparition des RIA

« *Une Rich Internet Application (RIA), ou application Internet riche, est une application Web qui offre des caractéristiques similaires aux logiciels traditionnels installés sur un ordinateur. La dimension interactive et la vitesse d'exécution sont particulièrement soignées dans ces applications Web* », définition de Wikipédia.

Le principe d'une RIA est d'installer un plugin sur l'ordinateur permettant d'utiliser les ressources du système d'exploitation au lieu de celles du navigateur web (plus limitées) pour faire fonctionner l'application. Il était alors possible d'utiliser des ressources précédemment inaccessibles au navigateur comme la caméra, ou encore le GPU* pour du jeu video plus performant.

Les plus utilisés et installés sont les suivants :

* Adobe Flash
* JavaFX
* Microsoft Silverlight

Une étude avec Google Trends montre que depuis 2012, ces plugins sont remplacés au fur et à mesure par des alternatives basées uniquement sur des technologies directement utilisées par le navigateur web (HTML5, JavaScript, etc.). Cela s'explique par l'avancée récente des standards du web permettant :

* l'accès aux ressources comme la caméra
* un espace de stockage relativement élevé (LocalStorage)
* une utilisation avancée des sockets*, 
* l'utilisation de librairies avancées comme WebGL (sous-ensemble d'OpenGL, interface de programmation de 3D dynamique bien connue dans les applications de bureau)
* etc.

L'intérêt est que les utilisateurs des applications web n'ont plus besoin d'installer et maintenir à jour un logiciel tiers. Adobe Flash lui même a annoncé qu'il allait arrêter la production de son logiciel pour les mobiles et qu'il incitait les développeurs à se tourner vers des solutions full web. 

### Attributs du langage

JavaScript, aussi appelé ECMAScript est un langage de scripts. Il a été créé en 1995 par Brendan Eich. Il a connu depuis de nombreuses améliorations et est à ce jour à la version 6 (on parle d’ECMAScript 6 ou encore d’ECMAScript2015.). 

Contrairement à ce que l’on pourrait croire, le JavaScript n’a rien en commun avec le Java. En effet, ces deux langages possèdent des sémantiques et des attributs très différents. Le JavaScript est un langage *orienté prototype** qui utilise des *fonctions de première classe**. Ce mélange de caractéristiques permet au JavaScript d’être un langage multi-paradigme* permettant plusieurs styles de programmation : orienté objet, fonctionnel, impératif, etc. Une des caractéristiques phare de ce langage est la possibilité de faire de la programmation dite événementielle ou asynchrone grâce à la notion de callback (fonction de rappel).

On dit souvent que le JavaScript est un langage incompris. Il ressemble beaucoup au Java, mais en est très différent. L'utilisation abusive de callbacks complexifie le code. On parle même de "l'enfer du callback" (*callback hell*). 

### Des alternatives viables mais pas majoritairement adoptées

Pour combler les manques du langage et ses incompréhensions, de nombreux sur-langages sont
apparus. Ce sont des langages de plus haut-niveau permettant soit la possibilité d’être directement
interprété par le navigateur, soit la possibilité de se transcrire en JavaScript. Les sur-langages les plus utilisés sont les suivants :

* **CoffeeScript** : Créé en 2009, inspiré par le Python, Ruby, et le Haskell
* **TypeScript**: Créé par Microsoft en 2012, ajoute la possibilité d’ajouter des variables fortement typées et d’utiliser des classes pour un orienté objet plus “classique”
* **Dart** : Créé par Google en 2013, ajoute de nombreuses fonctionnalités comme des classes, des interfaces, des classes abstraites, des variables fortement typées, etc. Possède aussi un interpréteur directement intégré au navigateur Google Chrome. Le JavaScript est utilisé pour les autres navigateurs

Ces surcouches ont toutes le même but : ajouter des fonctionnalités, faciliter le développement web, et apporter des évolutions qui apparaîtront plus vite que les nouveaux standards ECMAScript grace au support de la communauté. Cependant, aucun d’eux n’a réellement pu émerger pour devenir la solution idéale pour créer des applications web. Actuellement, elles ont plus le statut d’alternatives viables mais pas majoritairement adoptées.

### JavaScript, actuellement la seule solution

Malgré les avantages que proposent ces nouveaux langages, toutes les équipes de développement ne l’adoptent pas forcément. Beaucoup de développeurs connaissent déjà très bien le JavaScript et ne veulent pas s’en défaire pour apprendre un nouveau langage. Le fait qu’il existe de nombreuses surcouches montre bien qu’il est difficile de n’avoir qu’un seul standard de développement satisfaisant tous les développeurs. Il est cependant agréable d’avoir le choix.

Le JavaScript a pris une place trop importante dans le monde du Web pour être remplacé. Voici une citation de Brendan Eich, le créateur du langage JavaScript : « You don’t break the web, you don’t get to clean the slate and start over. Anybody who tries is going to fail », qui peut être traduit par : « On ne casse pas le web, on ne peut pas tout effacer et tout recommencer. Toute personne essayant échouera ». Selon lui, il n’est pas possible refaire le web, la seule solution est de l’améliorer.

TODO citation

### Une version 6 bien évoluée

On dit souvent que c’est que le JavaScript est à la fois adoré et détesté. C’est un langage très puissant mais souvent mal compris et mal utilisé car très permissif. Malgré une évolution plus lente que les autres alternatives open source, la récente version 6 fait de celui-ci un langage de plus en plus viable et comble les différents manques et incompréhensions citées auparavant. 

Même si aujourd’hui, cette version n’est pas prise en charge par tous les navigateurs, il est possible d’écrire du code en ES6, et le transformer en ES5 grâce à des transpileurs (transforme un code source en un équivalent dans un autre langage). Le code écris est alors plus moderne et fonctionne malgré tout sur les différents navigateurs dès aujourd’hui. Le but est d’utiliser au plus tôt les derniers standards et avoir une application plus facile à maintenir et profiter rapidement des dernières évolutions.

### Une future alternative ?

Etant un langage de haut-niveau, le JavaScript propose de nombreuses fonctionnalités comme la gestion automatique de la mémoire, types dynamiques, etc. qui facilitent la programmation mais sont coûteuses au niveau de la performance. Malgré les optimisations qu’apporte les derniers moteurs JavaScript, ces opérations restent coûteuses. Il a été prouvé que des langages de plus bas niveau (avec gestion manuelle de la mémoire, typage strict, etc.) compilés (et non interprétés) sont beaucoup plus performants mais plus difficiles à écrire et maintenir.

Le JavaScript étant le support obligatoire pour faire des applications web, il reste la actuellement la cible de tout langage de programmation. Nous avons déjà vu qu’il est possible de transformer un code source de plus haut niveau (sur-langage) en JavaScript (CoffeeScript, TypeScript, etc.). Mais qu’en est-il des langages de plus bas niveau (C/C++) ?

#### Solution actuelle : asm.js

asm.js est un sous-ensemble de JavaScript ne contenant que le nécessaire pour un langage de plus bas-niveau en évitant d’utiliser les fonctionnalités coûteuses de haut-niveau. Le but est d’approcher les performances des applications natives (applications de bureau). Etant un sous-ensemble du JavaScript, il est déjà supporté par tous les navigateurs actuels. Le projet Emscripten permet de compiler du C/C++ en code asm.js (ou tout autre langage pouvant être converti en LLVM*).

La possibilité de compiler du code natif dans le monde du web permet d’avoir de meilleures performances (seulement 1.5x plus lentes que du natif avec asm.js). Ces outils ont permis le portage de code existant dans les applications de bureau dans le monde du web simplement et efficacement. L’exemple le plus impressionnant est le portage en 4 jours seulement du moteur de jeu bien connu Unreal Engine avec des performances impressionnantes. De nombreux autres programmes natifs ont suivi le mouvement (Dosbox, Unity, Vim, SQLite, etc.).

#### Solution future : WebAssembly

Le futur du web veut suivre cette lignée et trouver une solution standardisée et efficace qui peut cohabiter avec le JavaScript. Le Web a besoin d’une structure officielle permettant l’utilisation de langages de bas-niveau, et ne pas dépendre uniquement du JavaScript. Un projet officiel a démarré, et se nomme WebAssembly. Il a pour but de gérer le format binaire par les navigateurs. Avoir un nouveau format de fichier permettrait donc de faciliter le passage des langages comme le C au Web. Ce projet a été officialise le 17 Juin 2015 par Brendan Eich, le créateur du langage JavaScript. Microsoft, Google, etc. travaillent ensemble pour officialiser et répandre ce nouveau format de fichier (qui aura l’extension .wasm). Des performances 20 fois supérieures a asm.js sont annoncées.

Le but ici n’est pas de remplacer JavaScript (nous avons vu auparavant que c’est pour l’instant impossible), mais d’apporter un nouveau langage alternatif. Le Web pourra ainsi profiter du meilleur des deux mondes : langage de haut niveau interprété (JavaScript), et un langage de bas niveau compilé en binaire (WebAssembly). Pour résumer voici ce qu’est et va apporter WebAssembly :

• Des performances améliorées : Les points critiques de l’application pourront être écrit en WebAssembly et être utilise comme module en JavaScript
• Un nouveau langage au format binaire
• Des navigateurs plus modernes : Ils pourront comprendre un format binaire plus efficace et plus léger
• Nouvelle cible de compilation : Les différents langages pourront utiliser ce support. La com-
pilation pour le Web sera alors facilitée

assembleur meilleure cible que js
c'est bien beau tout ça mais en attendent c'est du js
de toute façon c'est pas si mal

### Une utilisation étendue

Comme vu précédemment, le JavaScript évolue énormément. Ses per-
formances, sa facilite de programmation, et tous les avantages que nous avons vu précédemment
ont fait apparaître des projets indépendants des navigateurs web.
Un projet phare est Node.js, projet open source créé en 2009. C’est un environnement multi-
plateforme orienté vers les applications réseaux. Node.js tire parti la machine virtuelle V8 et la
programmation événementielle (asynchrone) de JavaScript pour créer des serveurs web ultra-
performants pouvant tenir une charge importante, sans avoir besoin d’un logiciel externe comme
Apache ou Nginx. Cette solution est maintenant utilisée par les plus grandes entreprises (Groupon,
SAP, LinkedIn, Microsoft, Yahoo !, Walmart, etc) et possède une communauté très active. Paypal
est passe d’un solution entièrement écrite en Java a une solution en Node.js. Le gestionnaire de
paquets de Node.js (npm) est celui possédant le plus grand nombre de module (plus de 80 000
en 2014), faisant de Node.js le langage le plus actif, détrônant ainsi Java et son gestionnaire de
paquets Maven.

La popularité de Node.js et des applications web ont fait grimper en flèche l’utilisation du JavaScript.
Il est désormais le langage le plus actif ces dernières années. Les données du très connu site web
Github (gestionnaire de source le plus utilisé) le démontre bien. Ainsi, en plus de posséder le plus grand nombre de modules, le langage JavaScript contient le plus grand nombre de dépôts actifs.

* Conclusion : aujourd'hui, c'est concrètement la seule technologie disponible pour créer des applications web.

TODO revoir les titres


![Nombre de modules pour chaque langage][npmModules]
![Statistiques des langages de programmation sur Github][repositoryGithub]

TODO trop long certains trucs ? la partie sur utilisation etendue est interessante sinon le reste est un peu trop technique p e
TODO images trop grandes ? meilleure image possible. annexe ?

## Mobile

Si la navigation web a ete tres longtemps limité aux ordinateurs personnels, la navigation mobile est de plus en plus forte. En effet, en 2014, le nombre d'internautes utilisant un terminal mobile a depassé celui des ordinateurs personnels.

Il existe en réalité deux marchés sur le mobile : le mobile natif, et le mobile web. Nous allons voir la différence entre les deux et qu'est-ce que cela implique dans le développement de celles-ci.

![Nombre d'internautes mobile et PC][Mobile-web-browsing-vs-desktop-web-browsing]

### Mobile Web

Le mobile web est en fait tout ce qui passe par les navigateurs web installés sur un terminal mobile. Les technologies utilisées sont donc les memes que les navigateurs de bureau. Ces dernieres ont donc beaucoup evolué pour permettre l'interaction avec les terminaux mobiles (en plus de s'adapter aux écrans de ces derniers). 

Il est donc necessaire qu'un meme site web soit disponible pour n'importe quel terminal. Si cela propose un challenge au niveau de la gestion de la taille des ecrans et des interactions avec l'utilisateur, il est désormais beaucoup plus facile grace aux technologies récentes. Le responsive web design permet de fairce cela facilement (grace aux media query du CSS3). Les frameworks sont nombreux. L'application n'est cependant pas installable sur le terminal, et l'utilisateur se doit d'etre connecté a internet pour l'utiliser.

### Mobile Natif

On appelle le mobile natif, les applications pour lesquelles il est possible d'installer sur le terminal. Au contraire des applications web, qui sont dépendantes d'un navigateur web. Elles permettent l'acces generalement a plus de fonctionnalités propres au telephone (notifications, appareil photo, GPS, etc.). Elle utilise mieux les ressources du telephone (directement), comme les applications de bureau, et ont ainsi de meilleures performances.

Les applications réutilisent la charte graphique (look & feel) du téléphone, ce qui permet d'avoir un ensemble cohérent. Le langage de développement de ces applications dépend du systeme d'exploitation. Il est ainsi complexe de créer une application sur plusieurs plateformes de maniere native, car les technologies et l'interface a realiser sont differentes. Maintenir une application mobile native pour chaque terminal, consiste finalement a maintenir plusieurs applications avec des technologies differentes, ce qui peut avoir un cout elevé, en plus de devoir posséder les compétences de tous les terminaux.

### Mobile hybride

Une approche plus récente alliant un peu les deux monde est ce que l'on appelle le mobile hybride. L'idée est de créer des applications mobiles en utilisant les technologies du web. Le but est d'avoir un seul code sur un seul type de technologie, mais installable sur plusieurs terminaux, meme possédant des systemes d'exploitation differents. De nombreux outils sont disponibles et permettent cette possibilité. Les couts de développement sont donc énormement diminués.

L'idée est d'utiliser ce que l'on appelle une webview a l'interieure d'une application native. Celle-ci interpretera l'application comme un navigateur web le ferait, permettant en plus l'utilisation des fonctionnalités natives du téléphone comme l'appareil photo, le GPS, etc.

Les seuls inconvénients sont que le look & feel sera similaire sur tous les terminaux, utilisant beaucoup moins la charte graphique native du téléphone. Les performances sont aussi beaucoup plus faibles qu'une vraie application native. Cela ne se ressent que dans certains cas, ou les performances sont critiques pour une application (des jeux vidéos par exemple).

Finalement, cela permet d'avoir une autre alternative moins couteuse pour créer des applications mobiles natives. Si les inconvénients ne sont pas dérangeant pour le cas d'utilisation, cette alternative est alors tres viable.

## Projet de démonstration : POC

Le projet décrit dans cette partie sera le projet utilisé comme support et démonstration de ce mémoire. C'est un projet réalisé avec mon équipe de type POC (Proof Of Concept). Nous l'avons d'ailleurs nommé ainsi : le POC.

### Contexte et motivations

#### Couts elevés

Cdiscount possede actuellement un site web responsive, une application mobile native sur les deux principaux systemes d'exploitation du marché (android et ios). La société a préféré faire sous-traiter le dévelopeement de ces deux dernieres par une entreprise plutot que de former et recruter des personnes sachant développer du natif pour chaque terminal. Il en est de meme pour les autres applications mobiles de le société (a cause de l'intertionalisation de l'entreprise). Les modifications faites aux applications sont frequentes. Cela est tres couteux pour eux.

L'expertise technique de la société est les technologies web. Ne serait-il pas mieux pour elle d'utiliser ces compétences lorsque cela est possible ?

#### Recherche de meilleure méthode et architecture

Cdiscount possede une grande base de code accumulée avec le temps. Ayant gardé la meme architecture et la meme méthodologie pendant tres longtemps, elle a accumulé une dette technique importante. Se rendant compte de ses faiblesses (trop de temps pris pour ajouter des fonctionnalités), elle est récemment en recherche de meilleure méthodologie et architecture. C'est pour cette raison que pour certaines parties du SI, ce n'est plus la méthodologie du cycle en V qui est utilisée, mais tend plus vers des méthodes plus agile. C'est pour cela qu'ont ete créé des pizzas team. 

Cdiscount essaye d'employer d'autres méthodes pour ses nouvelles applications pour ensuite les integrer de plus en plus dans le SI. Une nouvelle application utilisant une méthode agile et une architecture et des technologies récentes serait alors une grande inspiration pour son SI.

#### Utilisation de l'expertise de notre équipe

Notre équipe est spécialisée dans la veille technologique et la mise en place de nouvelles technologies. Nous avons mis en place plusieurs applications internes utilisant au maximum les dernieres technologies avec une architecture solide. L'equipe architecture travaille actuellement sur le changement de l'architecture globale de son SI et est a la recherche d'applications les appliquant et prouvant leur interet. 

Ainsi, en utilisant notre expertise et en collaboration avec l'équipe architecture, nous avons proposé de mettre en place un projet de type POC (Proof Of Concept) qui permettra de prouver l'interet de cette nouvelle architecutre combinée avec les nouvelles technologies.

### Description

La proposition que nous faisons est donc la suivante. Nous allons reproduire le comportement de l'application android actuelle, mais en utilisant :

* Technologies web uniquement
* Architecture bien choisie (en correspondance avec l'équipe architecture)
* Méthodologie agile

Nous avons une limite de 2 mois, et nous sommes 3 développeurs. L'idée est de réaliser le maximum et de démontrer que cette facon de faire est prete pour creer une vraie application mobile.

### Objectifs

#### Principal objectif

Le principal objectif de ce projet démonstration est le suivant : faire une application web de qualité et se munir de tout ce qu'il faut pour. Mais finalement qu'est-ce qu'un logiciel de qualité ? C'est selon moi un logiciel qui :

* Développement de fonctionnalité rapide (temps = argent)
* Développement de nouvelle fonctionnalité sans impact sur l'existant (non régression)
* Déploiement fréquent et rapide en production, permettant de satisfaire la demande du client
* S'assurer que l'application fonctionne toujours en production

TODO inserer titre du mémoire ? meilleur objectif ?
TODO vraiment important cette partie, vérifier que c'est vraiment ca les qualités d'un bon logiciel

#### Autres objectifs

En plus de vouloir creer un logiciel de qualité, ce projet a aussi pour objectif :

* Utilisation de notre expertise web pour créer une application mobile, et proposer une autre possibilité de réalisation a Cdiscount moins chere et plus efficace, prete a l'emploi (industrialisable)
* Démonstration de l'interet de l'utilisation de nouvelles technologies, et donc l'interet d'effectuer une veille technologique active
* Proposer une architecture moderne permettant l'isolation de la logique du domaine, et donc sa réutilisation dans un autre contexte, permettant le changement facile de technologie.
* Démontrer que l'architecture sur laquelle l'equipe architecture travaille et essaye de mettre a de nombreux interets et permet de creer un logiciel de qualité (implementation de leur architecture dans une moindre mesure dans notre projet)
* Interet d'avoir des ptetites equipes polyvalentes (pizzas team) sur des projets plutot que des equipe par couche logicielle

Ainsi, ce projet est surtout une démonstration technique. Il permettra de démontrer de nombreuses choses en harmonie avec ce vers quoi Cdiscount souhaite tendre (meme direction). Nous souhaitons alors que notre projet et notre equipe devienne une inspiration pour Cdiscount et que notre solution sera utilisée dans certains cas précis. Nous ne prétendons pas vouloir remplacer les applications mobiles actuelles, mais proposer une nouvelle solution moins chere et peut etre mieux adaptée dans certains cas, tout en utilisant notre expertise interne.

TODO deja parlé des differences entre pizza team et equipe par couche ?

# Choix d'architecture 

Créer une bonne application commence par choisir une bonne architecture logicielle. Ceci est même plus important que de choisir une bonne technologie, car il ne faut pas devenir dépendant de celle-ci. En effet, les technologies évoluent rapidement, et il n'est pas rare de vouloir profiter du changement de technologie, surtout dans le monde du web. Ainsi, il est nécessaire d'avoir une bonne architecture permettant cela, en plus de permettre de créer un logiciel de qualité. Nous allons donc d'abord voir les différents styles d'architecture existant, et voir les choix effectués pour le projet de démonstration.

## Différents styles d'architecture

Il existe de nombreux styles d'architecture. Il n'y a pas vraiment de bon ou mauvais style d'architecture, juste des avantages et des inconvénients. Il faut bien les comprendre et choisir correctement en fonction du besoin. Nous n'allons pas tous les décrire dans ce mémoire, mais juste ceux pris en considération pour le POC (ou pour toute autre application web que l'on voudrait créer actuellement) et aussi ceux utilisés actuellement à Cdiscount.

### Description

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

TODO pas joli tableau

Il existe un dernier style que l'on décrira en dernier, qui se nomme les Microservices. Comme en architecture traditionnelle, c'est souvent par le mélange d'anciens styles que les nouveaux apparaissent. L'architecture logicielle ne se limite généralement pas à un seul style d'architecture, c'est très souvent une combinaisons de plusieurs styles qui formeront un système logiciel complet.

C'est aussi une question de granularité. Un ou plusieurs styles d'architecture peuvent être choisis à différents niveaux du système d'information. Cela peut aller du système d'information en lui-même jusqu'au plus petit des composants. 

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

Le MVC (Modèle Vue Contrôleur) n'est pas vraiment un style d'architecture mais un design pattern. Il est pris en considération ici car très utilisé dans le monde du web. Il est généralement utilisé pour les logiciels avec interface graphique. Il a plur but de bien séparer les données, la présentation et les traitements. Voici le détail des 3 parties extraites :

* Modele : Représente le coeur algorithmique de l'application (traitements des données, interactions avec la base de données, etc.)
* Vue : Ce avec quoi l'utilisateur interagit,  La vue n'effectue pas de traitement, elle recoit toute action de l'utilisateur et transfere au controlleur
* Controlleur : Prend en charge la gestion des evenements de synchronisation pour mettre a jour la vue ou le modele et les synchroniser. Il reçoit tous les événements de la vue et enclenche les actions à effectuer. Si une action nécessite un changement des données, le contrôleur demande la modification des données au modèle afin que les données affichées se mettent à jour. 

Voici donc à quoi ressemble le flux de traitement :

* Chaque action utilisateur est analysée par le controleur (clic de souris, etc.)
* Le controleur demande au modele approprié d'effectuer les traitements et notifie a la vue que la requete est traitee
* La vue notifiée fait alors une requete au modele pour se mettre a jour (par exemple pour afficher le resultat du traitement fait par le modele)

Il existe de nombreux dérivés à ce modèle (MVP, MVVM, MV*), mais restent finalement très similaires à ce modèle.

![Modèle Vue Contrôleur classique][mvc]

#### Avantages

* Simplicité, efficacité et clarté : La prise en main avec une telle architecture est rapide est peu couteuse sur des petites ou moyennes applications
* Séparation des responsabilités minimale, mais efficace
* La modification d'une des parties n'impacte pas ou peu les autres
* Très répandu

#### Inconvénients et critiques

Très souvent (généralement avec les variantes de ce modèle), la logique de l'application ne se trouve pas dans le modèle, mais dans le contrôleur, le modèle ne servant uniquement que de source de données. Ceci n'est pas vraiment un inconvénient, mais un choix. Que la logique soit dans le contrôleur ou le modèle, elle se retrouve finalement fortement couplée à celle-ci. La technologie choisie définit généralement une façon spécifique d'écrire un contrôleur ou un modèle. Ainsi, avec ce modèle, la logique de l'application se retrouve finalement fortement couplée avec la technologie choisie, ce qui rend le changement de technologie difficile.

Nous verrons avec les autres styles d'architecture qu'il existe finalement deux types de logiques dans une application. La logique spécifique au domaine de l'application (banque, finances, etc.), et la logique spécifique à l'application (contrôleur, service, etc.) et qu'il est généralement mieux de les séparer. 

TODO trop tôt pour dire ça ?

#### Bien pour

les trucs simples ?

### Architecture orienté composants

#### Description

L'architecture orienté composants se concentre sur la décomposition en composants individuels (fonctionnels ou logiques) exposant des interfaces de communication bien définies comporenant méthodes, propriétés et évènements. Elle utilise un niveau d'abstraction plus haut que l'orienté objet. Voici une liste de ses principaux attributs:

* Reutilisable : Peut etre reutilise dans un autre scenario dans d'autres applications
* Remplacable : Peut etre remplacé par des composants similaires
* Sans contexte specifique : Les informations spéciques a une application comme des donnees sont passes en variable d'entree au lieu d'etre inclu et gere par le composant
* Extensible : Possibilité d'étendre le comportement d'un composant
* Encapsulé : Chaque composant expose des interfaces qui permettent a l'appelant d'utiliser les fonctionnalités du composant sans savoir son fonctionnement interne (état ou variables internes)
* Indépendant : Pensé de maniere a dependre tres peu d'autres composants. Peut etre déployé dans un autre environnement sans affecté les autres composants

![Architecture orienté composants][componentArchitecture]

#### Avantages

* Facilité de déploiement : Changement de version avec peu d'impact sur le reste du systeme
* Cout réduit : Utilisation de composants externes permet de réduire le cout de développement et de maintenance
* Facilité de développement : Les composants exposent des interfaces définissant une certaine fonctionnalité permettant de développer sans impact avec le reste du systeme. 
* Reutilisable : Comme nous l'avons vu, les composants peuvent être réutilisés dans un scenario ou d'autres applications

#### Inconvénients et critques (et challenges ?)

Le niveau d'abstraction étant un peu plus eleve que l'orienté objet, ce style peut etre un peu plus complexe a utiliser. De plus, il n'est généralement pas utilisé seul. Il est souvent combiné avec d'autres styles pour créer un systeme complet. En effet, ce style ne se concentre pas sur les protocoles de communication, la gestion d'état, etc. Ainsi, pour tirer profit de ce style, il faut bien le comprendre et l'utiliser.

#### Bien pour

??

### Architecture orienté évènements

#### Description

L'architecture orienté evenements (en anglais "Message Bus Architecture"), utilise un systeme permettant de recevoir et d'envoyer des messages en utilisant un ou plusieurs canaux de communication. On parle généralement un bus de message central, et les communications se font tres souvent de maniere asynchrone. Ainsi, l'application peut interagir sans avoir le besoin de connaitre les détails des autres applications du systeme (couplage faible).

![Architecture orienté evenements][messageBusArchitecture]

#### Avantages

* Extensible : Les appliciations peuvent etre enlevés ou rajouté sans avoir d'impact sur les applis existantes
* Faible complexité : Les applications ont uniquement besoin de savoir comment communiqer avec le bus et non pas avec le reste du systeme
* Flexibilité : La combinaison d'applications formant un systeme peut etre changée et manipulée a tout moment tout comme le pattern de communication
* Faible couplage : Chaque application n'a qu'une seule dependance : le bus. Le comportement interne est independant. ca peut meme etre un autre langage
* Scalabilité : il peut y avoir plusieurs instances d'une meme appli attachée au bus pour accelerer ou gerer plusieurs requetes a la fois

#### Inconvénients et critques (et challenges ?)

Il n'est pas aisé de choisir un pattern de communication. Il ne fait pas confondre "message" et "evenement". Un évenement est lorsque qu'il s'est passé quelque chose, tandis qu'un message peut etre tout autre chose. Par exemple, un message peut contenir une demande d'action a un autre composant, ce peut augmenter le couplage des applications. Il est recommendé d'utiliser uniquement des evenements.

L'evolution des evenements peut etre difficile si un changement s'opere sur les proprietés de celles-ci. Un ajout ne devrait pas comporter de soucis, mais la modification ou la suppression d'un champ peut potentiellement avoir des repercussions sur le reste du systeme. C'est pour cela que choisir un bon pattern de communication permettant les evolutions est important.

#### Bien pour

??

### Architecture orienté domaine (DDD)

#### Description

L'architecture orienté domaine (Domaine Driven Design) est une approche orienté objet se concentrant sur le domaine métier de l'application, ses elements et ses comportements. Le coeur du logiciel est donc la modelisation directe du domaine, on appelle cela le modele du domaine. Le vocabulaire professionnel du domaine est préféré au jargon technique, et pour cela, la communication avec les specialistes du métier est primordiale.

Eric Evans, l'auteur du lire Domain Driven Design écrit :

"In order to create a good software, you have to know what the software is all about. You cannot create a banking software system unless you have a good understanding of what banking is all about, one must understand the domain of banking."

Il y a 4 concepts a retenir :

* Contexte borné (Bounded Context) : Stratégie du DDD pour traiter les gros systemes en les divisant en differents contextes en etant explicites sur leur relation.
* Domaine : Sphere de connaissance, domaine de l'application (exemple : banque, finances, etc.)
* Modele : Systeme d'abstractions qui décrivent les aspects d'un domaine et qui peuvent etre utilisés pour résoudre un probleme en lien avec ce domaine
* Langage omniprésent (Ubiquitous Language) : Langage structuré autour du domaine du modele et utilisé par tous les membres de l'equipe pour connecter toutes les activités avec le logiciel

Une implémentation possible de cette philosophie est l'architecture en oignon. Le domaine est isolé et encapsulé au centre, et la technique se forme autour. Cela permet de séparer concretement la logique du domaine et la logique de l'application. Les couches techniques autour du centre sont facilement interchangeables.

![Architecture en oignon][onionArchitecture]

TODO citation

#### Avantages

* Communication : Toute partie de l'equipe de developpement utilise le domain modele et les entites qu'il definit pour communiquer le business knowledge et le requirements en utilisant un langage metier commun, sans jargon technique
* Extensible : le domaine du modele est tres souvent modulaire et flexible. Les améliorations sont simples a implementer en fonction des demandes metiers 
* Testable : Le domaine du modele etant faiblement couplé, il est facilement testable.
* Qu'importe la technologie utilisée (web service, interface graphique, etc.), le domaine métier etant central, il est facile de changer de technologies si le besoin se ressent, le coeur meme du logiciel restera idementique.

#### Inconvénients et critques (et challenges ?)

Le langage du domaine n'est pas forcement facile a utiliser, et le jargon doit etre compris de toute l'equipe. La communication est vitale et pas forcement facile a maintenir. Un mauvaise communication peut amener une mauvaise implementation du logiciel.

Cette architecture possede une forte complexité et un cout plus elevé de mise en place. Il conviendra aux applications ayant un domaine complexe, mais sera beaucoup moins utile avec les applications plus simples.

#### Bien pour

Quand le domaine est complexe

### Architecture orienté services (SOA)

#### Description

L'architecture orienté services (Service Orienté Architecture) a pour principe de proposer les fonctionnalités d'une application comme un ensemble de services. Les services possedent une interface de communication standard permettant l'invocation, la publication et la decouverte des autres services. La communication peut etre distante (réseau local ou global). 

Voici ses principaux attributs :

* Autonomie : Chaque service est maintenu, developpe, et versionné independemment
* Distribuable : peut etre n'importe ou sur le reseau tant que le reseau supporte le protcole de communication
* Faible couplage : Chaque service est independant des autres. Il peut etre modifie, ou remplacé sans problemes tant l'interface est toujours compatible
* partage de schemas et de contrats, pas de classes : pas de communication via classe interne

![Passage d'un systeme non orienté service a une architecture SOA][soaArchitecture]

#### Avantages

* Abstraction : Les services sont autonomes et accedes via un contrat formel (couplage faible)
* Découvrable : les services exposent une description qui permet aux autres applications et services de les localiser et d'automatiquement determiner l'interface
* Interoperabilite : Les protocoles et formats de donnees sont bases sur les standards de l'industre. Le fournisseur et le consommateur peuvent alors etre construits et deployes sur des plateformes differentes (utilisation de langages differents possibles)
* Réutilisation : Les services sont assez découpés pour fournir une fonctionnalité specifique, plutot que dupliquer la fonctionnalites dans plusieurs applications, ce qui supprime la duplication 

#### Inconvénients et critques (et challenges ?)

A chaque fois qu'un service interagit avec un autre service, la validation de chaque parametre d'entree prend place. Ceci augmente le temps de réponse et la charge de la machine, ce qui réduit la performance globale. De plus certains protocoles de communication sont plus lourds que d'autres (exemple : SOAP).

Meme si un SI est decoupe en services, au fil du temps, chaque service peut devenir tres large, et peut-etre meme effectuer plus de traitements qu'il devrait faire.

#### Bien pour

SOA is not recommended for the following type of applications:

* Homogenous: Implementing SOA for applications that use the technologies of a single vendor will not be cost-effective. For example, if an application is built in Java, then it would be better to use methods of Java rather than using HTTP for inter-component communications.
* GUI-Based: SOA would not be suitable for applications with GUI functionality, e.g. a map manipulation application. Such applications require heavy data exchange, which in turn would increase the complexity of the application if SOA is used.
* Real-time: SOA is not desirable to be used with strictly-enforced response times since the services communicate asynchronously.
* Stand-alone: It would be futile to invest in SOA for stand-alone non-distributed applications, which do not require request and response-based calls.

Consider the SOA style if you have access to suitable services that you wish to reuse; can purchase suitable services provided by a hosting company; want to build applications that compose a variety of services into a single UI; or you are creating Software plus Services (S+S), Software as a Service (SaaS), or cloud-based applications. The SOA style is suitable when you must support message-based communication between segments of the application and expose functionality in a platform independent way, when you want to take advantage of federated services such as authentication, or you want to expose services that are discoverable through directories and can be used by clients that have no prior knowledge of the interfaces.

### Microservices

#### Description

Le style d'architecture Microservices est plus récent que les autres et tirent beaucoup d'inspiration de certains d'entre eux, en evitant les inconvenients de ces derniers. Voici la définition de Martin Fowler dans son article définissant les microservices :

"The microservices architecture style is an approach to developing a single application as a suite of small services, each running in its own process, and communicating with lightweight mechanisms, often an HTTP resource API. These services are built around business capabilities and independantly deployable by fully automated deployment machinery. There is a bare minimum of centralized management of these services, which may be written in different programming langages and use different data storage technologies"

Les microservices se rapprochent beaucoup de l'architecture SOA (Service Oriented Architecture), mais avec une approche differente au niveau de l'implementation :

* SOA : Integre differentes applications comme un ensemble de services 
* Microservices : architecture chaque application comme un ensemble de services

La majeure difference se situe donc au niveau de la taille d'un service. Les microservices se rapprochent plus la philosophie Unix : "Faire une seule chose, mais la faire bien" ("Do one thing and do it well"). Voici une liste des differents attributs de cette architecture :

* Independant : Chaque microservice a son propre cycle de release et de déploiement. Il y a généralement une equipe de développement aux competences diverses par microservice (scalabilité des equipes). 
* Faible couplage : Moyens de communication légers
* Limites des modules claires et interface explicite
* Donnee decentralisée et polyglote : chaque microservice a sa base de donnees sur une technologie independante

![Differences entre une architecture monolithique et une architecture microservices][microservicesArchitecture]

TODO traduire la citation

#### Avantages

* Petit et focus sur une seule fonctionalité : Facile a comprendre, IDE plus facile a charger et déploiement
* Bonne décomposition des modules (bien pour les grandes equipes)
* Déploiements indépendants
* Diversité technologique et architecture evolutive 
* Scalabilité fonctionnelle : Possibilité de dupliquer les microservices la ou c'est critique (fonctionnalités les plus demandées)
* La reecricture limité a un seul service : il est parfois bénéfique de réécrire tout ou partie du code existant, les microservices permettent de limiter ces changements, ou du moins les permettre sans grand impact sur la totalité du systeme.

#### Inconvénients et critques (et challenges ?)

La décomposititon fonctionnelle d'une application en microservices n'est pas tache aisée. Un mauvais découpage peut faire perdre tous les avantages qu'apporte l'architecture et fait se rapprocher du monolithe. Selon Eric Evans, l'architecture DDD aiderait a la decomposition fonctionnelle grace a la notion de contexte borné du DDD.

Cette architecture impose une forte complexité opérationnelle (configuration, déploiement, etc.). Une automatisation des taches de déploiement (déploiement continu) devient nécessaire. Il faut rajouter a cela une bonne surveillance (monitoring).

Cette architecture permet une scalabilité tres précise, mais impose le développement distribué. Ainsi il faut savoir gérer : 

* Donnee decentralisée
* Communication entre les services
* Gérer l'echec d'un microservice
* Testing

Cette architecture propose donc de nombreux avantage mais aussi un challenge elevé. Il n'est pas aisé de réussir a implementer correctement cette architecture du premier coup. Il est préférable de commencer doucement avec une architecture monolithique, pour ensuite migrer au fur et a mesure les parties essentielles en microservices lorsque le besoin se fait ressentir. Attention cependant a ne pas trop attendre pour le faire, ou ce sera trop complexe et il sera nécessaire de tout recommencer.

TODO parlé du monolithe avant ?

#### Bien pour

Les SI complexes ? 

TODO trouver un meilleur titre que "bien pour"
TODO garder le bien pour ?

## Spécificités du Front-end

Maintenant que nous avons vu globalement les principaux styles d'architecture, nous allons voir les spécificités des applications web en commencant par le front-end. Nous allons ensuite choisir les styles d'architecture pour le POC.

### Application traditionnelle

#### Description

On dit qu'une application web utilise une architecture traditionnelle lorsque la formation de la vue (HTML) se produit du cote du serveur (server-side rendering). Le principe est le suivant : 

* Un navigateur web envoie une premiere requete lors de l'arrivee sur un site web. 
* Le serveur va chercher des donnees si necessaire, puis forme la vue entierement (document HTML statique) et repond ce document au navigateur.
* Le navigateur affiche cette page directement. Si l'internaute remplit un formulaire, ou clique sur un lien pour changer de page, l'operation precedente recommence. Il recoit la page HTML suivant, etc.

Du cote du serveur, une architecture du type MVC* (Modele Vue Controleur) est generalement mise en place pour bien separer les concepts (formation de la vue, des donnees et de la logique metier*). L’HTML étant un document statique, pour rendre l’expérience utilisateur plus intéressante, on utilise du javascript chargé côté client pour modifier la structure de l’HTML courant (via le DOM) et permettre des effets de type animation, etc. Il faut bien comprendre que les fichiers HTML/CSS/Javascript sont chargés à chaque demande de page, car lorsque l’utilisateur demande une autre page (par exemple passage de l’accueil du site à la gestion de son compte), la logique est différente ainsi que l’HTML (le CSS et le Javascript sont souvent mis en cache par le navigateur). Une nouvelle page web correspond à une nouvelle logique qui doit être générée.

![Schéma en anglais représentant l’architecture classique][traditionalArchitecture]

TODO relire et remplacer architecture par application traditionnelle

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

TODO refacto 

### Passage aux Single Page Application

#### Description

Le javascript ayant évolué, permet des interactions plus dynamiques avec un serveur grâce à l’AJAX*. L’AJAX permet au javascript de lancer une requête http non bloquante (asynchrone) et d’avoir le résultat de la requête sans avoir à recharger la page.

Cet atout, combine a la performance des recent moteurs javascript ont permis l’apparition d’un nouveau type d’applications, les Single Page Applications (SPA). C’est une application permettant à l’utilisateur d’avoir une expérience dynamique et non bloquante (proche des applications de bureau). En effet, l’utilisateur ne charge qu’une seule fois les fichiers de l’application (HTML/CSS et surtout Javascript). Le javascript s’occupe ensuite de changer la structure des pages en
fonction des actions de l’utilisateur. Les communications serveur se font par AJAX et ne
demandent pas le rechargement de la page. 

Nous avons vu qu'avec l'architecture traditionnelle et le rendu cote serveur, la gestion de la vue et des donnees est confuse. Le but ici est d'avoir reelement deux applications totalement differentes. L'une est le client (la vue), comprenant toutes les interactions avec l'internaute (HTML/CSS/JavaScript), et l'autre est le serveur, comprenant la logique metier faisant abstraction de tout ce qui est visuel. Le serveur devient ce que l'on appelle commenement un web service, pouvant servir plusieurs types de client.

![Schéma en anglais représentant l’architecture Single Page Application][spaArchitecture]

TODO refacto + archit ttradi

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

Au niveau du front-end, l'architecture MVC est tres répendue. Nous avons vu les avantages et les inconvenients de celui-ci. Nous allons voir que d'autres possibilités apparaissent avec les derniers standards du web.

#### Architecture orienté composants

Cette architecture devient de plus en plus répandue et le web evolue de plus en plus sur cette solution. L'implémentation de cette architecture au niveau du front-end est disponible avec ce que l'on appelle des web components (composants web). Cela permet l'encapsulation et l'interopérabilité d'un element HTML individuel. Voici les propriétés d'un composant web standard :

* Elements et proprietes personnalisées : Permet la création d'element HTML autres que ceux standards (p, a, h1, h2, etc.) avec des proprietés propres
* Shadow DOM et CSS scopé : Isolation du CSS et du DOM par composant web (le CSS d'un composant n'affectera pas le reste de la page) 
* Imports HTML : Permet l'import d'autres composants via le code HTML
* HTML Templates : Un composant s'écrit via un fichier HTML

Si les navigateurs aujourd'hui n'implementent pas tous encore ces prochains standards du web, celui-ci tend sur cette lignée. Il est possible d'utiliser des aujourd'hui les composants web grace a des polyfills ou des frameworks definissant leur propre maniere de creer des composants web.

#### Architecture orienté évènements

Les composants etant independants et autonomes, une facon de relier le tout est d'utiliser un bus d'evenements central, et donc l'architecture orienté evenements. Il est aisé d'en creer un en JavaScript, et certains frameworks le proposent. Cela permet de profiter des avantages de ces deux architectures.

Les facons de faire sont nombreuses et le choix dependra finalement beaucoup des projets, du styles de developpement des equipes, etc. 

## Spécificités du Back-end

Nous avons vu qu'il y a deux manieres de creer des applications web, la maniere traditionnelle et avec les SPA. De la maniere traditionnelle, le serveur s'occupe de gerer les donnees en arriere plan (back-end), mais aussi de former la vue. Les SPA sépare ces deux responsabilités en deux applications differentes. Le back-end expose donc generalement des web services qui font l'interface avec des bases de donnees, communication avec d'autres web services, etc.

### Passage aux Web services

Un service web permet la communication et l'echange de donnees entre deux applications. Le protocole généralement utilisé est l'HTTP. Il existe majoritairement 2 types de web services : SOAP et REST. 

#### SOAP

D’après Wikipédia :

"SOAP (Simple Object Access Protocol) est un protocole de RPC (Remote Procedure Call) orienté objet bâti sur XML. Il permet la transmission de messages entre objets distants, ce qui veut dire qu'il autorise un objet à invoquer des méthodes d'objets physiquement situés sur un autre serveur. Le protocole SOAP est composé de deux parties :

* une enveloppe, contenant des informations sur le message lui-même afin de permettre son acheminement et son traitement
* un modèle de données, définissant le format du message, c'est-à-dire les informations à transmettre (appelé WSDL)."

![Représentation de l’enveloppe SOAP][soap]

SOAP décrit la manière dont les applications doivent communiquer entre elles, ce qui peut augmenter le couplage entre le serveur et les clients. Une évolution du coté du serveur demande une mise a jour des clients. 

SOAP permet l'utilisation de plusieurs protocoles autres que l'HTTP tel que le SMTP, mais en pratique, c'est généralement uniquement l'HTTP qui est utilisé. Le nombre d'informations transitant décrit avec le XML alourdit grandement les echanges. 

SOAP a été utilisé pendant tres longtemps et de nombreux web services ecrits en SOAP existent encore actuellement (de nombreux web services sont ecrits en SOAP chez Cdiscount). Cependant, des solutions plus légeres sont de plus en plus preferées telle que REST. SOAP est generalement utilisé pour mettre en place une architecture orientée services (SOA).

TODO wiki ?

#### REST

Contrairement a SOAP, qui est un protocole a part entiere, REST (Representational State Transfer) est un style d'architecture. Les systèmes qui suivent les principes de l'architecture REST sont appelés RESTful. C'est généralement le protocole HTTP (tres leger) qui est utilisé. Il est tres simple a utiliser et permet de respecter tous les principes de l'architecture. 

REST est une architecture orientée ressource (contrairement a SOAP qui est orienté méthodes). Par exemple, une API web representera un client comme une ressource, et sera manipulable a cette adresse (ajout, modification, suppresion, etc.): `http://www.foo.com/Clients`. 

REST est une architecture dite sans etat (stateless).

TODO Texte wiki : L'absence de gestion d’état du client sur le serveur conduit à une plus grande indépendance entre le client et le serveur. Elle permet également de ne pas avoir à maintenir une connexion permanente entre le client et le serveur. Le serveur peut ainsi répondre à d'autres requêtes venant d'autres clients sans saturer l'ensemble de ses ports de communication. Cela devient essentiel dans un système distribué.

REST est généralement utilisé lors d'une mise en place d'une mise en place des microservices grace a sa legereté.

TODO deja parlé de stateless ?

### Choix de styles d'architecture

#### SOA + architecture en couches

Cdiscount utilise actuellement une architecture orientée service. Chaque service utilise une architecture en couches. Nous avons vu les avantages et les inconvenients de chacun. Si la séparation fonctionnelle etait claire au debut, aujourd'hui chaque service s'apparente de plus en plus a un monolithe. La société est en pleine reflexion pour casser ses monolithes et avoir une architecture plus souple.

#### Microservices

C'est l'architecture vers laquelle Cdiscount veut tendre. Elle etudie actuellement une strategie de migration. Pour le projet de démonstration, nous souhaitons mettre aussi en place cette architecture. Ce n'est pas tache aisée et nous allons proceder au fur et a mesure.

TODO choix d'architecture avec S ou pas ?
TODO isomorphique ??

## Idéologie commune (ce qu'il faut retenir)

* vu plein de choses mais ce qu'il faut retenir
* le monolithe c'est pas bien
* le fait de separer client serveur ca casse deja un peu, mais c'est possible d'avoir un cote serveur aussi
* l'archi microservices ca casse encore plus
* architecture > techno
* 2 types de logiques et que c'est bien de les separer
* donc grande inspiration du DDD au moins pour ca
* donc separer la logique du domaine de la logique de l'appli ca decouple bien. et les microservices encore plus => diversité technologique et efficace, bon decoupage fonctionnel et deploiements faciles, facile a comprendre
* c'est pas forcement facile a implementer bien d'un coup mais faut faire au fur et a mesure, mais faut bien avoir ca en tete. choisir une methodo qui permet de faire ca aussi, aller sur la mauvaise pente c'est rapide et beaucoup de dette technique apres.

TODO Je dis que tel style est meilleur que tel autre. Dans tous les cas ou juste celui du POC ? 
TODO parler de l'archi en couche parce que cdiscount utilise ca ? critiquer celle de cdiscount ? Si oui comparer au MVC un peu
TODO qu'est-ce qui est appliqué au POC, c'est assez clair ?
TODO monolithe

# Choix technologiques

Maintenant que nous avons decidé quelle architecture mettre en place pour note projet, ainsi que les differents principes a retenir, l'étape suivante est de choisir des technologies permettant de les appliquer. Meme si nous avons retenu que les choix d'architecture sont plus important que les choix techniques, et qu'il ne faut pas en devenir dependant, il faut tout de meme choisir les bonnes technologies pour concretiser le tout.

Pour rappel, nous allons essayer de separer au maximum la logique du domaine de la logique de l'application. Ceci nous permettra de choisir la technologie la plus adaptée pour chaque composant et de pouvoir la changer facilement si le besoin s'en ressent.

## Choix d'un framework SPA

C'est surement le choix le plus difficile a effectuer. Il existe de nombreux frameworks pour creer des SPA. Il est aussi possible de ne pas utiliser de frameworks, mais d'effectuer a la place une combinaison de librairies. Cependant, un framework apporte de la structure a l'application, une architecture flexible et renforce la separation des responsabilités. 

Nous ne presenterons pas tous les frameworks SPA ici, car il en existe beaucoup. Nous allons alors presenter ceux qui ont etes pris en compte pour le projet de demonstration. Au final, ils evoluent tres vite, et il est interessant de passer de l'un a l'autre selon les applications et les composants.

### AngularJS

#### Description

AngularJS est un framework créé en 2009 par Google. Il propose :

* Injection de dépendances
* Pattern MVVM utilisé mais avec notion de "service" qui peut servir pour mettr de la business logic
* Orienté composants possible (via directives)
* Testing avancé et facilité:
    * Tests unitaires
    * Tests UI (E2E) via protractor
* Découpage fonctionnel sous forme de modules
* Two way data binding : passage des donnes du controleur a la vue automatique au niveau du code

Une version 2 est en cours de développement et va apporter de nombreuses choses :

* Shadow DOM
* Meilleurs performances
* Encore plus orienté composant
* Plus simple

#### Avantages

* Stable et production-ready 
* Large communauté : framework le plus utilisé, de nombreux modules open source
* Two-way data binding facilite grandement le développement et permet d'eviter la manipulation du DOM
* Séparation des fichiers claire pour chaque composant (HTML, JS, CSS)

#### Inconvénients

* Prise en main difficile
* Version 2 non rétro-compatible (si utilisé en orienté composants, migration facilitée)
* Performances (le two-way data-binding a un impact sur la performance générale de l'application)

TODO comment ecrire 2 way data binding

![Tendance des recherches d’après Google Trends][spaFrameworks]

### ReactJS + Flux

#### Description

ReactJS est un framework créé en 2013 par Facebook. Il est par conception orienté composants et utilise le virtual DOM, implémentation differente du shadow dom (non standard), aillant de tres bonnes performances. Par conception, ce framework s'occupe unique de la vue et doit etre utilisé avec un autre framework pour etre complet. 

Facebook a créé une architecture se nommant Flux pour complementer ReactJS. C'est une architecture orienté evenements pronant le flux de donnees unidirectionnel (contraire du two-way data binding). Bien utilisé, il est beaucoup plus clair et performant. Ce qu'il faut retenir c'est : les donnees descendent, et les actions remontent, chacun dans un sens. 

#### Avantages

* Simple et rapide a mettre en place
* Architecture Flux claire et efficace
* SEO : possibilité de faire du server-side rendering
* Performances
* Communauté grandissante

#### Inconvénients

* Utilisation du JSX : JSX mélange l'HTML et le JavaScript dans un meme fichier par souci de simplicité. C'est un choix personnel, mais je prefere avoir les avoir séparé (melange de vue et de logique)
* JSX et virtual DOM non standards, malgré leur efficacité

### Polymer

#### Description

Polymer est une librairie crée par Google en 2014. Ce n'est pas vraiment un framework, car il est beaucoup moins complet que les autres. Les web components, tels qu'ils sont definis par le W3C ne sont pas encore supportés par tous les navigateurs. Polymer propose donc un systeme de polyfill pour creer des composants web se rapprochant plus du standard, comprenant le Shadow DOM, l'import HTML, etc.

#### Avantages

* Les composants créés se rapprochent plus du futur standard que les autres frameworks
* Peut etre combiné avec d'autres librairies

#### Inconvénients

* Tres recent, version 1.0 sortie il y a peu de temps
* Tres peu de modules open source
* Pas un framework, moins complet mais si le choix est de faire une combinaison de librairies, pourra convenir

### Un choix difficile

Le choix est difficile a effectuer car les technologies présentées sont toutes bien (permettant l'orienté composants et l'orienté evenements) et sont a la pointe des technologies web. Le choix dependra finalement du projet et du style des equipes de developpement. 

Pour ce qu'il est de notre projet, nous avons choisi angular pour les raisonts suivantes. Il est le framework le plus mature et possedant la plus grande communauté dans sa catégorie. Les ressources a disposition sont alors importantes. Il met beaucoup en avant le testing, et c'est un facteur tres important pour notre projet. De plus, notre equipe a de l'experience avec ce framework et nous sommes efficaces avec celui-ci. Pour un projet durant 2 moins, c'est a prendre en compte.

Nous aurions pu choisir ReactJS pour ses performances et sa philosophie, mais finalement les performances d'AngularJS sont tres correctes pour notre besoin, et nous préférons le style de developpement d'angularJS (preferance pour la structure des fichiers d'angular par rapport au JSX de ReactJS). C'est donc vraiment une preferance finalement.

Polymer est selon moi trop jeune, la version 1.0 etant sortie alors que nous avions deja commencé le projet. Avec une bonne combinaison de librairies, il peut cependant devenir une alternative tres interessante. 

Nous avons rajouté a notre choix d'angular un bus d'evenements central pour profiter de l'architecture orienté evenements. N'etant pas fourni avec AngularJS, nous avons créé notre bus d'evenements en JavaScript.

TODO parler de la structure des fichiers d'un component ? (controller, service, css, etc.)
TODO faire des phrases des fois

## Choisir les bons outils

De nombreux outils sont a disposition pour faciliter le developpement d'applications web. Certains sont meme necessaire pour le developpement mobile ou pour les methodes agiles. 

### Outils de compilation

#### Gulp

Gulp est un task runner. Son but est limiter les actions repetitives et d'automatiser certaines taches. Il est tres comparable a Maven dans le monde Java. Il en existe plusieurs dans le monde du JavaScript, mais nous avons choisi celui-ci pour sa simplicité.

Nous avons plusieurs taches et les principales sont :

* "build:web" : C'est la tache principale, elle compile les fichiers sources et les prepare le resultat final dans un dossier different
* "build:mobile" : Effectue la meme chose pour le mobile
* "watch" : Relance automatiquement la compilation des fichiers a chaque sauvegarde d'un des fichiers sources, recharge aussi le navigateur web
* "server" : Lance un serveur de developpement lisant les fichiers compilés par la tache de compilation

La plus grosse tache est la compilation pour le web. Comme nous utilisons la derniere version de JavaScript, mais qu'elle n'est pas encore supportée par tous navigateurs, nous devons la transpiler (passage a une version anterieure compatible). D'autres astuces sont aussi utilisées comme la minification des fichiers pour prendre moins de place, etc.

##### Cordova

* anciennement PhoneGap
* framework de dévepllopemnt mobile
* permet de faire du natif avec les technos web = application hybride
* fonctionnalité natives du tel comme photo, GPS, tout ca
* acceleration webview avec cocoonjs

TODO pas deja dis ca ?

### Automate

Dans la meme lignée que les tasks runners, nous utilisons un automate appelé Yeoman. C'est un outil permettant d'automatiser la creation de fichiers lorsque c'est redondant. Par exemple avec AngularJS, la création d'un composant est longue parce qu'il y a de nombreux fichiers. Nous avons alors créé notre propre générateur avec cet outil pour générer les bons fichiers.

TODO exemple avec `yo angular-es6-components:component myComponent` et montrer les fichiers créés ?

### Gestionnaire de versions

Un gestionnaire de versions est fortement recommandé, surtout avec les méthodes agiles.

* versionnig est tres important
* git le plus utilisé

TODO c'est vraiment interressant d'ecrire la dessus ?

### Gestionnaire de paquets

Nous utilisons beaucoup de librairies open source, que ce soit du coté du front-end ou du back-end. Chacune d'elles a sa propre version et il devient complexe de s'en sortir lorsqu'elles sont nombreuses. De plus, c'est une mauvaise pratique de melanger les librairie tierces avec le code source sur le gestionnaire de versions. 

L'interet d'un gestionnaire de paquets est que grace a un fichier descriptif comprenant la liste des librairie tierces avec une version spécifique, chaque developpeur (ou machine de deploiement) est capable de telecharger la correcte version. Au niveau du front-end, nous utilisons Bower.

TODO DRY ?
                
### Framework Graphique

Il n'est pas aisé de faire du CSS, et de nombreuses surcouches existent pour ameliorer son comportement de base (SASS, LESS, etc.). Nous avons préféré utiliser un framework graphique tout fait avec quelques legeres modifications en CSS par souci de rapidité. 

Si Bootstrap est le plus connu, nous avons utilisé un plus récent : Angular Material. Il propose d'utiliser le Material Design de Google adapté pour AngularJS. Il est selon nous tres agreable a utiliser et a voir.

## Choix d'un langage serveur

Il existe de nombreuses solutions pour creer des serveurs RESTful. Les plus communes sont : 

* Java (avec framework http comme Jersey)
* C# (avec WCF)
* PHP (pas optimisé à la base pour faire du RESTful, mais possible tout de même)

Nous avons choisi le NodeJS comme solution. Comme vu précédemment, le JavaScript est un langage tres adapté pour le back-end, d'autant plus avec la derniere version. NodeJS comporte le plus grand nombres de modules open sources avec son gestionnaire de paquets npm. Utilisant l'architecture des microservices, nous pourront créer certains services dans d'autres technologies si nous trouvons cela necessaire. Nous voulons pour l'instant tirer parti du fait que nous utilisons le meme langage de developpement des deux cotés et sommes tres efficaces de cette maniere. 

TODO deja dit plus grand nombre de modules open source
TODO detailler un peu pourquoi node ?

## Containers 

La meilleure facon de creer et gerer des microservices actuellement est de passer via des containeurs grace a la technologie Docker. Un containeur est un espace linux isolé pouvant interagir avec d'autres containeurs. Le principe est tres similaire a une machine virtuelle, mais en beaucoup plus leger et efficace. Il est parfait pour creer une ou plusieurs instances d'une meme application aisément.

Dans le cas de notre projet, nous avons commencé par creer une seule instance de notre API RESTful dans un seul container (apparant a un monolithe). Il est aisé de creer plusieurs instances de celui-ci si nous le souhaitons grace a du load-balancing. 

TODO schema

Si nous souhaitons aller encore plus loin et respecter vraiment l'architecture des microservices, nous devrions créer un microservice par route. Par exemple, les routes /api/products ou /api/basket serait dans des containeurs isolés avec un nombre d'instance propre (scaling fonctionnel).

TODO schema
TODO bien parler de l'api gateway
TODO dire que c'est un plusieurs etapes

# Méthodologie

Les choix d'architecture et de technologies sont faits, il est maintenant important de choisir une bonne méthodologie. Cdiscount utilise historiquement la méthode du cycle en V. Cependant, elle considere fortement les methodes agiles et laisse le champ libre aux pizzas team recemment formées. Pour notre projet, nous allons appliquer la methode de l'extreme Programming que nous allons definir.

## Cycle en V

Le cycle en V est un modele conceptuel de gestion de projet. Il est constitué en plusieurs etapes et sont découpées ainsi :

* Analyse des besoins et création des spécifications
* Conception
* Developpement
* Tests (unitaires, intégration, etc.)
* Recette

![Étapes du cycle en V][cycleV]

Le but de cette méthode est de limiter les retours aux etapes précédentes. En pratique, il est difficile voire impossible de totalement détacher la phase de conception d'un projet de sa phase de réalisation. C'est souvent au cours de l'implémentation qu'on se rend compte que les spécifications initiales étaient incomplètes, fausses, ou irréalisables, sans compter les ajouts de nouvelles fonctionnalités par les clients.

Il est difficile d'appliquer l'architecture des microservices avec cette méthodologie, ainsi que le déploiement rapide en production. Le cycle en V comporte beaucoup d'étapes impliquand de nombreuses equipes, limitant la vitesse de passage en production. Une seule equipe independante et polyvalente dédiée a chaque microservices serait plus efficace, gérant elle meme son cycle de releases, ses propres choix techniques, etc.

TODO l'image est assez descriptive des etapes nan ?

## Méthode agile : SCRUM

SCRUM est une méthode agile iterative et incrementale pour gerer le developpemnt d'un produit. Elle a pour but d'encourager l'equipe a s'auto-organiser en mettant en avant une forte communication par tous les membres de l'equipe, quelque soit sa discipline. 

Cette méthode prend en compte le fait que le client change souvent d'avis, et que des imprévus peuvent arriver. Elle a pour cela une approche empirique, c'est a dire qu'elle accepte qu'un projet ne peut totalement etre compris et bien défini. Pour cela, le fait de modifier souvent le produit permet de repondre rapidement aux satisfactions du client en s'adaptant a ses demandes emergentes. 

Une equipe SCRUM possede trois roles principaux :

* Product owner : Représentes les parties prenantes et est la voix du client. Son role est de s'assurer que l'equipe apporte de la valeur ajoutée au produit.
* Equipe de developpement : Equipe responsable d'ajouter de la valeur au produit a la fin de chaque iteration
* Scrum Master : Facilitateur, celui qui s'occupe de ce qui ralentit l'equipe de dev. Il s'assure aussi que les rituels sont bien respectés

La methode est constituée de differents evenements et rituels important a respecter. En effet, les respecter permet d'optimiser l'efficacité de chaque membre de l'equipe grace a une bonne communication. Le resultat est que le produit est de bonne qualité, respectant les demandes du client. Voici les principaux evenements et rituels :

* Sprint : Iteration avec une duree specifique (time-box)
* Sprint Planning : Se deroule au debut de chaque sprint, le but est d'estimer les taches a effectuer et d'assigner des taches les plus prioritaires (jugé par le PO) au sprint en fonction de la capacité de l'equipe de developpement (velocité)
* Daily Scrum : Rencontre journaliere de toute l'equipe SCRUM, ou chaque membre dit le travail effectué la veille, le travaille qu'il effectuera ce jour et les problemes rencontrés
* Sprint review : Presentation du resultat aux parties prenantes, et revue du travail effectué et non effectué
* sprint retrospective : Reflexion sur le dernier sprint, identification de ce qu'il s'est bien passé, mal passé et comment le processus pourrait etre amélioré. Permet aussi d'ajuster la vélocité de l'equipe

TODO parler du product backlog

## Méthode agile : Extreme Programming

La méthode SCRUM ne couvre aucune technique d'ingénierie logicielle. Dans le cas d'un developpement d'application, il est necessaire de la completer avec des pratiques de qualité logicielle.

Extreme Programming (XP) est une méthode agile plus particulièrement orientée sur l'aspect réalisation d'une application, sans pour autant négliger l'aspect gestion de projet. XP est adapté aux équipes réduites avec des besoins changeants. XP pousse à l'extrême des principes simples.

Son but principal est de réduire les coûts du changement. Dans les méthodes traditionnelles, les besoins sont définis et souvent fixés au départ du projet informatique ce qui accroît les coûts ultérieurs de modifications. XP s'attache à rendre le projet plus flexible et ouvert au changement en introduisant des valeurs de base, des principes et des pratiques.

Voici les pratiques poussees a l'extreme :

* puisque la revue de code est une bonne pratique, elle sera faite en permanence (par un binôme)
* puisque les tests sont utiles, ils seront faits systématiquement avant chaque mise en œuvre
* puisque la conception est importante, elle sera faite tout au long du projet (refactoring)
* puisque la simplicité permet d'avancer plus vite, nous choisirons toujours la solution la plus simple
* puisque la compréhension est importante, nous définirons et ferons évoluer ensemble des métaphores
* puisque l'intégration des modifications est cruciale, nous l'effectuerons plusieurs fois par jour
* puisque les besoins évoluent vite, nous ferons des cycles de développement très rapides pour nous adapter au changement

Voici le cycle de développement pour chaque scenario (fonctinnalité a developper) :

* une phase d'exploration détermine les scénarios "client" qui seront fournis pendant cette itération
* l'équipe transforme les scénarios en tâches à réaliser et en tests fonctionnels
* chaque développeur s'attribue des tâches et les réalise avec un binôme
* lorsque tous les tests fonctionnels passent, le produit est livré

![Cycle de l'Extreme Programming][xp]

XP decrit 12 pratiques, regroupées en 4 categories.

### Retour d'information (feedback)

* Pair Programming : Programmer avec un partenaire
* Planning Game : Similaire au sprint planning de SCRUM
* TDD (Test Driven Developement) : Coder le test avant la fonctionnalité
* Equipe complete : Le client fait partie de l'equipe et se doit d'etre disponible a tout moment

### Process continu

* Integration continue : Lancer les tests unitaire a chaque code rajouté par un developpeur sur le gestionnaire de versions
* Refactoring : S'assurer que le code est efficace et sans duplication (bonne architecture)
* Petites releases : Mise en production fréquente

### Compréhension commune

* Standards de code : Avoir un style de code convenant a toute l'equipe
* Possession commune de code : Le code n'appartien a personne, mais a toute l'equipe
* Architecture simple : La philosophie de l'équipe est "Simple est mieux" (KISS : Keep It Simple Stupid). L'equipe doit toujours se demander "N'y a t il pas un moyen plus simple d'implementer cette fonctionnalité ?".
* Métaphore du systeme : Toute l'equipe (client, manager, developpeur, etc.) est capable de decrire comment le systeme fonctionne avec des mots simples. 

### Bien etre du programmeur

Le dernier principe est "Rythme tenable". Les programmeurs ne devrait pas faire d'heures supplémentaires pour realiser le travail. Un programmeur fatigué n'est pas un programmeur efficace et creatif, et la qualité du code sera moindre. 

TODO attention ca vient beaucoup de wikipedia

## Appliqué au projet

### Ce que nous retenons des méthodes agiles

Pour notre equipe et notre projet, nous prenons inspiration de ces methodes agiles. SCRUM definit de bonnes méthodes de gestion de projet, tandis que l'extreme programming definit de nombreuses bonnes pratiques logicielles. Il faut faire tres attention a ne pas perdre l'interet d'une des deux methodes en ne l'implementant pas totalement.

Le mot "extreme" d'extreme programming peut paraitre comme un mot pejoratif, mais ce n'est finalement qu'une liste simple de bonnes pratiques a respecter pour avoir un logiciel de qualité. Pour notre projot, nous allons donc utiliser ces bonnes pratiques, en plus d'utiliser les rituels et artefacts de SCRUM. Ce que nous retenons vraiment de ces deux methodes et ce que nous prenons comme philosophie sont les points suivants :

#### Testing 

Une des pratiques les plus importantes. Un logiciel testé permet de s'assurer que toute nouvelle fonctionnalité n'affecte pas le reste du systeme. Le fait d'ecire le test en premier (TDD) force le refactoring et assure une bonne conception des le depart, limitant la dette technique.

#### Code Review 

La revue de code par un autre collegue permet de s'assurer de la qualité de celui-ci. Cela donne du recul a celui qui l'a developpé et lui permet de s'ameliorer. Cela limite par la meme occasion la possesion du code par une seule personne. Si c'est difficile de faire du pair programming constamment, nous pensons qu'il est necessaire qu'un code sur la branche principale soit revu par au moins deux personnes. 

#### Pas de dette technique

La dette technique ralentit le developpement et renforce la possibilité d'avoir des bugs dans le systeme. Nous faisons tout ce que nous pouvons pour l'eviter. Pour cela, il est important de respecter les bonnes pratiques de l'extreme programming (TDD, code review, etc.). Les developpeurs doivent toujours etres satisfait du code sur la branche principale, et ne jamais penser que le probleme pourra etre reglé plus tard. 

Si le travail est effectué sur un code existant de type legacy (code non testé comportant généralement une forte dette technique), nous appliquons la *boy scoot rule*. Celle-ci definit qu'un developpeur qui touche a un morceau de code, doit forcement le rendre plus propre qu'il l'a laissé. Cela permet de reduire petit a petit la dette technique lorsque celle-ci est trop elevé.

#### Déploiments rapides, faciles, et fréquents

La procédure de déploiement en production doit etre automatisée, et fréquente. Si cette procedure est rapide, les developpeurs auront la possibilité d'ajouter des fonctionnalités et corriger des bugs facilement. L'automatisation est un énorme gain de temps. La présences de nombreux tests permet aussi de s'assurer que le déploiment s'est effectué sans problemes avec l'integration continue. 

#### Utiliser les bons outils

Tout outil permettant de gagner du temps doit etre utilisé (environnement de developpement, etc.). Il en est de meme des artefacts de SCRUM tels que la vélocité. Etre capable de mesurer la capacité de travail de l'equipe est tres important.

#### Une bonne communication

Une bonne communication tous les jours avec les autres membres de l'equipe permet de ne pas avoir un membre bloqué sur une problematiques pendant plusieurs jours.

#### Bien etre des membres de l'equipe

Une equipe bien dans sa peau, bien reposée, et ayant de l'interet pour le travail effectué est une equipe efficace. Pour cela, il ne faut pas que les membres ait de nombreuses heures supplémentaires a effectuer. La vélocité de l'equipe est présente pour mesurer sa capacité a travailler. Elle est plus facile a mesurer sur des intervalles de tempes courts (contrairement au cycle en V possedant de nombreuses etapes). L'equipe ne devrait donc pas travailler en plus de sa velocité. De plus, un systeme bien testé limites les problemes en production et les besoins d'effectuer des heures supplementaires.

Pour les developpeurs, avoir du temps dégagé pour effectuer de la veille technologique est tres important. Cela permet d'avoir des developpeurs toujours afutés techniquement et enforce leur creativité et compétence technique, ainsi que l'interet pour le travail effectué. Cela peut paraitre sans valeur ajoutée pour le produit, mais c'est en realité ce qui pourra faire la difference dans la realisation de celui-ci, plus originale et moderne. Un peu de veille tous les jours ou meme une apres midi par semaine dans les periodes creuses ont de grands benefices. Il est encore mieux lorsque des ateliers de partage de connaissance sont organisés de temps en temps, qui affute en meme temps les talents de communication des membres.

### Différents types de tests

Nous avons vu que le testing est tres important dans la realisation d'un logiciel. Il existe cependant plusieurs types de tests possedant un interet et un cout differents.

#### Pyramide des tests

La pyramide de tests est un concept créé par  Mike Cohn, described in his book Succeeding with Agile. Le point clé qu'il essaye de demontrer est qu'un logiciel devrait avoir beaucoup plus de tests unitaires de bas niveau (faciles a ecrire et beaucoup d'interet), que de tests d'interface graphique de haut niveau (difficiles a ecrire et moins d'interet). Attentien, il ne dit pas que les tests de haut niveau sont sans interet, il dit que l'on devrait ecrire plus de tests faciles a ecrire que de tests difficiles a ecrire (temps perdu).

Les tests de haut niveau sont differents selon la partie technique implementée, dans tous les cas on parle souvent de tests fonctionnels, ceux qui sont le plus proche du resultat final, representant une fonctionnalité de l'application. Ce sont généralement les tests que l'on ecrit en premier. 

Dans le cas du front-end, ce sont généralement des tests d'interface graphique (UI). Ils ne sont généralement pas faciles a ecrire mais dans notre cas, grace a la technologie choisie (AngularJS), des outils spécifiques facilitent l'ecriture de ceux-ci (Protractor). On enclenche par exemple une action (clic sur un bouton) et on verifie qu'il se passe le comportement voulu, comme l'apparition d'une pop-up, etc.

Dans le cas du back-end, on parle généralement de test d'API ou de test d'integration. On ecrit un test qui appelle diretctemment l'API et qui va verifier que le resultat obtenu (généralement une donée) est correct. Il peut s'averer complexe d'effectuer ce genre de tests lorsqu'une base de donnée est impliquée, car la donnée n'est peut etre pas consistante. Généralement, une base de données de tests différente de celle de production est utilisée. 

Cela signifie qu'un test peut avoir un résultat different selon le contexte (non idempotent). Ce n'est pas le cas des tests unitaires qui vont substituer les parties externes de la methode testée pour avoir toujours le meme resultat. C'est pour cette raisons qu'ils sont beaucoup plus faciles a ecrire, mais ils ne mettront pas en valeurs certains aspects. 

Il faut retenir ceci : Un test unitaire permet de verifier qu'une methode est capable de gerer plusieurs cas, et un test de haut niveau verifie qu'une fois le tout relié, l'ensemble fonctionne. Les tests unitaires forcent aussi une bonne separation des responsabilités.

![Pyramide des tests][testPyramid]

#### TDD (Test Driven Developement)

Le TDD (Test Driven Development) ou developpment piloté par les tests est une méthode de développement pronant la repetition et les cycles de developpement courts. Si au depart le TDD etait une pratique de l'extreme programming, c'est aujourd'hui une pratique plus generalement adoptée. Le principe est le suivant :

* Rouge : Le developpeur ecrit un test qui va definir l'amelioration ou la creation d'une fonction (le test va automatiquement echouer, on dit que le test est rouge)
* Vert : Le developpeur ecrit ensuite le code minimum faisant reussir le test
* Refacto : Il va ensuite refactorer le code jusqu'a ce qu'il soit satisfaisant (standards acceptables par l'equipe). Il verifie que ces changement n'ont impacté aucun test

Selon Kent Beck, connu pour avoir défini cette technique dans son livre Test Driven Development: By Example, le TDD encourage une architecture simple et efficace. Cette technique parait etrange pour beaucoup de developpeurs, car ce n'est pas l'ecriture de la solution du probleme qui est ecrite en premier. C'est plutot un test mettant en valeur ce qui manque au systeme.

Dans le cas d'une nouvelle fonctionnalité a implementer, resoudre le test signifie que la fonctionnalité a été rajoutée. Dans le cas d'un bug, il faut ecrire un test mettant en valeur le cas ou la fonction echoue, et faire passer le test signifie que le bug est corrigé. Dans tous les cas, la derniere etape permet de s'assurer que le code rajouté est de qualité et de ce fait, est une étape tres importante. 

De plus, ne pas casser un autre test que le nouveau ecrit signifie qu'aucune regression n'a ete faite au systeme. Ainsi, la presence de nombreux tests permet de s'assurer que le systeme evolue et ne regresse pas (apparition de bugs). On parle de tests de non régression.

Nous utilisons une variante du TDD se nommant le BDD (Behavior Driven Development), developpement piloté par le comportement. C'est le meme principe que TDD mais avec une description du test un peu plus claire. C'est tres utile pour les tests de haut niveau (tests fonctionnels) car l'implementation du test ressemble fortement a une phrase ecrite en langage commun (francais, anglais, etc.). La convention est la suivante :

* Given : Etant donné que ...
* When : Si ...
* Then : Alors ...

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
TODO parler de ca ? si pas ici, parler d'integration continue et de jenkins quelque part

## Démonstration de développement d'une fonctionnalité

Un sprint contient généralement l'implementation de plusieurs fonctionnalités. Une fonctionnalité est definie via une User Story ecrite au Sprint Planning. Voici notre méthodologie concrete pour ajouter une fonctionnalité au produit.

* Creation d'une nouvelle branche
* Ecriture de tests de haut niveau (Integration test, E2E test)
* Ecriture de la fonctionnalité en TDD
* Un bug ? Création d'un test mettant en valeur le bug, puis correction
* Code review par un autre membre de l'équipe
* Integration de la nouvelle branche sur la branche principale
* Verification que tous les tests passent grace a l'integration continue

La création d'une nouvelle branche permet au developpeur s'etant assigné une user story d'implementer son code sans interagir avec les autres membres de l'equipe, et ne pas avoir des conflits de code fréquemment. Une branche n'est reintegrée que si elle est validée par un autre membre de l'equipe. Une branche ne devrait pas etre longtemps eloignée de la branche principale, sinon le travail de merge devient plus complexe.

TODO meilleur nom ?
TODO deja defini quelque part ce qu'est une user story
TODO deja defini quelque part integration continue ?

# Résultats du projet

Ayant appliqué ces principes (architecture, méthodologies, technologies) sur notre projet durant 2 mois avec notre équipe de 3 développeurs, nous sommes arrivés a un resultat satisfaisant. Nous allons maintenant voir jusqu'ou le developpement est allé et les objectifs ont étés atteints.

## Résultat

Grace a la technologie cordova, nous avons créé une application fonctionnant sur plusieurs terminaux mobiles (ios, android) ainsi que sur les navigateurs web. En voulant imiter le fonctionnement de l'application android, nous avons eu le temps d'implémenter les fonctionnalités suivantes :

* Acceuil : Contient les derniers offres du moment
* Navigation : Navigation par catégorie (Informatique, Immobilier, etc.)
* Fiche produit : Fiche déthaillée d'un produit

Nous n'avons pas eu le temps d'implementer la gestion du panier, des commentaires, etc. C'etait les prochaines fonctionnalités a implementer. Le tout utilise bien evidemment les donnees reelles de Cdiscount, ayant ainsi un comportement similaire a tout moment des applications actuelles.

Le résultat est selon nous satisfaisant, avec de bonnes performances, et une interface utilisateur simple et efficace. Nous avons meme tenté d'innover un peu et de faire certaines choses differemment que l'application de base. Au niveau de l'implementation des microservices, nous en sommes a la premiere etape.

## Challenges

Le fonctionnement de Cdiscount est actuellement n'est pas pensé pour les SPA. Par exemple, le tracking interne s'effectue en se basant sur les applications traditionnelles. Cela ne nous a pas derangé durant le développement du projet, mais c'est un point a prendre en compte si nous souhaitons industrialiser cette solution a Cdiscount. Il faudra alors developper une solution permettant l'utilisation du tracking interne avec notre solution.

Nous avons cités les soucis de performance d'AngularJS. Il est vrai que sur certaines animations, un ralentissement pouvait se ressentir. Mais grace des accelerateurs tels que CocoonJS, et avec une bonne combinaisons de librairies tierces, l'application est maintenant d'une tres bonne fluidité. 

Le challenge technique etait important, surtout au niveau de l'implementation des microservices. Deux mois de developpement c'est finalement tres court, mais nous avons pu fournir un gros travail grace aux methodologies appliquees. C'est cependant pour nous un sujet passionnant et sommes satisfaits du resultat actuel.

## Objectifs atteints ?

Lors de la présentation finale du projet, le jury non technique etait satisfait du resultat et pense qu'apres quelques ajout pour concorder aux methodes de Cdiscount (tracking, etc.) pour rendre la solution totalement industrialisable pour Cdiscount, il sera possible de la tester sur des projets transverses, permettant d'utiliser notre expertise du monde du web pour creer des applications mobiles, plutot que de payer un prestataire. 

Le jury technique quant a lui etait satisfait de voir que nos méthodes ont portés leurs fruits et que notre logiciel est de qualité au niveau de son implementation. L'architecture et la methododologie employee correspond totalement sur ce quoi veut tendre Cdiscount.

Notre projet et notre equipe sont finalement une grande inspiration pour Cdiscount et les objectifs ont étés atteints.

TODO conclure sur le projet ici, ou dans la grande conclusion ?

# Conclusion {-}

brain
monolith is dead
c'est pas the choix mais les choix qu'on a fait, du style, du style. on a juste essayé de bien choisir pour avoir comme resultat un logiciel de bonne qualité, maintenable, etc.

TODO

# Notes et plan {-}

## But

Faire une application web moderne et professionnelle.

Faire les bon choix : architecture, technologie et méthodologie

Démonstration avec projet POC

Mot clés : maintenable, assurance qualité

## Notes

* problemes du monolithe
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

TODO parler du probleme du monolithe quelque part ?

isomorphique ?

si j'enleve le javascript au debut, justifier quelque part pourquoi j'utilise ca et que c'est trop bien la version ES6

tourner l'implementation des microservices sous forme d'etapes, la derniere c'est genre avec plein de monitoring, voir meme du scaling auto, mais bon ca c'est de la competence de devops

dans la presentation du projet, dire que la deadline c'est la presentation

# Glossaire {-}

* lien hypertexte
* HTTP
* orienté prototype
* fonction de première classe
* multi-paradigme

[browserMarketShare]: images/browser_share.png
[npmModules]: images/npm_modules.PNG
[repositoryGithub]: images/repository_github.png
[traditionalArchitecture]: images/traditional_architecture.png
[spaArchitecture]: images/spa_architecture.png
[mvc]: images/mvc.png
[Mobile-web-browsing-vs-desktop-web-browsing]: images/Mobile-web-browsing-vs-desktop-web-browsing.jpg
[componentArchitecture]: images/component_architecture.png
[messageBusArchitecture]: images/message_bus_architecture.png
[onionArchitecture]: images/onion_architecture.jpg
[soaArchitecture]: images/soa.png
[microservicesArchitecture]: images/microservices.png
[soap]: images/soap.png
[spaFrameworks]: images/spa_frameworks.jpg
[cycleV]: images/cycle_en_v.png
[xp]: images/xp.png
[testPyramid]: images/test_pyramid.jpg
