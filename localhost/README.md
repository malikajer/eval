# ipi-java-3x0-eval
Evaluation pour les modules 310 à 330

L'objectif de cette évaluation est de créer une application web autour du jeu de données fourni dans le fichier `Localhost-2020_01_09_20_18_26-dump.sql`. Ce fichier contient la base officielle des codes postaux de France. Chaque ligne présente le code commune de l'INSEE, le nom de la commune, le code postal, le libellé utilisé pour les envois postaux, une information supplémentaire (typiquement les lieux-dits), la latitude et la longitude du *centre* de la commune. A noter qu'il n'y a pas unicité sur le code commune ou le code postal car il peut y avoir plusieurs fois la même ligne avec une colonne *Ligne_5* différente. Exemple ST DENIS, code INSEE 97411.
Vous allez développer une application web hybride combinant une application web JSP permettant d'interagir avec les données et un service web REST exposant un certain nombre de fonctionnalités qui pourront être utilisées par d'autres applications (applications mobiles par exemple).

# Préparation

- Intégrer le dump dans votre serveur de base de données MySQL local.
- Initialiser un projet Spring Boot à l'aide de l'assistant https://start.spring.io avec les dépendances nécessaires pour faire du web et pour se connecter à une BDD MySQL. Dezipper les fichiers obtenus dans votre reposiory Git. Commiter et pusher.
- Créer une branche `eval` à partir de `master`. C'est cette branche que vous utiliserez pour travailler.

# Couche model et repository

- Ajouter les propriétés nécessaires au niveau du fichier `application.properties` pour se connecter à la base de données des communes.
- Créer la ou les entités nécessaires pour pouvoir gérer les données de la base.
- Créer le ou les repository correspondants.

# Couche service 

Ajouter le ou les services nécessaires permettant d'avoir les fonctionnalités suivantes : 
- Récupérer de manière paginée les communes avec possibilité de tri
- Récupérer une commune par id
- Récupérer les communes par code INSEE
- Récupérer les communes par code postal
- Récupérer les communes par nom (correspondance partielle sans prendre en compte la casse)
- Récupérer le nombre de codes INSEE distincts
- Récupérer le nombre de codes postaux distincts
- Créer une nouvelle commune. Attention en cas de code INSEE existant déjà en base, il faudra qu'il y ait correspondance avec le nom et le code postal, et que la nouvelle ligne ait un attribut *Ligne_5* différent de ceux existants déjà.
- Modifier une commune existante (même contrainte que précédemment).
- Supprimer une commune
- Récupérer les communes situées dans un périmètre d'environ X kilomètres autour d'un point (localisé par sa latitude et longitude). Vous pourrez utiliser la règle suivante (volontairement simplifiée) : 1 degré en latitude = 111 km et 1 degré en longitude = 77 km. Pour faire plus simple vous pouvez vérifier les communes présentes dans un carré de 2X par 2X km dont le centre est le point fourni. Si vous voulez essayer de trouver toutes les communes à X km à la ronde (plus complexe donc facultatif), vous aurez besoin de cette fonction :
```java
public Long getDistance(Double lat1, Double long1, Double lat2, Double long2){
        Double lat1 = Math.toRadians(lat1);
        Double lng1 = Math.toRadians(long1);
        Double lat2 = Math.toRadians(lat2);
        Double lng2 = Math.toRadians(long2);

        double dlon = lng2 - lng1;
        double dlat = lat2 - lat1;

        double a = Math.pow((Math.sin(dlat/2)),2) + Math.cos(lat1) * Math.cos(lat2) * Math.pow(Math.sin(dlon/2),2);

        double c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1-a));

        return Math.round(6371.009 * c);
    }
```
 
# Couches controller
- Développer les contrôleurs REST selon les règles du standard REST permettant d'effectuer les actions présentées dans la section précédente. Préfixer tous les URLs par /api. Exemple `/api/communes/5`
- Développer les contrôleurs classiques et les JSP correspondantes pour fournir une application web fonctionnelle permettant à l'utilisateur d'effectuer les actions présentées dans la section précédente. Petit bonus, lors de la création d'une commune, dès que l'utilisateur rentre un code INSEE, vous pouvez chercher la commune avec ce code et récupérer le nom de la commune et le code postal pour les mettre directement dans les champs de formulaire
- Vous pouvez afficher une carte dans la vue détail d'une commune à l'aide de ce code 
```html
<iframe width="650" height="450" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://www.openstreetmap.org/export/embed.html?bbox=${commune.longitude-0.10}%2C${commune.latitude-0.5}%2C${commune.longitude+0.10}%2C${commune.latitude+0.5}&amp;layer=mapnik&amp;marker=${commune.latitude}%2C${commune.longitude}" style="border: 1px solid black"></iframe>
```
- Gérer le mieux possible les erreurs que ce soit au niveau du service REST (bon codes réponses HTTP) et au niveau de l'application web JSP (affichage de message d'erreur).


# Remarques

Le look de vos JSP ne sera pas évalué mais n'hésitez pas à utiliser des frameworks CSS si vous le souhaitez (vous pouvez récupérer l'exemple du tp 330 avec l'inclusion de Bootstrap)
