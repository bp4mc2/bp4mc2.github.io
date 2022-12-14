# Klassen
##Gegevensgroeptype
|Definitie|Een groep van met elkaar samenhangende attribuutsoorten. Een gegevensgroeptype is altijd een type van een gegevensgroep.|
##Relatieklasse
|Definitie|Een relatiesoort met eigenschappen.|
##Attribuutsoort
|Definitie|De typering van gelijksoortige gegevens die voor een objecttype van toepassing is.|
##View
|Definitie|Een groepering van objecttypen die gespecificeerd zijn in een extern informatiemodel en vanuit het perspectief van het eigen informatiemodel inzicht geeft welke gegevens van deze objecttypen relevant zijn binnen het eigen informatiemodel.|
##Domein
|Definitie|Een groepering van constructies die een semantisch samenhangend gedeelte van een informatiemodel beschrijven.|
##Enumeratiewaarde
|Definitie|Een gedefinieerde waarde, in de vorm van een eenmalig vastgesteld constant gegeven.|
##Objecttype
|Definitie|De typering van een groep objecten die binnen een domein relevant zijn en als gelijksoortig worden beschouwd.|
##Extern
|Definitie|Een groepering van constructies die een externe instantie beheert en beschikbaar stelt aan een informatiemodel en die in het informatiemodel ongewijzigd gebruikt worden.|
##Datatype
|Definitie|Een beschrijving van de structuur waaraan een waarde, oftewel de data zelf, aan moet voldoen.|
##Externe koppeling
|Definitie|Een associatie waarmee vanuit het perspectief van het eigen informatiemodel een objecttype uit het ‘eigen’ informatiemodel gekoppeld wordt aan een objecttype van een extern informatiemodel. De relatie zelf hoort bij het ‘eigen’ objecttype.|
##Constraint
|Definitie|Een constraint is een conditie of een beperking, die over een of meerdere modelelementen uit het informatiemodel geldt.|
##Relatierol
|Definitie|De benaming van de manier waarop een object deelneemt aan een relatie met een ander object.|
##Referentielijst
|Definitie|De representatie van een lijst met een opsomming van de mogelijke domeinwaarden van een attribuutsoort, die buiten het model in een externe waardenlijst worden beheerd. De domeinwaarden in de lijst kunnen in de loop van de tijd aangepast, uitgebreid, of verwijderd worden, zonder dat het informatiemodel aangepast wordt (in tegenstelling tot bij een enumeratie). De representatie bevat een aantal kenmerken, die overgenomen zijn van de specificatie van de externe waardelijst.|
##Generalisatie
|Definitie|De typering van het hiërarchische verband tussen een meer generiek en een meer specifiek modelelement van hetzelfde soort, waarbij het meer specifieke modelelement eigenschappen van het meer generieke modelelement overerft. Dit verband is alleen gedefinieerd voor objecttypen en datatypen.|
##Codelijst
|Definitie|De representatie van een lijst met een opsomming van de mogelijke domeinwaarden van een attribuutsoort, die buiten het model in een externe waardenlijst worden beheerd. De domeinwaarden in de lijst kunnen in de loop van de tijd aangepast, uitgebreid, of verwijderd worden, zonder dat het informatiemodel aangepast wordt (in tegenstelling tot bij een enumeratie). De representatie bevat geen kenmerken, voor alle kenmerken wordt verwezen naar de specificatie van de externe waardelijst.|
##Relatiesoort
|Definitie|De typering van het structurele verband tussen een object van een objecttype en een (ander) object van een ander (of hetzelfde) objecttype.|
##Primitief datatype
|Definitie|Een primitief datatype is een datatype met een eenvoudige basisstructuur, oftewel enkelvoudig en zonder gelaagdheid.|
##Keuze constraint
|Definitie|Een conditie met een opsomming van meerdere modelelementen, waarbij er maar van één tegelijkertijd sprake kan zijn.|
##Keuze
|Definitie|Een opsomming van meerdere modelelementen, waarbij er maar van één tegelijkertijd sprake kan zijn.|
##Informatiemodel
|Definitie|De groepering van alle modelelementen waaruit het informatiemodel is opgebouwd. Het informatiemodel als geheel.|
##Modelelement
|Definitie|Een modelelement uit het Metamodel voor Informatie Modellering (MIM)|
##Data element
|Definitie|Een onderdeel/element van een Gestructureerd datatype die als type een datatype heeft.|
##Referentie element
|Definitie|Een eigenschap van een object in een referentielijst in de vorm van een gegeven.|
##Relatierol doel
|Definitie|De relatierol die de rol beschrijft van het doel van de relatie.|
##Gestructureerd datatype
|Definitie|Specifiek benoemd datatype dat de structuur van een gegeven beschrijft, samengesteld uit minimaal twee elementen die in samenhang betekenisvol zijn.|
##Relatierol bron
|Definitie|De relatierol die de rol beschrijft van de bron van de relatie.|
##Package
|Definitie|Een package is een benoemde en begrensde verzameling/groepering van modelelementen.|
##Gegevensgroep
|Definitie|Een typering van een groep van gelijksoortige gegevens die voor een objecttype van toepassing is.|
##Enumeratie
|Definitie|Een datatype waarvan de mogelijke waarden limitatief zijn opgesomd in een statische lijst.|
# Eigenschappen (relaties)
##aggregatietype
Aanduiding of het objecttype die de eigenaar is van een relatie het doel van relatie ziet als een samen te voegen onderdeel die bij het objecttype hoort.
##equivalent
Geeft aan dat een mim metamodel-element equivalent is met een meta-element uit een Linked Data vocabulaire
##relatiemodelleringstype
Aanduiding van een in MIM gedefinieerd alternatief voor een modelleringswijze, en welke keuze hierbij is gemaakt.
##type
Het datatype waarmee waarden van dit modelelement worden vastgelegd.
##gegevensgroep
De binding van een gegevensgroep als groep van eigenschappen aan een objecttype of gegevensgroeptype.
##data element
De binding van een data element aan een gestructureerd datatype.
##doelkeuze
De binding van een keuze uit relatiedoelen aan een objecttype.
##modelelement

