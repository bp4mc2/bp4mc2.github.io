# DQV Toepassingsprofiel voor datakwaliteit


Datakwaliteit


![](dqv-ap-sc.png)

## Kwaliteitsdimensie

|!form data!Klasse|Kwaliteitsdimensie
|----------|------
|Gebruikte term|[dqv:Dimension](http://www.w3.org/ns/dqv#Dimension)


## Kwaliteitsindicator

|!form data!Klasse|Kwaliteitsindicator
|----------|------
|Getypeerd als|[dqv:Dimension](http://www.w3.org/ns/dqv#Dimension)
|Eigenschappen en relaties|[Specialisatie van](http://bp4mc2.org/profiles/dqv-ap-sc#QualityIndicator_broader)


## Meting

|!form data!Klasse|Meetfunctie
|----------|------
|Gebruikte term|[dqv:Metric](http://www.w3.org/ns/dqv#Metric)
|Eigenschappen en relaties|[Verwachtte datatype](http://bp4mc2.org/profiles/dqv-ap-sc#Metric_expectedDataType), [in dimensie](http://bp4mc2.org/profiles/dqv-ap-sc#Metric_inDimension), [Label](http://bp4mc2.org/profiles/dqv-ap-sc#Metric_label)


### Eigenschappen

|!form data!Eigenschap|Label
|----------|------
|Gebruikte term|[rdfs:label](http://www.w3.org/2000/01/rdf-schema#label)
|Datatype|[Tekst](http://www.w3.org/2001/XMLSchema#string)
|Uitleg|Een meting kent een voor mensen leesbaar label


### Relaties

|!form data!Eigenschap|Verwachtte datatype
|----------|------
|Gebruikte term|[dqv:expectedDataType](http://www.w3.org/ns/dqv#expectedDataType)
|Verwijst naar|[rdfs:Datatype](http://www.w3.org/2000/01/rdf-schema#Datatype)
|Uitleg|Het te verwachten datatype van de meting

|!form data!Eigenschap|in dimensie
|----------|------
|Gebruikte term|[dqv:inDimension](http://www.w3.org/ns/dqv#inDimension)
|Relatie met|[Kwaliteitsindicator](http://bp4mc2.org/profiles/dqv-ap-sc#QualityIndicator)
|Uitleg|Een meting betreft een kwaliteitsdimensie


## Kwaliteitsmeetwaarde

|!form data!Klasse|Kwaliteitsmeetwaarde
|----------|------
|Gebruikte term|[dqv:QualityMeasurement](http://www.w3.org/ns/dqv#QualityMeasurement)
|Eigenschappen en relaties|[is meetwaarde van](http://bp4mc2.org/profiles/dqv-ap-sc#QualityMeasurement_isMeasurementOf), [waarde](http://bp4mc2.org/profiles/dqv-ap-sc#QualityMeasurement_value)


### Eigenschappen

|!form data!Eigenschap|waarde
|----------|------
|Gebruikte term|[dqv:value](http://www.w3.org/ns/dqv#value)
|Datatype|[rdfs:Literal](http://www.w3.org/2000/01/rdf-schema#Literal)
|Uitleg|De uitkomst van de meting, de waarde
|Min card.|1
|Max card.|1


### Relaties

|!form data!Eigenschap|eigenschap
|----------|------
|Gebruikte term|[sh:property](http://www.w3.org/ns/shacl#property)
|Relatie met|[Specificatie van de eis](http://bp4mc2.org/profiles/dqv-ap-sc#QualityPolicySpec)
|Uitleg|De regel behorende bij de kwaliteitseis
|Min card.|1
|Max card.|1

|!form data!Eigenschap|ernst
|----------|------
|Uitleg|De ernst van de kwaliteitseis
|Max card.|1

|!form data!Eigenschap|betreft
|----------|------
|Verwijst naar|[dqv:Metric](http://www.w3.org/ns/dqv#Metric)
|Uitleg|De meting waar deze kwaliteitseis voor geldt
|Min card.|1
|Max card.|1


### Relaties

|!form data!Eigenschap|is meetwaarde van
|----------|------
|Gebruikte term|[dqv:isMeasurementOf](http://www.w3.org/ns/dqv#isMeasurementOf)
|Verwijst naar|[dqv:Metric](http://www.w3.org/ns/dqv#Metric)
|Uitleg|Geeft de meting aan waar deze meetwaarde een uitkomst van is
|Min card.|1
|Max card.|1


## Kwaliteitseis

|!form data!Klasse|Kwaliteitseis
|----------|------
|Getypeerd als|[sh:NodeShape](http://www.w3.org/ns/shacl#NodeShape)
|Eigenschappen en relaties|[melding](http://bp4mc2.org/profiles/dqv-ap-sc#QualityPolicy_message), [eigenschap](http://bp4mc2.org/profiles/dqv-ap-sc#QualityPolicy_property), [ernst](http://bp4mc2.org/profiles/dqv-ap-sc#QualityPolicy_severity), [betreft](http://bp4mc2.org/profiles/dqv-ap-sc#QualityPolicy_targetNode)


### Eigenschappen

|!form data!Eigenschap|melding
|----------|------
|Datatype|[Tekst](http://www.w3.org/2001/XMLSchema#string)
|Uitleg|De melding die gerapporteerd wordt als de meting niet voldoet aan de kwaliteitseis


