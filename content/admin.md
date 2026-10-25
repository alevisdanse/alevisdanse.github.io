---
title: "admin"
layout: "enmarkdown"
---

# Page d'administration du site

Cette page est réservée à l'administration du site. Si vous êtes venu par hasard, merci de
[revenir à l'accueil](/). Même si de toute façon il n'y a rien de secret ici...

## Autres pages admin

* [Logothèque](/logotheque/)

## Notes techniques

Les sources de ce site web sont hébergées par la plateforme GitHub. Les
sources sont dans le [projet
alevisdanse](https://github.com/alevisdanse/alevisdanse.github.io),
qui n'est pas public mais uniquement accessible avec le compte GitHub
[alevisdanse](https://github.com/alevisdanse). Le site web est réalisé
concrètement avec le générateur de contenu Hugo. À chaque modification des sources, le site web est regénéré automatiquement, comme indiqué dans le fichier .github/workflows/hugo.yml

Les fichiers sources essentiels du site sont les suivants. Ce sont ces
fichiers qui doivent être régulièrement modifiés pour ajouter une
nouvelle danse apprise dans un cours, ajouter une entrée dans
l'agenda, ajouter une annonce spéciale sur la page d'accueil, etc. Les
modifications se font dans la format Markdown, qui est très facile à
modifier.

* content/_index.md : la page d'accueil

* content/agenda.md : l'agenda

* content/debutants-2627.md : la page du cours débutants de la saison 2026-2027

* content/XXX-2627.md : la page du cours niveau XXX de la saison 2026-2027

* content/XXX-YYZZ.md : la page du cours niveau XXX de la saison 20YY-20ZZ

* data/chores.yml : la base de données de toutes les chorégraphies, non pas au format Markdown mais au format YAML.

Ainsi, ajouter par exemple une nouvelle danse apprise dans le cours «
novices » consiste à ajouter les infos de la danse dans la base de
données (sauf si elle y est déjà!) et à l'ajouter dans a liste du
fichier content/novices-2627.md

Les autres fichiers et répertoires sont:

* content/toutes.md : la page "Toutes les chorégraphies". Cette page
  se met à jour dès que la base de données est modifiée.

* layout/ : le répertoire des « layouts » qui définissent le rendu des pages Markdown en html

* static/images/ : le répertoire des images, documents PDF, etc.
