Dans le domaine de l'informatique nous entendons, de plus en plus parler du Cloud aussi bien pour des offres grand public que des offres professionnelles (avec par exemple le Cloud Computing).

KeepAlert, le spécialiste bordelais de la surveillance de marques sur Internet, doit, pour son activité, traiter et stocker les données légales de plusieurs milliers de sites internet par jour.

Pour se démarquer de la concurrence, il faut non seulement être le plus exhaustif possible dans la détection des sites litigieux, mais également proposer toujours plus de fonctionnalités.

Ces spécificités font que les besoins matériels nécessaires au fonctionnement optimal de la plateforme sont toujours plus importants;
si bien qu'il est aujourd'hui nécessaire de repenser la façon dont elle est construite, 
sous peine de ne plus être capable de pouvoir répondre aux attentes de nos clients concernant les fonctionnalités et les délais de livraison sur le long terme.

Avec leurs offres de Clouds publics, les géants du net comme Microsoft, Google ou Amazon mettent à disposition une partie du matériel nécessaire à leur activité,
ainsi que le savoir faire accumulé en termes d'infrastructure, de maintenance, de sécurité et de centres de données, le tout à prix raisonnable.

L'utilisation de ces clouds permet donc l'accès à un nombre de serveurs virtuellement illimité (la limite est si haute que l'atteindre dans un cas d'utilisation normal est très improbable).

Ces caractéristiques du Cloud encouragent l'utilisation de la scalabilité horizontale pour répondre à des charges de travail toujours plus importantes.

Ce sont toutes ces spécificités qui encouragent actuellement la migration de certaines parties des environnements informatiques des entreprises.

Mais si ces spécificités apportent des avantages, elles apportent également des risques qui doivent être maîtrisés.

Tout au long de ce document, je vais vous conter l'histoire de la migration d'une partie de notre plateforme de surveillance de marques sur Internet vers le Cloud d'Amazon.

Cette histoire comprend:

 * La découverte du Cloud d'Amazon et d'une (petite) partie des nombreux services proposés,
 * La découverte de technologies adaptées à la scalabilité horizontale,
 * Les changements induits dans notre plateforme pour utiliser ces nouvelles capacités,
 * L'impact financier de cette migration,
 * Les forces, faiblesses de cette nouvelle solution.

Tout en expliquant ces différents points, les réponses à certaines questions sont fournies.

 > Que doit on retenir de cette expérience ? \newline
 > Le Cloud est-il rentable dans notre cas ? \newline
 > Nos attentes en termes de capacité de calcul, de stockage, sont-elles remplies ? \newline
 > Les risques maîtrisables ? \newline
 > Comment s'annonce l'avenir de ce type de service ?
