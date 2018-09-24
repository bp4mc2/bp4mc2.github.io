# SKOS Toepassingsprofiel voor begrippenkaders


Begrippen maken duidelijk welke 'onderwerpen van gesprek' er bestaan. In een stelselcatalogus worden begrippen formeel gedefinieerd, waarbij iedere definitie wordt opgebouwd volgens strikte regels. De essentie is dat elk begrip in een bepaald domein wordt uitgelegd in termen van andere begrippen. Ook die begrippen worden uitgelegd totdat uiteindelijk elk begrip wat uitleg nodig heeft is gedefinieerd. Uiteindelijk blijven de begrippen over waarvan de betekenis als vanzelfsprekend wordt aangenomen. In een logisch model worden dit axioma's genoemd. Zo ontstaat per domein een axiomatisch begrippenkader.

Voor het beschrijven van begrippen wordt SKOS gebruikt. SKOS staat in Nederland op de pas-toe-leg-uit lijst voor overheden.

- Ieder begrip wordt gerepresenteerd door een skos:concept.
- Ieder domein heeft zijn eigen begrippenkader. Het begrippenkader voor een bepaald domein wordt gerepresenteerd door een skos:ConceptScheme.
- Begrippen kunnen worden geordend in collecties. Een collectie wordt gerepresenteerd door een skos:collection.
- Begrippen in verschillende domeinen kunnen worden verbonden via matching mechanismes. Door deze verbinding van begrippen tussen domeinen ontstaat een stelsel van samenhangende begrippenkaders. Dit stelsel van samenhangende begrippenkaders kan worden gezien als de kennisbasis voor een stelselcatalogus.


![](skos-ap-sc.png)

## Begrippenkader

|Eigenschap|Waarde
|----------|------
|Label|Begrippenkader
|Klasse|[skos:ConceptScheme](http://www.w3.org/2004/02/skos/core#ConceptScheme)
|Uitleg|De kennis over de fysieke werkelijkheid wordt beschreven in een talig model, een begrippenmodel.  In een begrippenmodel wordt deze kennis zodanig gestructureerd vastgelegd dat deze door zowel mensen als door computers wordt begrepen.
|Voorbeeld|De thesaurus of taxonomie met alle begrippen in het Kadastrale domein. Deze begrippen vinden hun oorsprong in de Kadasterwet, die beschrijft wat percelen en rechten daarop betekenen.
|Eigenschappen|[top concept](http://bp4mc2.org/profiles/skos-ap-sc#ConceptScheme_hasTopConcept), [label](http://bp4mc2.org/profiles/skos-ap-sc#ConceptScheme_label)


### Eigenschappen

|Eigenschap|Waarde
|----------|------
|Label|top concept
|Eigenschap|[skos:hasTopConcept](http://www.w3.org/2004/02/skos/core#hasTopConcept)
|Verwijst naar|[skos:Concept](http://www.w3.org/2004/02/skos/core#Concept)
|Uitleg|Een concepten schema kan concepten bevatten die die het meest generiek zijn in een hiërarchie van specialisaties/generalisaties.
|Voorbeeld|Het concept 'Zakelijk recht' als meest generieke concept voor 'Eigendom', 'Opstal', 'Erfpacht', etc.

|Eigenschap|Waarde
|----------|------
|Label|label
|Eigenschap|[rdfs:label](http://www.w3.org/2000/01/rdf-schema#label)
|Uitleg|Een begrippenkader heeft een voor mensen leesbare naam. Spaties en diacritische tekens zijn  toegestaan.
|Voorbeeld|Het schema dat het domein regelgeving beschrijft heeft als label 'Regelgeving'.
|Min card.|1


## Begrip

|Eigenschap|Waarde
|----------|------
|exampple|het begrip 'Perceel' in de BRK
|Label|Begrip
|Klasse|[skos:Concept](http://www.w3.org/2004/02/skos/core#Concept)
|Uitleg|Een begrip is een idee of notitie, een eenheid van denken, een onderwerp van gesprek.
|Eigenschappen|[lijkt op breder](http://bp4mc2.org/profiles/skos-ap-sc#Concept_broadlyMatches), [vergelijkbaar met](http://bp4mc2.org/profiles/skos-ap-sc#Concept_closelyMatches), [uitleg](http://bp4mc2.org/profiles/skos-ap-sc#Concept_comment), [bestaat uit](http://bp4mc2.org/profiles/skos-ap-sc#Concept_consistsOf), [geschreven bron](http://bp4mc2.org/profiles/skos-ap-sc#Concept_dcsource), [bron op het web](http://bp4mc2.org/profiles/skos-ap-sc#Concept_dctsource), [definitie](http://bp4mc2.org/profiles/skos-ap-sc#Concept_definition), [domein](http://bp4mc2.org/profiles/skos-ap-sc#Concept_domain), [redactionele opmerking](http://bp4mc2.org/profiles/skos-ap-sc#Concept_editorialNote), [exact gelijk aan](http://bp4mc2.org/profiles/skos-ap-sc#Concept_exactlyMatches), [generalisatie van](http://bp4mc2.org/profiles/skos-ap-sc#Concept_generalisationOf), [gerelateerd aan](http://bp4mc2.org/profiles/skos-ap-sc#Concept_isRelatedTo), [label (begrip)](http://bp4mc2.org/profiles/skos-ap-sc#Concept_label), [herkomst (begrip)](http://bp4mc2.org/profiles/skos-ap-sc#Concept_metadata), [lijkt op smaller](http://bp4mc2.org/profiles/skos-ap-sc#Concept_narrowlyMatches), [onderdeel van](http://bp4mc2.org/profiles/skos-ap-sc#Concept_partOf), [voorkeursterm](http://bp4mc2.org/profiles/skos-ap-sc#Concept_prefLabel), [herkomst (begrip)](http://bp4mc2.org/profiles/skos-ap-sc#Concept_provenance), [toelichting](http://bp4mc2.org/profiles/skos-ap-sc#Concept_scopeNote), [gerelateerd aan](http://bp4mc2.org/profiles/skos-ap-sc#Concept_seeAlso), [specialisatie van](http://bp4mc2.org/profiles/skos-ap-sc#Concept_specialisationOf), [alternatieve aanduiding](http://bp4mc2.org/profiles/skos-ap-sc#Concept_synonym)
