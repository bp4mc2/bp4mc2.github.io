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
|Typed as|[dqv:Dimension](http://www.w3.org/ns/dqv#Dimension)
|Properties en relations|[Specialization of](http://bp4mc2.org/profiles/dqv-ap-sc#QualityIndicator_broader)


## Metric

|!form data!Klasse|Quality metric
|----------|------
|Used term|[dqv:Metric](http://www.w3.org/ns/dqv#Metric)
|Properties en relations|[Expected datatype](http://bp4mc2.org/profiles/dqv-ap-sc#Metric_expectedDataType), [in dimension](http://bp4mc2.org/profiles/dqv-ap-sc#Metric_inDimension), [Label](http://bp4mc2.org/profiles/dqv-ap-sc#Metric_label)


### Properties

|!form data!Eigenschap|Label
|----------|------
|Used term|[rdfs:label](http://www.w3.org/2000/01/rdf-schema#label)
|Datatype|[Text](http://www.w3.org/2001/XMLSchema#string)
|Description|A metric has a human readable label


### Relations

|!form data!Eigenschap|Expected datatype
|----------|------
|Used term|[dqv:expectedDataType](http://www.w3.org/ns/dqv#expectedDataType)
|Refers to|[rdfs:Datatype](http://www.w3.org/2000/01/rdf-schema#Datatype)
|Description|The expected datatype of the metric

|!form data!Eigenschap|in dimension
|----------|------
|Used term|[dqv:inDimension](http://www.w3.org/ns/dqv#inDimension)
|Related with|[Quality indicator](http://bp4mc2.org/profiles/dqv-ap-sc#QualityIndicator)
|Description|A metric is within a particular quality dimension


## Quality measurement

|!form data!Klasse|Quality measurement
|----------|------
|Used term|[dqv:QualityMeasurement](http://www.w3.org/ns/dqv#QualityMeasurement)
|Properties en relations|[is measurement of](http://bp4mc2.org/profiles/dqv-ap-sc#QualityMeasurement_isMeasurementOf), [value](http://bp4mc2.org/profiles/dqv-ap-sc#QualityMeasurement_value)


### Properties

|!form data!Eigenschap|value
|----------|------
|Used term|[dqv:value](http://www.w3.org/ns/dqv#value)
|Datatype|[rdfs:Literal](http://www.w3.org/2000/01/rdf-schema#Literal)
|Description|The result of the measurement, de value
|Min card.|1
|Max card.|1


### Relations

|!form data!Eigenschap|is measurement of
|----------|------
|Used term|[dqv:isMeasurementOf](http://www.w3.org/ns/dqv#isMeasurementOf)
|Refers to|[dqv:Metric](http://www.w3.org/ns/dqv#Metric)
|Description|States the metric that is measured by this measurement
|Min card.|1
|Max card.|1


### Relations

|!form data!Eigenschap|property
|----------|------
|Used term|[sh:property](http://www.w3.org/ns/shacl#property)
|Related with|[Policy specification](http://bp4mc2.org/profiles/dqv-ap-sc#QualityPolicySpec)
|Description|The rule that belongs to the quality policy
|Min card.|1
|Max card.|1

|!form data!Eigenschap|severity
|----------|------
|Description|The severity of the quality policy
|Max card.|1

|!form data!Eigenschap|target
|----------|------
|Refers to|[dqv:Metric](http://www.w3.org/ns/dqv#Metric)
|Description|The metric for which this quality policy holds
|Min card.|1
|Max card.|1


## Quality policy

|!form data!Klasse|Quality policy
|----------|------
|Typed as|[sh:NodeShape](http://www.w3.org/ns/shacl#NodeShape)
|Properties en relations|[message](http://bp4mc2.org/profiles/dqv-ap-sc#QualityPolicy_message), [property](http://bp4mc2.org/profiles/dqv-ap-sc#QualityPolicy_property), [severity](http://bp4mc2.org/profiles/dqv-ap-sc#QualityPolicy_severity), [target](http://bp4mc2.org/profiles/dqv-ap-sc#QualityPolicy_targetNode)


### Properties

|!form data!Eigenschap|message
|----------|------
|Datatype|[Text](http://www.w3.org/2001/XMLSchema#string)
|Description|The message that is reported if the measurement doesn't comply with the quality policy


