# Versionering

Dit document beschrijft de versionering van modellen. In het bijzonder modellen van begrippen (begrippenkaders) en domeinmodellen (ontologieën).

## begrippen

![](begrippen.png)

De volgende begrippen zijn relevant met betrekking tot versionering:

- Een **Model** is een abstracte representatie van een model door de tijd heen. Zo kun je het hebben over het *begrippenkader NEN3610*, zonder dat je spreekt over een specifieke versie. De naam van een dergelijk model bevat over het algemeen ook geen versienummer of datum: het gaat immers over het model door de tijd heen. Soms wordt in de naam de "geboortedatum" of "geboortejaar" van het model opgenomen: de datum waarop het model voor het eerst werd gepubliceerd.
- Een **Modelversie** is een specifieke versie van een model, zoals dit model op een bepaald moment in de tijd bestaat. Een modelversie is dus altijd een "snapshot" een "foto" van het model op een zeker tijdstip. Zo'n versie kan een status hebben (bv: "in concept" of "gepubliceerd"). De versiedatum van een dergelijke modelversie is de datum waarop de versie zijn huidige vorm heeft gekregen (feitelijk: datum laatste wijziging). Een modelversie kan ook een release- of publicatiedatum hebben: de datum waarop deze modelversie daadwerkelijk beschikbaar is gekomen, gepubliceerd in zijn definitieve vorm.
- Een **Modelelement** is een abstracte representatie van een modelelement door de tijd heen. Bijvoorbeeld het begrip "Gebouw" in een begrippenkader of de eigenschap "bouwjaar" in een ontologie. Merk op dat er vele beschrijvingen door de tijd heen kunnen zijn van deze modelelementen. Het blijft hetzelfde begrip, klasse of eigenschap zolang de betekenis ervan gelijk is gebleven. Uiteindelijk is het een keuze van de modelleur om te bepalen wanneer echt niet meer sprake is van hetzelfde begrip. Zie [https://www.w3.org/TR/vocab-dcat-2/](https://www.w3.org/TR/vocab-dcat-2/) voor een voorbeeld hoe omgegaan wordt met verschillende beschrijving van dezelfde modelelementen. De naam van een modelelement bevat (dus) ook nooit een versienummer of versiedatum.
- De **Laatste versie** van een model is een bijzondere modelversie, namelijk de laatst gepubliceerde versie: de actuele, geldige.

## Identificaties
Voorkomens van de hierboven genoemde begrippen hebben allemaal een identificatie (URI). Daarbij geldt de volgende conventie:

- De URI van een **Model** is gebaseerd op de **Namespace** van dit model. Een namespace is feitelijk de "naamruimte" binnen het model: alle "namen" van de modelelementen die onderdeel zijn van dit model moeten uniek zijn. Aangezien er maar 1 model is binnen deze naamruimte, is de URI van het model vaak gelijk of vrijwel gelijk aan de namespace.
- De URI van een **Modelversie** is gebaseerd op de URI van het model, met daarbij ook ruimte voor een versienummer en/of versiedatum.
- De URI van een **Modelelement** is gebaseerd op de **Namespace** van het model en de naam van het modelelement. Hier zit dus GEEN versienummer of versiedatum bij (!)
- De URI van de **Laatste versie** is gelijk niets anders dan de URI van de betreffende Modelversie.

Voorbeelden:
```
<http://modellen.geostandaarden.nl/def/NEN3610> a owl:Ontology. #Een model
<http://modellen.geostandaarden.nl/def/NEN3610-2010-05-13> a owl:Ontology. #Een modelversie
<http://modellen.geostandaarden.nl/def/NEN3610#Gebouw> a owl:Class. #Een modelelement (klasse)

<http://definities.geostandaarden.nl/NEN3610> #Een model (van begrippen)
<http://definities.geostandaarden.nl/NEN3610-2010-05-13> #Een modelversie
<http://definities.geostandaarden.nl/NEN3610/id/begrip/Gebouw> a skos:Concept #Een modelelement (begrip)
<http://definities.geostandaarden.nl/NEN3610/id/conceptschema/NEN3610> a skos:ConceptScheme #Een ander modelelement (begrippenkader)
```

In bovenstaande voorbeelden is ook de URI strategie meegenomen:
- Een ontologie eindigt op "def/<naam ontologie"
- De elementen in de ontologie volgen de structuur "/def/<naam ontologie>#<naam element"
- Een model van begrippen kent een eigen Namespace
- Elementen in dat model zijn te herkennen via de "id/begrip/<naam begrip>" opbouw.

Merk op: een skos:ConceptScheme is een *Modelelement* geen Model of Modelversie! Vaak wordt dit in het spraakgebruik wel door elkaar gebruikt, maar aan de opbouw van de identificatie is zichtbaar dat er een verschil is.

## Content negotiation
In [Cool URI's for the web](https://www.w3.org/TR/cooluris/) wordt uitgelegd hoe content negotiation werkt. Het komt er op neer dat bij het opvragen van dezelfde URL de content die daadwerkelijk wordt teruggegeven door de webserver kan verschillen, afhankelijk van wie er om vraagt (een mens via de browser: HTML, of een machine via een web API: JSON of XML of, ...).

Bij het opvragen van een model *kun* je een extensie meegeven: in dat geval krijg je altijd de content die voldoet aan de betreffende extensie. Zonder extensie zal sprake zijn van content negotiation.

Voorbeelden:
- `<http://modellen.geostandaarden.nl/def/NEN3610-2010-05-13>` resulteert in een HTML weergave van deze modelversie, als de URL in de browser is ingevoerd;
- `<http://modellen.geostandaarden.nl/def/NEN3610-2010-05-13>` resulteert in een JSON-LD weergave van deze modelversie, als de Web API dit vroeg (via de http header);
- `<http://modellen.geostandaarden.nl/def/NEN3610-2010-05-13.ttl>` resulteert in een Turtle (TTL) weergave van deze modelversie.

## Vindplaatsen (locaties)
Modellen kunnen op veel plekken te vinden zijn, maar minimaal zijn ze vindbaar via hun identificatie. Daarbij is er een verschil tussen ontologieën en begrippenkaders.

### Domeinmodellen (ontologie)
De primaire vindplaats van een domeinmodel is de URI van het model. Op dat moment wordt de **Laatste versie** van het model getoond. Content negotiation wordt toegepast om te bepalen welke variant getoond wordt.

Andere versie van het model kunnen gevonden worden door de URI van de betrefende modelversie in te voeren.

Aangezien bij ontologieën gebruik wordt gemaakt van een "#"-URI zal de vindplaats van een modelelement hierbinnen (een klasse, een eigenschap) niet verschillen: op het moment dat de volledige URI van een klasse wordt opgevraagd zal (in geval van HTML) het volledige model worden getoond, en zal de browser automatisch naar de plek in het document gaan waar deze klasse wordt beschreven.

Voorbeeld:
- `<http://modellen.geostandaarden.nl/def/NEN3610#Gebouw>` resulteert in de pagina:
- `<http://modellen.geostandaarden.nl/def/NEN3610>`.. waarbij de browser automatisch zal gaan naar het onderdeel "Gebouw".

Het is tegenwoordig gebruikelijk om *naast* de beschrijving van het model (het document dat de modelversie bevat) *ook* nog een meer uitgebreide beschrijving van het model te hebben (dit is de feitelijke "standaard"). Zie ook de DCAT standaard. Het model is te vinden via [http://www.w3.org/ns/dcat](http://www.w3.org/ns/dcat), terwijl de standaard gedocumenteerd is op [https://www.w3.org/TR/vocab-dcat-2/](https://www.w3.org/TR/vocab-dcat-2/).

### Model van begrippen (begrippenkaders)
Voor begrippen geldt dat vaak de begrippen niet in één document worden getoond, maar in een catalogus waarbij slechts een enkel modelelement wordt getoond. Maar ook in deze gevallen kan de originele URI gebruikt worden. Een specifiek beschrijving van een begrip kan dan getoond worden door de modelversie opbouw te gebruiken:

Voorbeelden:
- `<http://definities.geostandaarden.nl/NEN3610>` resulteert in een overzicht van alle begrippen in de actuele versie van het begrippenkader;
- `<http://definities.geostandaarden.nl/NEN3610/id/begrip/Gebouw>` resulteert in de actuele beschrijving van het begrip;
- `<http://definities.geostandaarden.nl/NEN3610-2010-05-13/id/begrip/Gebouw>` resulteert in de beschrijving van het begrip zoals in de versie van 2010-05-13 aanwezig was.
- `<http://definities.geostandaarden.nl/NEN3610/id/conceptschema/NEN3610>` resulteert in een beschrijving van het begrippenkader zelf

Voor begrippen geldt dat de "id"-URI de identificatie van het begrip zelf is, terwijl de "doc"-URI de daadwerkelijk pagina, beschrijving, van het begrip is. Je ziet dan ook vaak dat er een redirect plaatsvindt:

- `<http://definities.geostandaarden.nl/NEN3610/id/begrip/Gebouw>` wordt:
- `<http://definities.geostandaarden.nl/NEN3610/doc/begrip/Gebouw>`

Niet altijd is bovenstaande functionaliteit (goed) aanwezig in de publicatietooling. In plaats daarvan kan ook een catalogus-URI worden getoond (zie sectie hieronder).

### Alternatieve vindplaatsen (catalogi)
Vaak worden domeinmodellen, maar zeker begrippenkaders, gepubliceerd in een catalogus. Op dat moment kan er een **Alias URI** aanwezig zijn die de URI van de modelbeschrijving *in* de catalogus voorstelt. Hoe deze URI er uit ziet, is afhankelijk van de gebruikte catalogus en wordt hier verder niet meer behandeld.

Het kan zijn dat de hierbovengenoemde URI's niet daadwerkelijk in de catalogus worden getoond, maar dat sprake is van een *redirect* waardoor in de browser URL balk alleen de catalogus-URI zichtbaar is en niet de originele URI. Dit wordt afgeraden. Het is namelijk ook mogelijk om dit "onder water" te doen, waardoor dit niet zichtbaar is en de originele URI wordt getoond. Soms is dit echter technisch niet (of slechts heel lastig) te realiseren in de technologie van de catalogus. In zo'n geval is het aan te raden om **expliciet** in de catalogus de echte, originele URI van het modelelement te tonen.
