# Introduction

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

La facilité de développement de celles-ci ainsi que la performance des moteurs de navigateurs ont propulsé les applications web à un tout autre niveau, dépassant même les limites de la plateforme. En effet, il est désormais possible de faire des application natives mobiles ou de bureau en n'utilisant que des technologies web (Javascript, HTML/CSS, etc) approchant les performances des applications natives. Cela permet d'avoir un coût de développement moindre grâce à la réutilisation de code pour les différentes plateformes. Le web est maintenant la cible de toutes les applications.

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

## Évolution des technologies web

Une application Web utilise un ou plusieurs langages de présentation (généralement HTML/CSS) et est interprétée par un navigateur web. Le langage Javascript, lui aussi interprété par le navigateur, permet de rendre encore plus dynamique l'application en permettant des interactions utilisateurs de plus en plus poussées et rapides. La qualité de l'application repose alors énormément sur la performance et la précision du navigateur et de son moteur de rendu (interpréteur HTML/CSS et moteur Javascript). 

### Évolution des navigateurs web

Un navigateur web est composé d'un moteur de rendu (layout engine) et d'un moteur JavaScript (JavaSript engine). Le moteur de rendu interprète les langages de présentation comme HTML*/CSS*, tandis que le moteur JavaScript interprète de langage de programmation JavaScript. Voici actuellement les principaux navigateurs web ainsi que les moteurs utilisés :

* Google Chrome (moteur de rendu : **Blink**, moteur JavaScript : **V8**)
* Firefox (moteur de rendu : **Gecko**, moteur JavaScript : **Spidermonkey**)
* Internet Explorer (moteur de rendu : **Trident**, moteur JavaScript : **Chakra**)
* Safari (moteur de rendu : **Webkit**, moteur JavaScript : **Nitro**)
* Opéra (moteur de rendu : **Blink**, moteur JavaScript : **V8**)

Les dernières version d'Opéra utilise le projet Chromium et comme base et utilisent donc les même moteur que Google Chrome, lui même basé sur le projet open source Chromium. Microsoft veut à terme remplacer son navigateur Internet Explorer par leur dernier projet en date : Microsoft Edge utilisant leur nouveau moteur de rendu **EdgeHTML** tout en gardant leur moteur JavaScript Chakra.

