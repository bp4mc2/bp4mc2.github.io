# Toepassingsprofiel voor provenance informatie


Administratieve aspecten worden bijgehouden conform het de prov ontologie. Hierbij gaat het om wie, wat, wanneer en om wat voor reden heeft vastgelegd of gewijzigd.

* Daartoe worden begrippen en hun metadata, collecties, catalogus, dataset en distributie beschreven in een prov:Entity.
* Op het informatiemodel en het begrippenmodel wordt geen provenance bijgehouden. Dit gebeurt via de abstracte respectievelijk concrete dataset.

Een wijziging in de data wordt vastgelegd in een eigen sd:graph (de verzameling van gewijzigde elementen in 1 transactie). Deze wijziging is afkomstig van een prov:agent. Deze prov:agent dient geautoriseerd te zijn om een dergelijke wijziging uit te voeren. Dit betekent dat de prov:agent ook als foaf:Agent bekend is in een lijst met partijen (feitelijk een lijst van organisaties). Via de relatie dcterms:publisher is duidelijk wie de publicist is van een dataset, en daarmee degene die wijzigingen op de informatie over deze dataset mag doorvoeren.


![](prov-ap-sc.png)

