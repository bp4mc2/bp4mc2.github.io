# CV Application profile for controlled vocabularies


Controlled vocabularies are lists of data elements that are referred to from different applications, sometimes even from different organizations. Sometimes these are also called reference data. Controlled vocabularies can have 3 different representations:
* Controlled vocabularies with elements that are concepts in a concept scheme (skos:ConceptScheme). An example from the Dutch Key Registry for Addresses and Buildings (BAG) is the 'purpose of use' of a 'Building'. That can be 'living', 'shop', 'office', et cetera. Semantically, this means that there are different types of properties, namely residential houses, shops and offices. To keep the data model clear, the design choice is made in the BAG to define 1 object type. This has a property 'purpose of use', that can have the value 'living', 'store', 'office', et cetera. in the controlled vocabulary. An additional advantage is that the data model does not need to be adjusted if a new purpose of use is added. Only a new element needs to be added to the controlled vocabulary. Semantically 'living', 'shop', 'office', et cetera. are specializations of the term 'purpose of use'. They form a skos:Collection with a skos:Label 'purpose for use' in the skos:ConceptScheme 'BAG'.
* A variant of this type controlled vocabularies is a controlled vocabulary that is published as an independent concept scheme (skos:ConceptScheme). This is the way the European Inspire controlled vocabularies are described. The concepts in such a scheme are often defined as skos:TopConcept to enable concepts to be detailed in local controlled vocabularies, for example Dutch controlled vocabularies.
* The third type of controlled vocabulary is a list of instances of a class. An example is a list of Dutch municipalities or a list of administrative areas. These are not concepts (skos:Concept), but instances of the class 'Municipality' defined by the Ministry of Internal Affairs.
For the basic representation of the controlled vocabulary it does not matter if it is a list defined as a skos:Collection or a skos:ConceptScheme with instances of skos concepts or a list of possible instances of a class. Both forms have a basic structure with sometimes a code (for example the CBS municipal code) and always a label (for example the municipality name).
* Skos:notation can be used for the code.
* For the label the skos:prefLabel is used.
* When a value list is published as Linked data, every value in that list is also given a uri.
The elements in controlled vocabulary can have the same metadata as concepts, namely 'has status', 'is generated at time', 'is invalidated at time', 'is valid during', 'is issued', 'is valid at'.
For class instances, any additional attributes of that class required for use outside the domain in which the original class is defined can be added. In the example of the list of Dutch municipalities, this can be the geometry of the administrative area and visualization codes for representation on a map.


![](cv-ap-sc.png)

## Controlled vocabulary

|!form data#ControlledVocabulary!Klasse|Asset (ControlledVocabulary)
|----------|------
|Description|A controlled vocabulary is an organized arrangement of concepts or elements used to index content and/or to retrieve content through browsing or searching. It typically includes preferred and variant terms and has a defined scope or describes a specific domain.
|Properties en relations|[http://bp4mc2.org/profiles/cv-ap-sc#ControlledVocabulary_typeControlledVocabulary](http://bp4mc2.org/profiles/cv-ap-sc#ControlledVocabulary_typeControlledVocabulary), [specified](#ControlledVocabulary_specification)


### Properties


### Relations

|!form data#ControlledVocabulary_specification!Eigenschap|specified
|----------|------
|Used term|[rdfs:isDefinedBy](http://www.w3.org/2000/01/rdf-schema#isDefinedBy)
|Related with|[http://bp4mc2.org/profiles/cv-ap-sc#NodeShape](http://bp4mc2.org/profiles/cv-ap-sc#NodeShape)
|Description|A controlled vocabulary can be specified as a concept scheme, a collection of concepts or as a reference list.


## Controlled vocabulary as concept scheme

|!form data#SchemeControlledVocabulary!Klasse|concept scheme specification
|----------|------
|Description|A controlled vocabulary can be specified as a separate concept scheme.
|Properties en relations|[http://bp4mc2.org/profiles/cv-ap-sc#SchemeControlledVocabulary_property](http://bp4mc2.org/profiles/cv-ap-sc#SchemeControlledVocabulary_property)


### Properties


### Relations

|!form data#SchemeControlledVocabulary_property!Eigenschap|Waarde
|----------|------
|Used term|[sh:property](http://www.w3.org/ns/shacl#property)
|Related with|[http://bp4mc2.org/profiles/cv-ap-sc#SchemeControlledVocabularySpec](http://bp4mc2.org/profiles/cv-ap-sc#SchemeControlledVocabularySpec)
|Min card.|1
|Max card.|1


## Uri strategy


A list (collection or scheme) of concepts or a list of instances of a class gets a uri from the asset that describes the list.

A value in a list (collection or schema) of concepts gets a uri according to the pattern:
* `http://{domain}/id/concept/{rdfs:label}`, where the rdfs:label is the label of the collection or schema.

A value in a list of instances of a class is given a uri according to the pattern:
* `http://{domain}/id/{class}/{rdfs:label}`, where the rdfs:label is the label of the relevant instance.