![Pourcentage d'utilisation des navigateurs en 2015][browserMarketShare]

Avant standardisation, les navigateurs avaient tout d'abord leur implémentation individuelle du DOM. Le DOM (Document Object Model) est maintenant un standard du W3C (organisme de normalisation à but non lucratif) qui décrit une interface indépendante de tout langage de programmation et de toute plate-forme, permettant à des scripts d'accéder ou de mettre à jour le contenu, la structure ou le style de documents HTML et XML*. 

### Apparition et disparition des RIA

D'après Wikipédia : « *Une Rich Internet Application (RIA), ou application Internet riche, est une application Web qui offre des caractéristiques similaires aux logiciels traditionnels installés sur un ordinateur. La dimension interactive et la vitesse d'exécution sont particulièrement soignées dans ces applications Web* ».

Avant que les moteurs Javascript soient aussi avancés, comparés aux applications de bureau, les applications web souffraient d'un manque de performance notoire. Le principe d'une RIA est alors d'installer un plugin sur l'ordinateur permettant d'utiliser les ressources du systeme d'exploitation pour faire fonctionner l'application. L'idée est de rester dans le navigateur mais de ne pas utiliser les capacités de celui-ci, plus limitées. Il etait desormais possible d'utiliser des ressources précédemment innacessibles au navigateur comme la camera, ou encore le GPU* pour le jeu video (* TODO a verifier ?).

Les plus utilises sont les suivants :

* Adobe Flash
* JavaFX
* Microsoft Silverlight

Une etude avec Google Trends (*TODO lien source ?) a montre que depuis 2012, ces plugins sont remplacés au fur et a mesure par des alternatives basées uniquement sur des technologies directement utilisées par le navigateur web (HTML/5, Javascript, etc.). Cela s'explique par l'avancée récente des standards du web. L'intéret est que les utilisateurs des applications web n'ont plus besoin d'installer et maintenir a jour un logiciel tiers lorsqu'ils naviguent sur le web. Adobe Flash lui meme qu'il allait arreter la production de son logiciel pour les mobiles et qu'ils incitaient les developpeurs a se tourner vers des solutions full web.

### Evolution du Javascript

Javascript, aussi appelé ECMAScript est un langage de programmation dynamique. Ce langage a d'abord été créé en 1995 par Brendan Eich. Il a connu depuis de nombreuses améliorations et est a ce jour a la version 6 (on parle d'ECMAScript 6 ou encore d'ECMAScript 2015.). Nous allons voir comment celui-ci a beaucoup evolué, et pourquoi ce langage est devenu l'un des langages les plus utilisés actuellement.

TODO parler plus de ce que propose le langage avant de dire ce qui va pas avec ? asynchrone, first class function, etc.

#### Un langage pas si apprécié

Le langage JavaScript a souvent été un langage de programmation déprécié de beaucoup de développeurs, surtout de ceux ayant l'habitude de programmer avec des langages fortement typés comme Java ou C#. En effet, contrairement a ce que l'on pourrait croire, le JavaScript n'a rien en commun avec le Java. C'est un langage dynamiquement typé* qui pousse a la programmation orienté prototype* (une forme de programmation orienté objet, mais sans classe), ce qui peut paraitre tres deroutant. 

De plus le langage JavaScript a tres longtemps ete associe aux navigateurs web et a la manipulation du DOM* TODO expliquer ce que c'est, la ou avant (Document Object Model). Etant donné que celui-ci a plusieurs implémentations différentes selon le navigateur et le moteur de rendu, devoir manipuler le DOM est alors souvent associé a manipuler le JavaScript avec des standards souvent tres differents. Malgré l'apparition de la librairie tres connue jQuery pour consolider ces differences, le fond du probleme reste inchangé. On devient alors tres dépendant de cette librairie que l'on inclut sur toutes les pages web, ce qui apporte son autre lot de problématiques (taille du site web augmentée, une nouvelle librairie tierce a maintenir a jour, etc.). 

Apres plusieurs sondages, voici une liste des reproches les plus accusés au langage JavaScript, le rendant souvent déroutant :

* Ressemblence forte au Java, mais tellement si différent
* Variables non limités par un scope (bloc de code), permettant ainsi l'utilisation de variables globales (difficile a debuger et a maintenir)
* Le mot-clé "this" a une signification et une référence différente selon le contexte, contrairement aux autres langages ou il a une signification et une valeur fixe
* Les fonctions sont des objets et non des classes (on parle ici d'objet de premiere classe)
* Difficile a debuguer
* Les point-virgules sont optionels
* Les fonctions retournent forcément une valeur (si rien n'est retourné, on récupere la valeur "undefined")
* Compatibilté entre les navigateurs

Pour combler les manques du langage et ses imcompréhensions, de nombreux surlangages sont apparus. Ce sont des langages de plus haut-niveau permettant soit la possibilité d'etre directement interprété par le navigateur, soit la possibilité de se transcrire en JavaScript. Il en existe plusieurs, et les plus connus sont :

#### Des alternatives viables mais pas majoritairement adoptées

* CoffeeScript : Créé en 2009, inspiré par le Python, Ruby, et le Haskell
* TypeScript : Créé par Microsoft en 2012, ajoute la possibilité d'ajouter des variables fortement typées et d'utiliser des classes pour un orienté objet plus "classique"
* Dart : Créé par Google en 2013, ajoute de nombreuses fonctionnalités comme des classes, des interfaces, des classes abstraites, des variables fortement typées, etc.

Ces surcouches ont toutes le meme but : ajouter des fonctionnalités et faciliter le développement web, et apporter des évolutions qui appairaitront plus vite grace au support de la communauté plutot que d'attendre la sortie des nouveaux standards ECMAScript. Cependant, aucun d'eux n'a réellement pu émerger pour devenir la solution idéale pour créer des applications web. Actuellement, elles ont plus le statut d'alternatives viables mais pas majoritairement adoptées. Cela s'explique par plusieurs raisons : 

* Il existe trop de JavaScript. On reste énormément dépendant de ce langage, étant le seul ayant un interpréteur de bonne qualité sur tous les navigateurs. De plus, le développement existant dans ce langage est trop volumineux pour s'en défaire. 
* Beaucoup de développeurs connaissent deja tres bien le JavaScript et ne veulent pas s'en défaire pour apprendre un nouveau langage. Ou peut-etre tout simplement qu'il ne convient pas a toutes les equipes de développement. TODO c'est pas ce que je redis ce qu'il y a en bas, si y'a que 2 trucs, des paragraphes c'est mieux
 
Dans tous les cas, la dépendance au JavaScript est trop forte pour s'en défaire. Voici une citation de Brendan Eich, le créateur du langage Javascript : "You don’t break the web, you don’t get to clean the slate and start over. Anybody who tries is going to fail", qui signifie : "On ne casse pas le web, on ne peut pas tout effacer et tout recommencer. Toute personne essayant échouera". Selon lui, il n'est pas possible refaire le web, la seule solution est de l'améliorer.

Malgré les avantages que proposent ces nouveaux langages, toutes les équipes de développement ne l'adoptent pas forcément. Le fait qu'il existe de nombreuses surcouches montre bien qu'il est difficile de n'avoir qu'un seul standard de développement suitant tous les développeurs. Il est cependant agréable d'avoir le choix, l'intégration de ceux-ci n'étant finalement pas si compliquée. TODO : expliquer pourquoi ? flux de dev gulp tout ca

Le langage Javascript est trop omnipresent et il est difficile de s'en défaire. Est-on vraiment obligé de dépendre d'une librairie tierce, ou un surlangage pour avoir un langage de programmation correct ? Nous allons voir que la version 6 sortie récemment permet de répondre a beaucoup de ces problématiques. 

#### Une version 6 bien évoluée

JavaScript est un langage tres puissant mais tres souvent mal compris et mal utilisé. On dit souvent que c'est un langage a la fois adoré et détesté. Malgré une évolution plus lente que les autres alternatives open source*, les dernieres et futures nouveautés font de celui-ci un langage de plus en plus viable. Nous avons vu précédemment les reproches et les manques de celui-ci. La version 6 a pour but de combler un maximum ceux-ci, et malgré le fait qu'aujourd'hui, pas tous les navigateurs implémentent toutes les fonctionalités définissant cette nouvelle version, il est possible d'écrire du code en ES6, et le transpiler* (TODO, expliquer ce que c'est avant) en ES5 et avoir ainsi un code qui fonctionne sur les navigateurs aujourd'hui et maintenir une version plus moderne de celui-ci. 

Voici donc les nouvelles fonctionnalités accessible avec cette nouvelle version :

* Les Promesses (Promises)

Le concept n'est pas nouveau des développeurs JavaScript, mais n'a jamais été standard car toujours implémenté via des librairies tierces. Une définition standardisée est maintenant disponible. Le but est d'éviter d'avoir "l'enfer du callback*" en ayant la possibilité d'enchainer simplement des fonctions asynchrones. 

* Des variables plus scopées

Le mot clé "var" permet de définir une nouvelle variable en Javascript. Cependant, celui-ci n'assurait pas que la variable reste dans le scope (bloc de code) ou elle est déclarée. Ceci peut porter a confusier et amener a avoir des variables globales sans s'en rendre compte ou d'avoir une variable deja utilisee dans un scope precedent. La nouvelle version arrive avec deux nouveaux mot-clés : "let" et "const", qui permettent de s'assurer que les variables restent bien le scope ou elles sont déclarées.

* Arrow functions

Cela permet d'utiliser des fonctions de type callback* (TODO expliquer ce que c'est, plutot au debut du l'explication du js) tout en gardant la meme référence du mot clé "this". Comme vu precedemment, cela a toujours ete tres confu pour les developpeurs. De plus, elle permettent l'utilisation plus classique des fonction anonymes (lambdas*).

* Les Générateurs

C'est un type de fonction qui permet de suspendre l'activité du bloc ou elle est appelee attendre le résultat de celui-ci (programmation synchrone). Le Javascript poussant au maximum la programmation asynchrone, il n'est pas toujours aisé d'attendre le resultat d'un travail asynchrone, resultant souvant dans "l'enfer du callback". Le nouveau mot cle "yield" nous permet de realiser cela. 

* Les Modules

La gestion des modules en JavaScript n'a jamais eu de définition claire et precise. Deux standards sont arrives (AMD et CommonJS). Le but ici est de standardiser et de les rallier ces deux patterns* non officiels. 

* Classes

L'arrivee de cette version est attendue de beaucoup de developpeurs car il est desormais possible de creer des classes avec le pattern oriente objet classique grace au mot cle "class". Il est cependant toujours possible d'utiliser l'oriente objet de type prototype.

Nous remarquerons que toutes ces nouveautés resolvent beaucoup des reproches cites auparavant et fait du Javascript un langage tres moderne utilisable des aujourd'hui. Les nouveautes ne vont pas finir d'arriver car la prochaine version (ES7) est deja annoncee avec son propre lot de nouveautes. Cette version encore aujourd'hui au stade de proposition. 

#### Des performances plus que correctes

Nous avons vu que le web est énormement dependant du langage JavaScript. La performance des moteurs JavaScript est donc cruciale pour l'avancee des applications web. Les developpeurs des navigateurs web l'ont bien compris et fournissent enormement d'effort a l'optimisation de ceux-ci. La concurrence des navigateurs est telle qu'on la surnomme la "guerre des navigateurs". 

Avant la deuxieme guerre des navigateurs en 2008-2009, les moteurs JavaScript etaient de simples interpreteurs. Le moteur V8 de Google cree en 2008 marque un nouveau tournant avec l'utilisation du JIT (Just In Time) compilation* (compilation juste a temps). Le fait de compiler le code Javascript en code natif avant de l'executer lui permet d'avoir des performances exceptionnelles. Ce moteur a été créé pour les navigateurs mais aussi en tant que moteur autonome, ce qui a permis la création de projets independants des navigateurs (utilisation serveurs, etc.). 

Le JavaScript etant le support obligatoire pour faire des applications web, il est de plus en plus utilise en temps que langage cible. Les surlangages dynamiques vu auparavant le faisaient deja (CoffeeScript, TypeScript, etc.) mais aussi des langages comme le C/C++. Ceci est possible grace au langage asm.js qui est un sous-ensemble de JavaScript. Cela permet d'avoir des performances proches de celles d'un programme natif, car ce sous-ensemble n'utilise pas toutes les capacités des compilateurs JavaScript actuelles dedies aux langages dynamique (garbage collector*, types dynamiques, etc.) mais uniquement le minimum : strictly-typed integers, floats, arithmetic, function calls, and heap accesses* TODO traduction. Couplé avec la librairie Emscripten, il est possible de compiler des programmes natifs pour le web. C'est un compilateur source-a-source, ou un transpileur, qui transforme du code LLVM en asm.js. LLVM est un intermediaire bien connu et de nombreux compilateurs existants permettent deja le passage des principaux langages en LLVM, dont le C/C++. Cela a permis la transformation.

Les langages statiques sont réputes pour avoir des performances plus elevees, ayant une gestion manuelle de la memoire. La possibilite de compiler du code natif dans le monde du web permet d'avoir de meilleures performances seulement 1.5x plus lentes que du natif en plus d'avoir la possibilite de reutiliser du code natif deja existant dans le monde du web. La meilleure demonstration de ces performances est le bien connu moteur de jeu Unreal Engine. Grace a ces technologies, la version 3 de ce moteur de jeu dont le code source est en C++, un portage web a ete cree en 4 jours seulement avec des performances allucinantes. De nombreux autres programmes natifs ont suivi le mouvement (Dosbox, Unity, Vim, SQLite, etc.). 

Le futur du web veut suivre cette lignée et trouver une solution standardisee et efficace qui peut cohabiter avec le JavaScript. La solution est donc de creer un nouveau format plus bas-niveau (proche de la machine, avec gestion manuelle de la memoire, etc.) et proche du langage C. L'idee est d'avoir une solution comme asm.js, mais geree directement par tous les navigateurs. Avoir un nouveau format de fichier permettrait donc de faciliter le passage des langages comme le C au web. Un projet officiel est commence, et se nomme WebAssembly qui a pour but de gerer le format binaire par les navigateurs. Ce projet a ete officialise le 17 Juin 2015 par Brenden Eich, le createur du langage JavaScript. Microsoft, Google, etc. travaillent ensemble pour officiliaser et repandre ce nouveau format de fichier (qui aura l'extension .wasm). Des performances 20x superieures a asm.js sont annoncees. En effet, asm.js ne reste finalement que du JavaScript simplifie. Il n'y a pas les fonctionnalites bas niveau comme, du multithread, SIMD*, etc. Le but ici n'est pas de remplacer JavaScript (nous avons vu auparavant que c'est pour l'instant impossible), mais d'apporter un nouveau langage alternatif. Le web pourra ainsi profiter de meilleur des deux mondes : langage interprete (JavaScript), et langage compile binaire (WebAssembly). Pour resumer voici ce qu'est et va apporter WebAssembly :

* Des performances ameliores : Les points critiques de l'application pourront etre ecrit en WebAssembly et etre utilise comme module en JavaScript
* Un nouveau langage au format binaire
* Des navigateurs plus modernes : Ils pourront comprendre un format binaire plus efficace et leger
* Nouvelle cible de compilation : Les differents langages pourront utiliser ce support. La compilation pour le web sera alors facilitee

#### Une utilisation etendue

Comme vu precedemment, le JavaScript evolue enormement. Ses performances, sa facilite de programmation, et tous les avantages que nous avons vu precedemment ont fait apparaitre des projets independants des navigateurs web. 

Un projet phare est Node.js, projet open source cree en 2009. C'est un environnement multi-plateforme oriente vers les applications reseaux. Node.js utilise la machine virtuelle V8 et la programmation evenementielle (asynchrone) de JavaScript pour creer des serveurs web ultra-performant pouvant tenir une charge importante, sans avoir besoin d'un logiciel externe comme Apache ou Nginx. Cette solution est maintenant utilise par les plus grandes entreprises (Groupon2, SAP3, LinkedIn4,5, Microsoft6,7, Yahoo!8, Walmart, etc) et possede une communaute tres active. Paypal est passe d'un SI entierement en Java a une solution Node.js. Le gestionnaire de paquets de Node.js (npm) est celui possedant le plus grand nombre de module (plus de 80 000 en 2014), faisant de Node.js le langage le plus actif compare aux autres detronant ainsi Java et son gestionnaire de paquets Maven. 

![Modules][npmModules]

De nombreux outils et frameworks sont apparus avec Node.js, dont les plus connus sont :

* Express : Framework web
* Browserify : Un outil pour utiliser les module Node.js dans le navigateur
* Babel : Outil pour transpiler du code JavaScript ES5 en ES6
* Cordova : Plateforme pour creer des application mobiles natives avec du JavaScript
* Grunt et Gulp : Outils d'automatisations de taches
* Bower : Gestionnaire de paquet pour le front-end
* Yeoman : Generateur de fichiers pour accelerer le developpement et la gestion des fichiers
* Node-webkit (NW.js) : Application basee sur Webkit et Node.js permettant la creation d'applications de bureau en utilisant les technologies web
* Mocha : Framework de test unitaire

La popularite de Node.js et des applications web ont fait grimpe en fleche l'utilisation du JavaScript et font de celui-ci le langage le plus actif actuellement. Les donnees du tres connu site web github (gestionnaire le plus utilise de modules open source) le demontre bien. Ainsi, en plus de posseder le plus grand nombres de modules, il contient le plus grand nombre de repository actifs sur github.

![Github][repositoryGithub]

dans l'intro, preciser que toute appli devient appli web maintenant et appli web = Javascript et rien d'autre
asyncrone
callback hell
permet la programmation lisp like (programmation fonctionnelle)

conclusion

fini les ria
parler comme quoi ca trend vraiment avec des chiffres de github
parler vite fait comme quoi ca s'etend a d'autres utilisations

# Notes et plan

* Application Web
    * Description
    * Evolution des technologies web
        * Evolution des navigateurs
        * Apparition et disparition des RIA
        * Evolution du Javascript
            * Un langage pas si apprécié
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

[browserMarketShare]: images/browser_share.png
[npmModules]: images/npm_modules.PNG
[repositoryGithub]: images/repository_github.png
