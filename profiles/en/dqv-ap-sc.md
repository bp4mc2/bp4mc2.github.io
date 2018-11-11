# DQV Application profile for data quality


Data quality


![](dqv-ap-sc.png)

## Quality dimension

|!form data#QualityDimension!Klasse|Quality dimension
|----------|------
|Used term|[dqv:Dimension](http://www.w3.org/ns/dqv#Dimension)


## Quality indicator

|!form data#QualityIndicator!Klasse|Quality indicator
|----------|------
|Typed as|[dqv:Dimension](#Dimension)
|Properties en relations|[Specialization of](#QualityIndicator_broader)


### Relations

|!form data#QualityIndicator_broader!Eigenschap|Specialization of
|----------|------
|Used term|[skos:broader](http://www.w3.org/2004/02/skos/core#broader)
|Related with|[Quality dimension](#QualityDimension)
|Description|A quality indicator belongs to a particular quality dimension
|Min card.|1
|Max card.|1


## Metric

|!form data#Metric!Klasse|Quality metric
|----------|------
|Used term|[dqv:Metric](http://www.w3.org/ns/dqv#Metric)
|Properties en relations|[Expected datatype](#Metric_expectedDataType), [in dimension](#Metric_inDimension), [Label](#Metric_label)


### Properties

|!form data#Metric_label!Eigenschap|Label
|----------|------
|Used term|[rdfs:label](http://www.w3.org/2000/01/rdf-schema#label)
|Datatype|[Text](http://www.w3.org/2001/XMLSchema#string)
|Description|A metric has a human readable label


### Relations

|!form data#Metric_expectedDataType!Eigenschap|Expected datatype
|----------|------
|Used term|[dqv:expectedDataType](http://www.w3.org/ns/dqv#expectedDataType)
|Refers to|[rdfs:Datatype](#Datatype)
|Description|The expected datatype of the metric

|!form data#Metric_inDimension!Eigenschap|in dimension
|----------|------
|Used term|[dqv:inDimension](http://www.w3.org/ns/dqv#inDimension)
|Related with|[Quality indicator](#QualityIndicator)
|Description|A metric is within a particular quality dimension


## Quality measurement

|!form data#QualityMeasurement!Klasse|Quality measurement
|----------|------
|Used term|[dqv:QualityMeasurement](http://www.w3.org/ns/dqv#QualityMeasurement)
|Properties en relations|[is measurement of](#QualityMeasurement_isMeasurementOf), [value](#QualityMeasurement_value)


### Properties

|!form data#QualityMeasurement_value!Eigenschap|value
|----------|------
|Used term|[dqv:value](http://www.w3.org/ns/dqv#value)
|Datatype|[rdfs:Literal](http://www.w3.org/2000/01/rdf-schema#Literal)
|Description|The result of the measurement, de value
|Min card.|1
|Max card.|1


### Relations

|!form data#QualityPolicy_property!Eigenschap|property
|----------|------
|Used term|[sh:property](http://www.w3.org/ns/shacl#property)
|Related with|[Policy specification](#QualityPolicySpec)
|Description|The rule that belongs to the quality policy
|Min card.|1
|Max card.|1

|!form data#QualityPolicy_severity!Eigenschap|severity
|----------|------
|Description|The severity of the quality policy
|Max card.|1

|!form data#QualityPolicy_targetNode!Eigenschap|target
|----------|------
|Refers to|[dqv:Metric](#Metric)
|Description|The metric for which this quality policy holds
|Min card.|1
|Max card.|1


### Relations

|!form data#QualityMeasurement_isMeasurementOf!Eigenschap|is measurement of
|----------|------
|Used term|[dqv:isMeasurementOf](http://www.w3.org/ns/dqv#isMeasurementOf)
|Refers to|[dqv:Metric](#Metric)
|Description|States the metric that is measured by this measurement
|Min card.|1
|Max card.|1


## Quality policy

|!form data#QualityPolicy!Klasse|Quality policy
|----------|------
|Typed as|[sh:NodeShape](#NodeShape)
|Properties en relations|[message](#QualityPolicy_message), [property](#QualityPolicy_property), [severity](#QualityPolicy_severity), [target](#QualityPolicy_targetNode)


### Properties

|!form data#QualityPolicy_message!Eigenschap|message
|----------|------
|Datatype|[Text](http://www.w3.org/2001/XMLSchema#string)
|Description|The message that is reported if the measurement doesn't comply with the quality policy


## Specification

|!form data#QualityPolicySpec!Klasse|Policy specification
|----------|------


## Datatype

|!form data#Datatype!Klasse|Datatype
|----------|------
|Used term|[rdfs:Datatype](http://www.w3.org/2000/01/rdf-schema#Datatype)


