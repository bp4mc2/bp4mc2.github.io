# Toepassingsprofiel voor informatiemodellen


Een informatiemodel is een beschrijving van de structuur waarin data over dingen die worden aangeduid met begrippen in het semantische model kunnen worden opgeslagen. Het begrippenkader is bruikbaar om met domeineigenaren en data afnemers te communiceren over de inhoud van een registratie. Het vertalen van een begrippenkader naar een samenhangend datamodel is het werkveld van de data architect.

Een hulpmiddel voor het maken van een informatiemodel is het Nederlandse Metamodel voor Informatie Modellen (MIM), (|zie [https://www.geonovum.nl/geo-standaarden/metamodel-informatiemodellering/nationaal-metamodel-voor-informatiemodellering]). Dit model bevat objectklassen, attribuutsoorten, gegevensgroepen, gegevensgroeptypen, generalisaties, relatiesoorten en relatieklassen. Een op basis van het MIM gemaakt informatiemodel kan worden uitgedrukt in UML of in RDF. Met andere woorden het is ‘vormvrij’. Een MIM-klasse is in de regel een realisatie van een begrip. Zo is het de attribuutsoort ‘hoofdadres’ in de BAG de realisatie van het begrip ‘Hoofdadres’ en de objectklasse ‘AdresseerbaarObject’, waarbij een ‘hoofdadres’ hoort de realisatie van het begrip ‘AdresseerbaarObject’. Het begrip ‘AdresseerbaarObject’ gaat over de (talige, dat wil zeggen in taal) betekenis van een adresseerbaar object. De objectklasse is als het ware een ‘bakje’ waarin de data over een adresseerbaar object kan worden opgeslagen.

Bij het maken van een informatiemodel op basis van een begrippenkader kunnen de volgende good practices worden gehanteerd:
* Voor elk objectiveerbaar begrip ontstaat een klasse. Zo bevat de klasse met de naam ‘OpenbareRuimte’ de data over de objecten die worden aangeduid met het begrip met de naam ‘Openbare ruimte’.
* Begrippen die in een waardelijst worden gepubliceerd worden in een relationeel model en in een linked data model anders behandeld:
** In een relationeel model wordt het bovenliggende begrip (waarvan de begrippen in de waardelijst een specialisatie zijn) vertaald naar een klasse, waarvan de instanties een typering krijgen op basis van een element in de waardelijst. Meestal is dit een eigenschap waarbij ‘soort’, ‘type’ of ‘aard’ in de naam voorkomt.
** In een linked data model worden dergelijke begrippen volledig uitgemodelleerd als subtypen van het bovenliggende begrip.
* Voor elk begrip dat een eigenschap is van een klasse en geen verwijzing is naar een ander begrip, ontstaat een data-eigenschap. Zo representeert de eigenschap met de naam ‘bouwjaar’ het begrip met de naam ‘Bouwjaar’.
* Specialisaties, generalisaties, en partitieve relaties in het begrippenmodel worden vertaald naar specialisaties, generalisaties en partitieve relaties in het informatiemodel.
* Voor iedere semantische relatie in het begrippenmodel wordt in het informatiemodel een relatie gedefinieerd (in linked data een object-eigenschap). Een voorbeeld is ‘ligt in’ als relatie tussen de klassen ‘OpenbareRuimte’ en ‘Woonplaats’ als uitwerking van de semantische relatie tussen de begrippen ‘OpenbareRuimte’ en ‘Woonplaats’.

Een op deze manier uitgewerkt voorbeeld van het model van de BAG is te vinden op [https://bag.basisregistraties.overheid.nl/def]. Via #-uri’s kan worden verwezen naar elementen in dit model, bijvoorbeeld [https://bag.basisregistraties.overheid.nl/def/objectklasse/AdresseerbaarObject#hoofdadres]. Dit voorbeeld is beschikbaar als html webpagina, in turtle en als grafische representatie. Dit voorbeeld laat ook mooi zien hoe de uri-strategie voor het beschrijven van een datamodel werkt. Het intypen van bovenstaande URL zal leiden tot de weergave van de pagina [http://bag.basisregistraties.overheid.nl/def/objectklasse/AdresseerbaarObject] (het deel voor de ‘#’). Met andere woorden: de beschrijving van de entiteit ‘Adresseerbaar object’.


![](dm-ap-sc.png)

## Informatiemodel


### Eigenschappen


### Relaties


## model beschrijving


## Uri strategie


Een informatiemodel krijgt een uri conform de beschrijvende asset.