##constraint
De binding van een constraint aan een modelelement.
##relatierol

##authentiek
Aanduiding of het kenmerk een authentiek gegeven betreft.
##datatypekeuze
De binding van een keuze uit datatypen aan een attribuutsoort.
##supertype
De binding van een supertype aan een subtype middels een generalisatie.
##referentie element
De binding van een referentie element aan een referentielijst.
##bron
Aanduiding van het bronobject in een relatie tussen objecten. Een bronobject heeft middels een relatiesoort een relatie met een doelobject.
##attribuut
De binding van een attribuutsoort als eigenschap aan een objecttype.
##attribuutkeuze
De binding van een keuze uit attributen aan een attribuutsoort of keuze.
##doel
Aanduiding van het gerelateerde objecttype die het eindpunt van de relatie aangeeft. Naar objecten van dit objecttype wordt verwezen.
##bevat modelelement

##waarde
De binding van een enumeratiewaarde aan een enumeratie.
##begrip
Verwijzing naar een begrip, vanuit een modelelement, waarmee wordt aangegeven op welk begrip, of begrippen, het informatiemodel element is gebaseerd.
##gegevensgroeptype
De binding van een gegevensgroeptype als waardetype aan een gegevensgroep.
##subtype
Het objecttype dat een specialisatie is van een (ander) objecttype.
# Eigenschappen (attributen)
##Indicatie materiële historie
Indicatie of de materiële historie van het kenmerk van het object te bevragen is.
##locatie
Als het type van het attribuutsoort een waardenlijst is, dan wordt hier de locatie waar deze te vinden is opgegeven.
##informatiedomein
Aanduiding van het functionele domein waartoe het informatiemodel behoort.
##kwaliteit
Beschrijving van de mate waarin in de registratie opgenomen objecten van het desbetreffende type volledig, juist, actueel, nauwkeurig en betrouwbaar zijn.
##alias
De weergave van de naam van een modelelement in natuurlijke taal (niet technisch).
##formeel patroon
Zoals patroon, formeel vastgelegd, uitgedrukt in een formele taal die door de computer wordt herkend.
##indicatie classificerend
Indicatie dat een attribuutsoort het objecttype waar het bij hoort classificeert in (sub)typen.
##informatiemodeltype
De beschrijving van de aard van het informatiemodel, hoe het geïnterpreteerd moet worden.
##kardinaliteit
De kardinaliteit geeft aan hoeveel keer waarden van dit kenmerk van een object kunnen voorkomen bij een object van het betreffende objecttype.
##specificatie formeel
De beschrijving van de constraint in een formele specificatietaal, in OCL
##begripsterm
Verwijzing naar een begrip in de vorm van een term, vanuit een modelelement, waarmee wordt aangegeven op welk begrip, of begrippen, het informatiemodel element is gebaseerd.
##indicatie abstract object
Een indicatie die aangeeft of er objecten kunnen bestaan die getypeerd worden als zijnde objecten (instanties) van alleen dit objecttype. Een abstract objecttype moet altijd de generalisatie zijn van één of meerdere objecttypes die niet abstract zijn.
##MIM taal
De aanduiding van de taal die gebruikt is voor de modelelementen.
##specificatie tekst
De specificatie van de constraint in normale tekst.
##mogelijk geen waarde
Aanduiding dat van een aspect geen waarde is geregistreerd, maar dat onduidelijk is of de waarde er werkelijk ook niet is.
##code
De in een registratie of informatiemodel aan de enumeratiewaarde toegekend unieke code
##patroon
De verzameling van waarden die gegevens van deze attribuutsoort kunnen hebben, oftewel het waardenbereik, uitgedrukt in een specifieke structuur.
##datum opname
De datum waarop het modelelement is opgenomen in het informatiemodel.
##MIM extensie
De aanduiding van een extensie op MIM.
##Indicatie formele historie
Indicatie of de formele historie van het kenmerk van het object bijgehouden wordt en te bevragen is.
##herkomst
De registratie of het informatiemodel waaraan het modelelement ontleend is dan wel de eigen organisatie indien het door de eigen organisatie toegevoegd is.
##identificerend
Een aanduiding dat een kenmerk of een combinatie van kenmerken van een objecttype uniek identificerend is voor alle objecten in de populatie van objecten van dit objecttype, of de aanduiding dat een referentie element uniek identificerend is voor alle lijst items in een referentielijst.
##naam
De naam van een modelelement.
##MIM versie
De versie van de MIM specificatie die gebruikt is om het informatiemodel in uit te drukken.
##kardinaliteit relatie bron
De kardinaliteit relatie bron geeft bij een relatiesoort aan hoeveel instanties van het bron objecttype in een relatie met één instantie van het doel objecttype verbonden kunnen zijn.
##herkomst definitie
De registratie of het informatiemodel waaruit de definitie is overgenomen dan wel een aanduiding die aangeeft uit welke bronnen de definitie is samengesteld.
##populatie
Voor objecttypen die deel uitmaken van een (basis)registratie betreft dit de beschrijving van de exemplaren van het gedefinieerde objecttype die in de desbetreffende (basis)­registratie voorhanden zijn.
##lengte
De aanduiding van de lengte van een gegeven, volgens de aangegeven notatiewijze.
##unidirectioneel
De richting van een relatie, welke betekenis geeft aan de relatie vanuit het perspectief van de eigenaar van de relatie.
##definitie
De beschrijving van de betekenis van dit modelelement.
##indicatie afleidbaar
Aanduiding dat gegeven afleidbaar is uit andere attribuut- en/of relatiesoorten.
##toelichting
Een inhoudelijke toelichting op de definitie, ter verheldering of nadere duiding.

