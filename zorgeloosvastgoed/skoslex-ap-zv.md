# SKOS-Lex toepassingsprofiel voor (rechts)handelingen


Gebeurtenissen kunnen worden beschreven als begrippen. Ze hebben dan dezelfde kenmerken als begrippen, die ‘objecten’ aanduiden, maar hebben ook nog enkele andere kenmerken.
* Gebeurtenissen worden in wet- en regelgeving beschreven als mogelijke (rechts)handelingen die kunnen plaatsvinden in een bepaald domein. Een voorbeeld is het leveren (overdragen) van het eigendom van een huis (onroerend goed) aan een nieuwe eigenaar in het domein van het notariaal (not).
* Gebeurtenissen maken de dynamiek van de institutionele werkelijkheid zichtbaar. Bij een wijziging in de registratie kan worden gerefereerd aan de gebeurtenis.  Dit helpt om bij een wijziging te begrijpen ‘wat er is gebeurd’. Een voorbeeld is een nieuwe eigenaar van een onroerend goed in de BRK, waarbij wordt vastgelegd dat deze situatie is ontstaan door een overdracht, vererving, boedelverdeling, etc.
* Een gebeurtenis heeft betrekking op een object. Dit object is een ‘gewoon’ begrip. Bij het voorbeeld van de vastlegging van de overdracht in de BRK is het object het eigendom op onroerend goed.
* Institutionele gebeurtenissen of rechtshandelingen kennen een of meerdere actoren, bijvoorbeeld de verkoper en de koper bij de overdracht van een huis. Actoren zijn ook ‘gewone’ begrippen.
* Het vastleggen van een institutionele gebeurtenis gebeurt door een makelaar of door een notaris. Dit wordt een ‘agent’ (in de Engelse betekenis van het woord) genoemd. Dit een een speciaal soort actor. Soms is een 'agent' in de vorm van een bevoegd ambtenaar (notaris) wettelijk nodig om de rechtshandeling te verrichten. Dit is het geval bij een overdracht of bij de vestiging van een hypotheek. Soms is een 'agent' optionaal. Dit is he het geval bij een koopovereenkomst. In de regel wordt die opgesteld door een makelaar, maar dat hoeft niet.


![](skoslex-ap-zv.png)

## Handeling

|!form data#Act!Klasse|Handeling
|----------|------
|Gebruikte term|[skoslex:Act](http://bp4mc2.org/def/skos-lex#Act)
|Uitleg|De klasse van handelingen. Een handeling is een juridische constructie die een verzamelingen activiteiten voorstelt, uitgevoerd door een Actor en op een Object.
|Voorbeeld|De levering van een onroerend goed zoals vastgelegd in een notariele akte (rechtshandeling), Het bouwen van een bouwwerk (handeling)
|Eigenschappen en relaties|[actor](#Act_actor), [agent](#Act_agent), [object](#Act_object), [record](#Act_record), [verwijst naar](#Act_refersTo)


### Relaties

|!form data#Act_actor!Eigenschap|actor
|----------|------
|Gebruikte term|[skoslex:actor](http://bp4mc2.org/def/skos-lex#actor)
|Verwijst naar|[skoslex:Actor](#Actor)
|Uitleg|Actor relateert een handeling aan de actor die de handeling uitvoert
|Voorbeeld|Jan Jansen in zijn rol van koper van een onroerend goed.

|!form data#Act_agent!Eigenschap|agent
|----------|------
|Gebruikte term|[skoslex:agent](http://bp4mc2.org/def/skos-lex#agent)
|Relatie met|[Agent](#LegalAgent)
|Uitleg|Agent relateert een handeling aan de agent die bij de handeling betrokken is
|Voorbeeld|Een notaris die een akte opmaakt bij de koop van een onroerend goed.

|!form data#Act_object!Eigenschap|object
|----------|------
|Gebruikte term|[skoslex:object](http://bp4mc2.org/def/skos-lex#object)
|Verwijst naar|[skoslex:Object](#Object)
|Uitleg|Object relateert een handeling met een object dat ontstaat, wijzigt of wordt gebruikt gedurende een act
|Voorbeeld|Het onroerend goed DPV00 B 1207 als onderwerp van de koop.

|!form data#Act_record!Eigenschap|record
|----------|------
|Gebruikte term|[skoslex:refersTo](http://bp4mc2.org/def/skos-lex#refersTo)
|Verwijst naar|[skoslex:Record](#Record)
|Uitleg|Een record verbindt een Act met het het record dat is gemaakt om de uivoering van de act vast te leggen
|Voorbeeld|De notaris legt de levering van een onroerend goed vast in een akte

|!form data#Act_refersTo!Eigenschap|verwijst naar
|----------|------
|Gebruikte term|[skoslex:refersTo](http://bp4mc2.org/def/skos-lex#refersTo)
|Verwijst naar|[http://bp4mc2.org/def/skos-lex#Norm](http://bp4mc2.org/def/skos-lex#Norm)
|Uitleg|Verwijst naar relateert een norm aan de handeling waarnaar de norm refereert. Zo'n handeling heeft een relatie met de norm, zonder verdere specificatie. Het kan zijn dat de norm bepaalde zaken voorschrift, maar het kan ook zijn dat de handeling een preconditie is, of gewoon benoemd is in de regels.
|Voorbeeld|De verkoper van een onroerend goed moet bij de verkoop ervan kunnen aantonen dat hij eigenaar is.


## Vastlegging

|!form data#Record!Klasse|Record
|----------|------
|Gebruikte term|[skoslex:Record](http://bp4mc2.org/def/skos-lex#Record)
|Uitleg|De klasse van records. Een record is een object dat wordt gemaakt om de uitvoering van een act vast te leggen
|Voorbeeld|Een notariële akte.


### Relaties


## Object

|!form data#Object!Klasse|Object
|----------|------
|Gebruikte term|[skoslex:Object](http://bp4mc2.org/def/skos-lex#Object)
|Uitleg|De klasse van objecten. Een object is een ding (niet een actor) dat ontstaat, wijzigt of gebruikt wordt gedurende een handeling
|Voorbeeld|Het onroerend goed DPV00 B 1207.


## Actor

|!form data#Actor!Klasse|Actor
|----------|------
|Gebruikte term|[skoslex:Actor](http://bp4mc2.org/def/skos-lex#Actor)
|Uitleg|De klasse van actoren. Een actor is een persoon (individu, groep of organisatie) die een handeling uitvoert
|Voorbeeld|Jan Jansen.


## Agent

|!form data#LegalAgent!Klasse|Agent
|----------|------
|Gebruikte term|[skoslex:Agent](http://bp4mc2.org/def/skos-lex#Agent)
|Uitleg|De klasse van agenten. Een agent is een persoon (individu, groep of organisatie) die bij een handeling betrokken is, zonder de handeling feitelijk uit te voeren.
|Voorbeeld|Notaris Pietersen.


## Uri strategie


Agents, objects en actors zijn concepten en volgende de URI opbouw van een concept. Voor Norm geldt het volgende template:
* `http://{domain}/id/norm/{UpperCamelCase(rdfs:label)}`
