# Sauvegarde des emails en fichiers

Ce projet permet de sauvegarder les emails récupérés par un web scrapper
(réglé pour aller chercher toutes les adresses mail des mairies du val d'oise).

## Utilisation

Lancez simplement le fichier `app.rb`.

## Fonctionnement

Le fichier de lancement `app.rb` va créer un web scrapper grace à la classe `Scrapper`
et enregistrer le résultat de la recherche dans le type de fichier de votre choix :

En format 

- `json`
- `csv`
- `google spreadsheet`

## Schema

![Diagramme de séquence](https://mermaid.ink/img/eyJjb2RlIjoic2VxdWVuY2VEaWFncmFtXG5cbnBhcnRpY2lwYW50IGFwcC5yYlxucGFydGljaXBhbnQgU2NyYXBwZXJcbnBhcnRpY2lwYW50IHdlYl9zaXRlXG5wYXJ0aWNpcGFudCBjc3ZfZmlsZVxucGFydGljaXBhbnQganNvbl9maWxlXG5wYXJ0aWNpcGFudCBnb29nbGVfc3ByZWFkc2hlZXRcblxuYXBwLnJiLT4-U2NyYXBwZXI6IEdldCBlbWFpbHNcblNjcmFwcGVyLT4-d2ViX3NpdGU6IEVtYWlscz9cbndlYl9zaXRlLS0-PlNjcmFwcGVyOiBFbWFpbHMhXG5TY3JhcHBlci0-PmFwcC5yYjogV2hhdCBmb3JtYXQgP1xuYXBwLnJiLS0-PlNjcmFwcGVyOiBmb3JtYXQ6IGNzdiB8fCBqc29uIHx8IGdvb2dsZV9zcHJlYWRzaGVldFxuU2NyYXBwZXItPj5TY3JhcHBlcjogUHJvY2Vzcy4uLlxuU2NyYXBwZXItLT4-Y3N2X2ZpbGU6IEVtYWlsc19pbl9jc3ZcblNjcmFwcGVyLS0-Pmpzb25fZmlsZTogRW1haWxzX2luX2pzb25cblNjcmFwcGVyLS0-Pmdvb2dsZV9zcHJlYWRzaGVldDogRW1haWxzX2luX3NwcmVhZHNoZWV0IiwibWVybWFpZCI6e30sInVwZGF0ZUVkaXRvciI6ZmFsc2V9)
