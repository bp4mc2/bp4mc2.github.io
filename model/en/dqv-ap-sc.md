# DQV Application profile for data quality


Data quality


![](dqv-ap-sc.png)

## Quality dimension

|!form data!Klasse|Quality dimension
|----------|------
|Used term|[dqv:Dimension](http://www.w3.org/ns/dqv#Dimension)


## Quality indicator

|!form data!Klasse|Quality indicator
|----------|------
|Properties en relations|[http://bp4mc2.org/profiles/dqv-ap-sc#QualityIndicator_broader](http://bp4mc2.org/profiles/dqv-ap-sc#QualityIndicator_broader)


## Metric

|!form data!Klasse|Quality metric
|----------|------
|Used term|[dqv:Metric](http://www.w3.org/ns/dqv#Metric)
|Properties en relations|[http://bp4mc2.org/profiles/dqv-ap-sc#Metric_inDimension](http://bp4mc2.org/profiles/dqv-ap-sc#Metric_inDimension), [http://bp4mc2.org/profiles/dqv-ap-sc#Metric_label](http://bp4mc2.org/profiles/dqv-ap-sc#Metric_label), [http://bp4mc2.org/profiles/dqv-ap-sc#Metric_expectedDataType](http://bp4mc2.org/profiles/dqv-ap-sc#Metric_expectedDataType)


### Properties


### Relations

|!form data!Eigenschap|Waarde
|----------|------
|Used term|[dqv:expectedDataType](http://www.w3.org/ns/dqv#expectedDataType)

|!form data!Eigenschap|Waarde
|----------|------
|Used term|[dqv:inDimension](http://www.w3.org/ns/dqv#inDimension)
|Related with|[Quality indicator](http://bp4mc2.org/profiles/dqv-ap-sc#QualityIndicator)

|!form data!Eigenschap|Waarde
|----------|------
|Used term|[rdfs:label](http://www.w3.org/2000/01/rdf-schema#label)


## Quality measurement

|!form data!Klasse|Waarde
|----------|------
|Used term|[dqv:QualityMeasurement](http://www.w3.org/ns/dqv#QualityMeasurement)
|Properties en relations|[http://bp4mc2.org/profiles/dqv-ap-sc#QualityMeasurement_isMeasurementOf](http://bp4mc2.org/profiles/dqv-ap-sc#QualityMeasurement_isMeasurementOf), [http://bp4mc2.org/profiles/dqv-ap-sc#QualityMeasurement_value](http://bp4mc2.org/profiles/dqv-ap-sc#QualityMeasurement_value)


### Properties


### Relations

|!form data!Eigenschap|Waarde
|----------|------
|nodeKind|[http://www.w3.org/ns/shacl#BlankNode](http://www.w3.org/ns/shacl#BlankNode)
|Used term|[sh:property](http://www.w3.org/ns/shacl#property)
|Related with|[http://bp4mc2.org/profiles/dqv-ap-sc#QualityPolicySpec](http://bp4mc2.org/profiles/dqv-ap-sc#QualityPolicySpec)
|Min card.|1
|Max card.|1

|!form data!Eigenschap|Waarde
|----------|------
|Max card.|1

|!form data!Eigenschap|Waarde
|----------|------
|Refers to|[dqv:Metric](http://www.w3.org/ns/dqv#Metric)
|Min card.|1
|Max card.|1


### Relations

|!form data!Eigenschap|Waarde
|----------|------
|Used term|[dqv:isMeasurementOf](http://www.w3.org/ns/dqv#isMeasurementOf)
|Refers to|[dqv:Metric](http://www.w3.org/ns/dqv#Metric)
|Min card.|1
|Max card.|1

|!form data!Eigenschap|Waarde
|----------|------
|Used term|[dqv:value](http://www.w3.org/ns/dqv#value)
|Min card.|1
|Max card.|1


## Quality policy

|!form data!Klasse|Quality policy
|----------|------
|Properties en relations|[http://bp4mc2.org/profiles/dqv-ap-sc#QualityPolicy_targetNode](http://bp4mc2.org/profiles/dqv-ap-sc#QualityPolicy_targetNode), [http://bp4mc2.org/profiles/dqv-ap-sc#QualityPolicy_severity](http://bp4mc2.org/profiles/dqv-ap-sc#QualityPolicy_severity), [http://bp4mc2.org/profiles/dqv-ap-sc#QualityPolicy_message](http://bp4mc2.org/profiles/dqv-ap-sc#QualityPolicy_message), [http://bp4mc2.org/profiles/dqv-ap-sc#QualityPolicy_property](http://bp4mc2.org/profiles/dqv-ap-sc#QualityPolicy_property)


### Properties

|!form data!Eigenschap|Waarde
|----------|------
|Datatype|[Text](http://www.w3.org/2001/XMLSchema#string)


