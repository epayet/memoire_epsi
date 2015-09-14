Depuis maintenant près de deux ans, je travaille en alternance chez Systonic, principalement dans le service KeepAlert, spécialisé dans la surveillance de marques sur internet, 
et de manière plus ponctuelle pour ProDomaines, registraire de noms de domaines.

Les nombreuses missions de recherche et développement qui m'ont été confiées au cours de ces deux années m'ont amené à utiliser certains services du Cloud d'Amazon,
par exemple dans le cadre de l'exploitation des données du CommomCrawl\footnote{\url{http://commoncrawl.org/}}, stockées et librement accessibles dans le cloud d'Amazon.

Les services Cloud d'Amazon, Amazon Web Services (abrégé \acrshort{aws}) ont enregistré plus de 42 baisses de tarif entre le lancement de la plateforme en 2006 et Avril 2014\cite{Amazon_baisse_prix} \cite{Amazon_baisse_prix_42}.
Ces baisses de prix successives rendent l'offre Cloud du géant américain de plus en plus intéressante pour les entreprises.

Étant donné que nous avions déjà eu à utiliser certains des services Amazon, et que par conséquent nous connaissions déjà certains aspects de la plateforme,
nous avons décidé d'évaluer les aspects financiers et pratiques d'une migration d'une partie de notre infrastructure de production dans le Cloud \acrshort{aws}, puis de l'effectuer.

En effet, le nombre de plus en plus important d'utilisateurs des services Cloud démontre l'attrait des entreprises pour de telles offres.
L'utilisation d'un cloud semble être l'avenir pour au moins une certaine catégorie d'utilisation.
Notre objectif a donc été tout d'abord de déterminer la pertinence d'une telle migration.

Cette migration a également été pour nous l'occasion de changer de technologie de stockage d'une certaine partie de nos données,
en utilisant certains services d'\acrshort{aws} et de nouvelles bases de données dites \gls{nosql}.

Tout au long de ce mémoire je vais vous présenter les différents aspects et étapes de cette migration, les avantages, les inconvénients, les coûts, en bref, tous les aspects.
