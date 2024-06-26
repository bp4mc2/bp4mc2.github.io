# PROV Toepassingsprofiel voor provenance informatie


Formeel/juridische geldigheid en administratieve aspecten worden bijgehouden conform het de prov ontologie. Hierbij gaat het om wie, wat, wanneer en om wat voor reden heeft vastgelegd of gewijzigd.

* Daartoe worden de metadata beschreven in een prov:Entity.
* De stelselcatalogus zelf is de meest generieke provenance entiteit. Daarmee worden alle wijzigingen in de catalogus beschrijving bewaard.
* Ook van de beschrijvingen van datasets (dataset, dataset versie en dataset product) en (dataset) distributies wordt provenance bijgehouden.
* Voor begrippenmodellen, waardelijsten en informatiemodellen, die worden beschreven als een asset, geldt dat provenance wordt bijgehouden voor de asset beschrijving en voor de asset distributie beschrijving.
* Voor begrippen en collecties wordt per begrip en collectie provenance bijgehouden.

De provenance kent 2 aspecten:
* De formele en juridische geldigheid.
** De formele geldigheid wordt vastgelegd in de formele bekendmakingsdatum. Daarbij kan ook de formele status worden vastgelegd, waarvoor de EU waardelijst voor statussen (adms:status) wordt gehanteerd.
** De juridische geldigheid in tijd en plaats kan worden vastgelegd in een tijdsperiode en een verwijzing naar een geografisch gebied.
** Voor begrippen en collecties van begrippen die hun oorsprong vinden in de onderliggende wet- en regelgeving geldt dat deze tijdsperiode de periode is zoals in die wet- en regelgeving is vastgelegd en het geografisch gebied het gebied is waarover het betreffende bevoegd gezag zeggenschap heeft.
* De administratief/huishoudelijke aspecten.
** Een wijziging in de data wordt vastgelegd in een eigen sd:graph (de verzameling van gewijzigde elementen in 1 transactie).
** Deze wijziging wordt doorgevoerd door een prov:agent.
** Deze prov:agent dient geautoriseerd te zijn om een dergelijke wijziging uit te voeren. Dit betekent dat de prov:agent ook als foaf:Agent bekend is in een lijst met partijen (feitelijk een lijst van organisaties). Via de relatie dcterms:publisher is duidelijk wie de publicist is van een dataset, en daarmee degene die wijzigingen op de informatie over deze dataset mag doorvoeren.


![](prov-ap-sc.png)

## Metadata

