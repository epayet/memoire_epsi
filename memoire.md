# Introduction

Lors de mon cursus d'ingénierie informatique a l'epsi Bordeaux, j'ai eu l'occasion de travailler en alternance durant 3 ans à Cdiscount (de 2012 a 2015). Leader dans le domaine du e-commerce en France, Cdiscount est une entreprise qui se doit d'etre a la pointe de la technologie. Durant ces 3 ans, j'ai pu travailler dans plusieurs équipes ainsi que sur de nombreux projets tres interessants, ce qui m'a permis de m'améliorer dans de nombreux domaines.

Travaillant d'abord essentiellement sur des applications web internes, mon travail etait tout d'abord essentiellement le développement d'applications. Gagnant de l'expérience et de la confiance aupres de mes superieurs, mon travail de tous les jours a progressivement évolué. En plus du développement, j'ai eu du temps dégagé pour faire de la recherche sur les nouvelles technologies, et transmettre le résultat de mes recherches sous forme d'atelier en communauté de type coding dojo*.

Le monde du web est un mondu qui évolue tres vite et est difficile a suivre. De nombreux frameworks* et nouvelles technique/architectures apparaissent régulierement. Il n'est pas aisé de trouver la solution idéale lorsque l'on commence le développement d'une nouvelle application web de faire les bons choix technique allouant aisance de dévelloppement, assurance qualité, maintenance allégée du code, etc. En combinant mes recherches et mes compétences d'analyse et de développement, j'ai maintenant une bonne vision sur les possibilités et les choix techniques a faire en fonction des besoins de l'application.

Cela s'est ressenti non seulement dans la vie des applications sur lesquelles j'etais en charge, mais aussi dans mon métier. J'ai ainsi pu intégrer une équipe orientée R&D (Recherche et Développement), pour devenir un expert technique et évoluer du métier du développeur vers le métier d'architecte.

Le but de ce mémoire est de passer en revue ces possibilités, d'offrir des propositions d'architecture logicielle et des choix de technologies, basées sur mon expériences et le résultat de mes recherches. A la fin de celui-ci, nous serons capables de faire un choix sur la technologie et l'architecture a mettre en place, en fonction des besoins fonctionnels pour creer une application web, mais aussi une application mobile.

Nous verrons d'abord les besoins de créer une application web et l'évolution au fil des années de celles-ci. Nous verrons ensuite les différentes architectures modernes et utilisées sur le marché ainsi que les technologies actuelles répondant a ces problématiques. Nous aurons l'occasion de voir plusieurs exemples, comprenant la possibilite de faire aussi une application mobile via les applications que j'ai moi-meme develepe au sein de Cdiscount.

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

## Description

D'apres wikipedia : "une application web (aussi appelée web app, de l'anglais) est une application manipulable grâce à un navigateur web". 

# Une architecture moderne

# Technologies actuelles correspondantes

# Un choix difficile

# Projet de démonstration

# Un gain financier

# Conclusion

# Notes

* Application Web
    * Description
        * Interets
        * Limites
    * Evolution
        * Evolution des moteurs (V8)
        * Passage par flash and co
        * Passage aux SPA
    * JavaScript everywhere
        * Server
        * Cordova
        * Client lourd
* Tendances Architectures actuelles
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
