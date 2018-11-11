# DM Application profile for data models


A data model is a description of the structure in which data about things that are described by concepts in a concept scheme can be stored. The concept scheme can be used to communicate with domain owners and users on the content of a registration. Translating a concept scheme into a coherent data model is the domain of the data architect.

One way for building a data model is to use the Dutch Metamodel for Data models (MIM), (see [https://www.geonovum.nl/geo-standards/metamodel-informatiemodellering/nationaal-metamodel-voor-informatiemodellering]) . This meta model contains object classes, attribute types, data groups, data group types, generalizations, relationship types, and relationship classes. An data model created on base of the MIM can be expressed in UML or in RDF. In other words, it is 'form-free'. A MIM class is usually a realization of a concept. For example, the attribute type 'main address' in the BAG is the realization of the term 'Main address' and the object class 'AddressableObject', where a 'main address' is the realization of the term 'AddressableObject'. The term 'AddressableObject' is about the (linguistic) meaning of an addressable object. The object class is a kind of 'box' in which the data about an addressable object can be stored.

When building an data model based on a concept scheme, the following good practices can be used:
* A class is created for each objectifiable concept. For example, the class with the name 'Public Space' contains the data about the objects that are indicated by the concept 'Public Space'.
* Concepts that are published in a controlled vocabulary are treated differently in a relational model and in a linked data model:
** In a relational model, the parent concept (of which the  concepts in the controlled vocabulary are a specialization) is translated into a class whose instances are typed on base of an element in the controlled vocabulary. Usually this is an attribute with 'type' or ‘kind’ in the name.
** In a linked data model, such concepts are modelled as subtypes of the parent concept.
* For every concept that is a property of a class and is not a reference to another concept, a data property arises. For example, the property with the name 'year of construction' represents the term with the name 'Year of construction'.
* Specializations, generalizations, and partitive relationships in the concept scheme are translated into specializations, generalizations and partitive relationships in the data model.
* For each semantic relation in the conceptual model, a relation is defined in the data model (in linked data an object property). An example is 'lies in' as a relation between the classes 'Public Space' and 'Residence' as an elaboration of the semantic relationship between the terms 'Public Space' and 'Residence'.

An example of the BAG model elaborated in this way can be found at [https://bag.basisregistraties.overheid.nl/def]. #-uri's can be used to reference to elements in this model, for example [https://bag.basisregistraties.overheid.nl/def/objectklasse/ AdresseerbaarObject#hoofdadres]. This example is available as a html web page, in turtle and as a graph. This example also shows how the uri strategy works to describe a data model. Typing in the above URL will lead to the display the part for the '#'of the page [http://bag.basisregistraties.overheid.nl/def/objectklasse/ AdresseerbaarObject]. In other words: the description of the entity 'Addressable object'.


![](dm-ap-sc.png)

## Data model

|!form data#DataModel!Klasse|Asset (Data model)
|----------|------
|Typed as|[adms:Asset](#Asset)
|Description|An data model is a description of the structure in which data about things in a specific domain are stored.
|Properties en relations|[type asset = data model](#DataModel_typeDataModel)


### Relations

|!form data#DataModel_typeDataModel!Eigenschap|type asset = data model
|----------|------
|Used term|[dcterms:type](http://purl.org/dc/terms/type)
|Value|[Asset (Data model)](http://bp4mc2.org/profiles/dm-ap-sc#DataModel)
|Description|A data model is explicitly typed as a data model.
|Min card.|1
|Max card.|1


## Shapes graph


## Vocabulary

|!form data#Ontology!Klasse|Vocabulary
|----------|------
|Used term|[owl:Ontology](http://www.w3.org/2002/07/owl#Ontology)
|Description|The description of the vocabulary and its semantics (ontology)
|Properties en relations|[shape description](#Ontology_shapesGraph)


### Relations

|!form data#Ontology_shapesGraph!Eigenschap|shape description
|----------|------
|Used term|[sh:shapesGraph](http://www.w3.org/ns/shacl#shapesGraph)
|Related with|[Asset (Data model)](#DataModel)
|Description|A data model can be described in a shapes graph.


## node shape

|!form data#NodeShape!Klasse|Node shape
|----------|------
|Used term|[sh:NodeShape](http://www.w3.org/ns/shacl#NodeShape)
|Properties en relations|[is defined by](#NodeShape_isDefinedBy), [name](#NodeShape_name), [eigenschap](#NodeShape_property), [target class](#NodeShape_targetClass)


### Properties

|!form data#NodeShape_name!Eigenschap|name
|----------|------
|Used term|[sh:name](http://www.w3.org/ns/shacl#name)
|Datatype|[Text](http://www.w3.org/2001/XMLSchema#string)
|Max card.|1


### Relations

|!form data#NodeShape_isDefinedBy!Eigenschap|is defined by
|----------|------
|Used term|[rdfs:isDefinedBy](http://www.w3.org/2000/01/rdf-schema#isDefinedBy)
|Related with|[Asset (Data model)](#DataModel)
|Min card.|1
|Max card.|1

|!form data#NodeShape_property!Eigenschap|eigenschap
|----------|------
|Used term|[sh:property](http://www.w3.org/ns/shacl#property)
|Refers to|[sh:PropertyShape](#PropertyShape)

|!form data#NodeShape_targetClass!Eigenschap|target class
|----------|------
|Used term|[sh:targetClass](http://www.w3.org/ns/shacl#targetClass)
|Refers to|[owl:Class](#Class)


## class

|!form data#Class!Klasse|Class
|----------|------
|Used term|[owl:Class](http://www.w3.org/2002/07/owl#Class)
|Properties en relations|[is defined by](#Class_isDefinedBy)


### Relations

|!form data#Class_isDefinedBy!Eigenschap|is defined by
|----------|------
|Used term|[rdfs:isDefinedBy](http://www.w3.org/2000/01/rdf-schema#isDefinedBy)
|Related with|[Vocabulary](#Ontology)
|Min card.|1
|Max card.|1


## property shape

|!form data#PropertyShape!Klasse|Property shape
|----------|------
|Used term|[sh:PropertyShape](http://www.w3.org/ns/shacl#PropertyShape)
|Properties en relations|[name](#PropertyShape_name), [path](#PropertyShape_path)


### Properties

|!form data#PropertyShape_name!Eigenschap|name
|----------|------
|Used term|[sh:name](http://www.w3.org/ns/shacl#name)
|Datatype|[Text](http://www.w3.org/2001/XMLSchema#string)
|Max card.|1


### Relations

|!form data#PropertyShape_path!Eigenschap|path
|----------|------
|Used term|[sh:path](http://www.w3.org/ns/shacl#path)
|Related with|[Property](#Property)


## class

|!form data#Property!Klasse|Property
|----------|------
|Used term|[rdf:Property](http://www.w3.org/1999/02/22-rdf-syntax-ns#Property)
|Properties en relations|[is defined by](#Property_isDefinedBy)


### Relations

|!form data#Property_isDefinedBy!Eigenschap|is defined by
|----------|------
|Used term|[rdfs:isDefinedBy](http://www.w3.org/2000/01/rdf-schema#isDefinedBy)
|Refers to|[owl:Ontology](#Ontology)
|Min card.|1
|Max card.|1


## Uri strategy


A data model gets a uri from the asset that describes the model.
...