|!form data#Entity!Klasse|Metadata
|----------|------
|Gebruikte term|[prov:Entity](http://www.w3.org/ns/prov#Entity)
|Uitleg|Metadata van een versie van een entiteit kan worden beschreven.
|Voorbeeld|De juridische geldigheid en/of de adnimistratieve housekeeping (provenance) gegevens van een entiteit
|Eigenschappen en relaties|[wijzingsnotitie](#Entity_changeNote), [datum bekendgemaakt](#Entity_isIssued), [geldig in tijd](#Entity_isValidDuring), [geldig in gebied](#Entity_isvalidWithin), [status](#Entity_status)


### Eigenschappen

|!form data#Entity_changeNote!Eigenschap|wijzingsnotitie
|----------|------
|Gebruikte term|[skos:changeNote](http://www.w3.org/2004/02/skos/core#changeNote)
|Datatype|[Tekst](http://www.w3.org/2001/XMLSchema#string)
|Uitleg|De reden van een versie en andere aandachtspunten bij een versie kunnen worden toegelicht.
|Voorbeeld|De toelichting is uitgebreid vanwege een onduidelijkheid.

|!form data#Entity_isIssued!Eigenschap|datum bekendgemaakt
|----------|------
|Gebruikte term|[dcterms:issued](http://purl.org/dc/terms/issued)
|Datatype|[Datum/tijd](http://www.w3.org/2001/XMLSchema#dateTime)
|Uitleg|Een versie kan bekend worden gemaakt vanaf een bepaald moment.
|Voorbeeld|21/10/2017 20:21
|Max card.|1


### Relaties

|!form data#Entity_isValidDuring!Eigenschap|geldig in tijd
|----------|------
|Gebruikte term|[dcterms:temporal](http://purl.org/dc/terms/temporal)
|Verwijst naar|[dcterms:PeriodOfTime](#PeriodOfTime)
|Uitleg|Een versie kan formeel/juridisch geldig zijn gedurende een periode.
|Voorbeeld|22/10/2017 - 
|Max card.|1

|!form data#Entity_isvalidWithin!Eigenschap|geldig in gebied
|----------|------
|Gebruikte term|[dcterms:spatial](http://purl.org/dc/terms/spatial)
|Verwijst naar|[dcterms:Location](#Location)
|Uitleg|Een versie kan formeel/juridisch geldig zijn in een geografisch gebied.
|Voorbeeld|gemeente Apeldoorn
|Max card.|1

|!form data#Entity_status!Eigenschap|status
|----------|------
|Gebruikte term|[adms:status](http://www.w3.org/ns/adms#status)
|Relatie met|[Status waardelijst](#Status)
|Uitleg|Een versie heeft een administratieve status op basis van de ADMS waardenlijst.
|Voorbeeld|Completed
|Min card.|1
|Max card.|1


## Status

|!form data#Status!Klasse|Status waardelijst
|----------|------
|Uitleg|Een versie kan een administratieve status hebben die wordt ontleend aan de ADMS waardenlijst.
|Voorbeeld|Completed
|Waardelijst|[http://purl.org/adms/status/1.0](http://purl.org/adms/status/1.0)


## Tijdsperiode

|!form data#PeriodOfTime!Klasse|Tijdsperiode
|----------|------
|Gebruikte term|[dcterms:PeriodOfTime](http://purl.org/dc/terms/PeriodOfTime)
|Uitleg|Een periode kan worden aangeduid met een startdatum en einddatum. 
|Voorbeeld|22/10/2017 - 01/08/2018
|Eigenschappen en relaties|[einde](#PeriodOfTime_end), [start](#PeriodOfTime_start)


### Eigenschappen

|!form data#PeriodOfTime_end!Eigenschap|einde
|----------|------
|Gebruikte term|[dcmiperiod:end](http://dublincore.org/documents/2006/04/10/dcmi-period/end)
|Datatype|[Datum/tijd](http://www.w3.org/2001/XMLSchema#dateTime)
|Uitleg|Een periode eindigt op een bepaalde dataum. Deze datum kan onbekend (leeg) zijn.
|Voorbeeld|01/08/2018
|Max card.|1

|!form data#PeriodOfTime_start!Eigenschap|start
|----------|------
|Gebruikte term|[dcmiperiod:start](http://dublincore.org/documents/2006/04/10/dcmi-period/start)
|Datatype|[Datum/tijd](http://www.w3.org/2001/XMLSchema#dateTime)
|Uitleg|Een periode start op een bepaalde datum. Deze datum kan onbekend (leeg) zijn.
|Voorbeeld|22/10/2017
|Max card.|1


## Geografisch gebied

|!form data#Location!Klasse|Geografisch gebied
|----------|------
|Gebruikte term|[dcterms:Location](http://purl.org/dc/terms/Location)
|Uitleg|De beschrijving van het geografisch gebied waarin een versie geldig is
|Voorbeeld|de gemeente Apeldoorn


## Data graaf

|!form data#ProvenanceGraph!Klasse|Data graaf
|----------|------
|Gebruikte term|[sd:Graph](http://www.w3.org/ns/sparql-service-description#Graph)
|Uitleg|De data graaf omvat zowel de concrete data (gerepresenteerd door een prov:Entity), als de metadata van de prov:Entity, dat wil zeggen: een sd:Graph
|Voorbeeld|Alle wijzigingen en nieuwe data die op 8 augustus 2018 in een keer zijn geladen.
|Eigenschappen en relaties|[is doorgevoerd door](#ProvenanceGraph_attributedTo), [wijzigingsnotitie](#ProvenanceGraph_changeNote), [registratiemoment](#ProvenanceGraph_generatedAtTime)


### Eigenschappen

|!form data#ProvenanceGraph_changeNote!Eigenschap|wijzigingsnotitie
|----------|------
|Gebruikte term|[skos:changeNote](http://www.w3.org/2004/02/skos/core#changeNote)
|Datatype|[Tekst](http://www.w3.org/2001/XMLSchema#string)
|Uitleg|De reden van een set samenhangende wijzigingen kan worden toegelicht.
|Voorbeeld|Alle definities zijn aangepast overeenkomstig de nieuwe wet op de BAG.

|!form data#ProvenanceGraph_generatedAtTime!Eigenschap|registratiemoment
|----------|------
|Gebruikte term|[prov:generatedAtTime](http://www.w3.org/ns/prov#generatedAtTime)
|Datatype|[Datum/tijd](http://www.w3.org/2001/XMLSchema#dateTime)
|Uitleg|De datum en tijd van de administratieve handeling kan worden bewaard. Daardoor is altijd terug te halen wat op welk tijdstip aan informatie bekend was.
|Voorbeeld|21/10/2017 20:21


### Relaties

|!form data#ProvenanceGraph_attributedTo!Eigenschap|is doorgevoerd door
|----------|------
|Gebruikte term|[prov:wasAttributedTo](http://www.w3.org/ns/prov#wasAttributedTo)
|Verwijst naar|[prov:Agent](#Agent)
|Uitleg|De persoon of organisatie die de wijziging heeft (laten) doorvoeren kan worden vastgelegd
|Voorbeeld|Het Kadaster


## Agent (provenance)

|!form data#Agent!Klasse|Agent (provenance)
|----------|------
|Gebruikte term|[prov:Agent](http://www.w3.org/ns/prov#Agent)
|Uitleg| De persoon of organisatie die verantwoordelijk is voor een activiteit, de creatie van een entity of een activiteit van een ander kan worden vastgelegd.
|Voorbeeld|Het Ministerie van BZK
|Eigenschappen en relaties|[uitgevoerd namens](#Agent_OnBehalfOf)


### Relaties

|!form data#Agent_OnBehalfOf!Eigenschap|uitgevoerd namens
|----------|------
|Gebruikte term|[prov:actedOnBehalfOf](http://www.w3.org/ns/prov#actedOnBehalfOf)
|Verwijst naar|[prov:Organization](#Organization)
|Uitleg|Een persoon of organisatie kan opereren namens een andere persoon of organisatie.
|Voorbeeld|overheid:Rijkswaterstaat


## Persoon (provenance)

|!form data#ProvenancePerson!Klasse|Persoon (provenance)
|----------|------
|Gebruikte term|[prov:Person](http://www.w3.org/ns/prov#Person)
|Uitleg|Een agent (provenance) kan een mens zijn.
|Voorbeeld|Jan Jansen


## Software agent

|!form data#ProvenanceSoftwareAgent!Klasse|Software agent
|----------|------
|Gebruikte term|[prov:SoftwareAgent](http://www.w3.org/ns/prov#SoftwareAgent)
|Uitleg|Een agent (provenance) kan een geautomatiseerde routine zijn.
|Voorbeeld|Scheduled routine x


## Organisatie (provenance)

|!form data#Organization!Klasse|Organisatie (provenance)
|----------|------
|Gebruikte term|[prov:Organization](http://www.w3.org/ns/prov#Organization)
|Uitleg|Een agent (provenance) kan een organisatie zijn.
|Voorbeeld|Rijkswaterstaat


## Geregistreerde Agent

|!form data#FoafAgent!Klasse|Agent (foaf)
|----------|------
|Gebruikte term|[foaf:Agent](http://xmlns.com/foaf/0.1/Agent)
|Uitleg| De persoon of organisatie die verantwoordelijk is voor een dataset.
|Voorbeeld|Het Ministerie van BZK


## Organisatie (foaf)

|!form data#FoafOrganization!Klasse|Organisatie (foaf)
|----------|------
|Gebruikte term|[foaf:Organization](http://xmlns.com/foaf/0.1/Organization)
|Uitleg| De organisatie die verantwoordelijk is voor een dataset.
|Voorbeeld|Het Ministerie van BZK


## Organisatie (org)

|!form data#OrgOrganization!Klasse|Organisatie (org)
|----------|------
|Gebruikte term|[org:Organization](http://www.w3.org/ns/org#Organization)
|Uitleg|De organisatie zoals opgenomen in de formele lijst met OIN nummers.
|Voorbeeld|345879873452
|Eigenschappen en relaties|[heeft OIN](#OrgOrganization_oin)


### Eigenschappen

|!form data#OrgOrganization_oin!Eigenschap|heeft OIN
|----------|------
|Gebruikte term|[org:identifier](http://www.w3.org/ns/org#identifier)
|Datatype|[Tekst](http://www.w3.org/2001/XMLSchema#string)
|Uitleg|De organisatie die verantwoordelijk is voor een dataset is opgenomen in de formele lijst met OIN nummers.
|Voorbeeld|345879873452
|Min card.|1
|Max card.|1


## Uri strategie


Provenance hoort altijd bij een entiteit.
* De gegevens over een entiteit zoals die op een bepaald moment geldig is kunnen worden opgevraagd via de doc-uri, aangevuld met yyyy/mm/dd
#* De gegevens over een locatie zoals die op een bepaalde plaats geldig is kunnen worden opgevraagd via de doc-uri, aangevuld met {UpperCamelCase (rdfs:label van de Locatie)}


