# SKOS Profile for concept schemes


Concepts make clear which 'topics of conversation' exist. In a system catalog concepts are formally defined. Each definition is built according to strict rules. The essence is that every concept in a certain domain is explained in terms of other concepts. These concepts are also explained until finally every concept that needs some explanation is defined. At the end the concepts  whose meaning is taken for granted remain. In a logical model these are called axioms. This way an axiomatic conceptual framework is created for each domain. This conceptual framework can be regarded as a more or less formalized description of the institutional reality of the domain.

SKOS is used to describe concepts. SKOS is a standard on the appy-or-explain list for governments in the Netherlands.

* Every concept is represented by a skos:concept.
* Each domain has its own concept scheme. The concept scheme for a particular domain is represented by a skos:ConceptScheme.
* Concepts can be arranged in collections. A collection is represented by a skos:collection.
* Concepts in different domains can be linked via matching mechanisms. This connection of concepts between domains creates a system of coherent concept schemes. This system of coherent concepts schemes can be seen as the knowledge base for a system catalog.


![](skos-ap-sc.png)

## Concept scheme

|!form data#ConceptScheme!Klasse|Concept scheme
|----------|------
|Used term|[skos:ConceptScheme](http://www.w3.org/2004/02/skos/core#ConceptScheme)
|Description|The knowledge about physical reality is described in a linguistic model, a conceptual model. In a conceptual model, this knowledge is structured in such a way that it is understood by both people and computers.
|Properties en relations|[top concept](#ConceptScheme_hasTopConcept), [label](#ConceptScheme_label)


### Properties

|!form data#ConceptScheme_label!Eigenschap|label
|----------|------
|Used term|[rdfs:label](http://www.w3.org/2000/01/rdf-schema#label)
|Datatype|[Text](http://www.w3.org/2001/XMLSchema#string)
|Description|A concept scheme has a human readable label. Blanks and diacritics are allowed.
|Example|Het schema dat het domein regelgeving beschrijft heeft als label 'Regelgeving'.
|Min card.|1


### Relations

|!form data#ConceptScheme_hasTopConcept!Eigenschap|top concept
|----------|------
|Used term|[skos:hasTopConcept](http://www.w3.org/2004/02/skos/core#hasTopConcept)
|Refers to|[skos:Concept](#Concept)
|Description|A concept schema can contain concepts that are the most generic in a hierarchy of specializations / generalizations.


## Concept

|!form data#Concept!Klasse|Concept
|----------|------
|Used term|[skos:Concept](http://www.w3.org/2004/02/skos/core#Concept)
|Description|A  concept is an idea or notion, a unit of thought, a topic in the universe of discourse.
|Properties en relations|[alternative label](#Concept_altLabel), [broadly matches with](#Concept_broadlyMatches), [closely matches with](#Concept_closelyMatches), [comment](#Concept_comment), [consists of](#Concept_consistsOf), [source](#Concept_dcsource), [source reference](#Concept_dctsource), [definition](#Concept_definition), [domain](#Concept_domain), [editorial note](#Concept_editorialNote), [exactly matches with](#Concept_exactlyMatches), [example](#Concept_example), [generalization of](#Concept_generalisationOf), [other search labels](#Concept_hiddenLabel), [related to](#Concept_isRelatedTo), [label](#Concept_label), [narrowly matches with](#Concept_narrowlyMatches), [notation](#Concept_notation), [part of](#Concept_partOf), [preferred label](#Concept_prefLabel), [provenance](#Concept_provenance), [scope note](#Concept_scopeNote), [related to](#Concept_seeAlso), [specialization of](#Concept_specialisationOf)


### Properties

|!form data#Concept_altLabel!Eigenschap|alternative label
|----------|------
|Used term|[skos:altLabel](http://www.w3.org/2004/02/skos/core#altLabel)
|Datatype|[Text](http://www.w3.org/2001/XMLSchema#string)
|Description|A concept can have an alternative label, a synonym

|!form data#Concept_comment!Eigenschap|comment
|----------|------
|Used term|[rdfs:comment](http://www.w3.org/2000/01/rdf-schema#comment)
|Datatype|[Text](http://www.w3.org/2001/XMLSchema#string)
|Description|Preferably a concept has a comment in 'clear language'.
|Min card.|1

|!form data#Concept_dcsource!Eigenschap|source
|----------|------
|Used term|[dc:source](http://purl.org/dc/elements/1.1/source)
|Datatype|[Text](http://www.w3.org/2001/XMLSchema#string)
|Description|A concept can be derived from a written source.

|!form data#Concept_definition!Eigenschap|definition
|----------|------
|Used term|[skos:definition](http://www.w3.org/2004/02/skos/core#definition)
|Datatype|[Text](http://www.w3.org/2001/XMLSchema#string)
|Description|A concept can have a formal definition. If possible this is taken from a formal publication.
|Min card.|1

|!form data#Concept_editorialNote!Eigenschap|editorial note
|----------|------
|Used term|[skos:editorialNote](http://www.w3.org/2004/02/skos/core#editorialNote)
|Datatype|[Text](http://www.w3.org/2001/XMLSchema#string)
|Description|A concept can have an editorial comment.

|!form data#Concept_example!Eigenschap|example
|----------|------
|Used term|[skos:example](http://www.w3.org/2004/02/skos/core#example)
|Datatype|[Text](http://www.w3.org/2001/XMLSchema#string)
|Description|An example of the corresponding concept

|!form data#Concept_hiddenLabel!Eigenschap|other search labels
|----------|------
|Used term|[skos:hiddenLabel](http://www.w3.org/2004/02/skos/core#hiddenLabel)
|Datatype|[Text](http://www.w3.org/2001/XMLSchema#string)
|Description|A concept can have other search labels. These labels are normally not visible, but when search for, the corresponding concept will be found
|Example|Panden (bij het begrip Pand), of Belgie (bij het begrip België)

|!form data#Concept_label!Eigenschap|label
|----------|------
|Used term|[rdfs:label](http://www.w3.org/2000/01/rdf-schema#label)
|Datatype|[Text](http://www.w3.org/2001/XMLSchema#string)
|Description|A concept has a human-readable label (including spaces and diacritics). This is equal to the skos: prefLabel. An exception to this is the situation that within one concept scheme the same skos:prefLabel is used more than once. This is not a good practice and should be avoided as much as possible. In case this occurs nonetheless, the rdfs: label gets an addition between brackets that indicates the distinction. This label can be multilingual, indicated by @nl or @en
|Min card.|1

|!form data#Concept_notation!Eigenschap|notation
|----------|------
|Used term|[skos:notation](http://www.w3.org/2004/02/skos/core#notation)
|Datatype|[Text](http://www.w3.org/2001/XMLSchema#string)
|Description|A notation or code that corresponds to the concept
|Example|AU (bij het begrip 'Goud', de chemische notatie)

|!form data#Concept_prefLabel!Eigenschap|preferred label
|----------|------
|Used term|[skos:prefLabel](http://www.w3.org/2004/02/skos/core#prefLabel)
|Datatype|[Text](http://www.w3.org/2001/XMLSchema#string)
|Description|A concept has a human-readable preferred label. There is exactly one preferred label in the preferred language (this field is not multilingual). It is good practice that in 1 concept scheme each concept has a unique prefLabel.
|Min card.|1
|Max card.|1

|!form data#Concept_scopeNote!Eigenschap|scope note
|----------|------
|Used term|[skos:scopeNote](http://www.w3.org/2004/02/skos/core#scopeNote)
|Datatype|[Text](http://www.w3.org/2001/XMLSchema#string)
|Description|A concept can be explained.


### Relations

|!form data#Concept_broadlyMatches!Eigenschap|broadly matches with
|----------|------
|Used term|[skos:broadMatch](http://www.w3.org/2004/02/skos/core#broadMatch)
|Related with|[Extern concept](#ExternalConcept)
|Description|A concept can be a specializaton of a concept in another domain.

|!form data#Concept_closelyMatches!Eigenschap|closely matches with
|----------|------
|Used term|[skos:closeMatch](http://www.w3.org/2004/02/skos/core#closeMatch)
|Related with|[Extern concept](#ExternalConcept)
|Description|A concept can have almost the same meaning as a concept in another domain.

|!form data#Concept_consistsOf!Eigenschap|consists of
|----------|------
|Used term|[skosthes:narrowerPartitive](http://purl.org/iso25964/skos-thes#narrowerPartitive)
|Refers to|[skos:Concept](#Concept)
|Description|A concept can be about several parts.

|!form data#Concept_dctsource!Eigenschap|source reference
|----------|------
|Used term|[dcterms:source](http://purl.org/dc/terms/source)
|Refers to|[rdfs:Resource](#Resource)
|Description|A concept can be derived from a source that can be found on the web. This can be a (version of) a description of a specific concept or a document in which a description of the concept can be found.

|!form data#Concept_domain!Eigenschap|domain
|----------|------
|Used term|[skos:inScheme](http://www.w3.org/2004/02/skos/core#inScheme)
|Refers to|[skos:ConceptScheme](#ConceptScheme)
|Description|A concept is defined in the context of a certain domain.
|Min card.|1
|Max card.|1

|!form data#Concept_exactlyMatches!Eigenschap|exactly matches with
|----------|------
|Used term|[skos:exactMatch](http://www.w3.org/2004/02/skos/core#exactMatch)
|Related with|[Extern concept](#ExternalConcept)
|Description|A concept can have exactly the same meaning as a concept in another domain.

|!form data#Concept_generalisationOf!Eigenschap|generalization of
|----------|------
|Used term|[skosthes:narrowerGeneric](http://purl.org/iso25964/skos-thes#narrowerGeneric)
|Refers to|[skos:Concept](#Concept)
|Description|A concept can be a generalization of a concept with a narrower meaning.

|!form data#Concept_isRelatedTo!Eigenschap|related to
|----------|------
|Used term|[skos:semanticRelation](http://www.w3.org/2004/02/skos/core#semanticRelation)
|Refers to|[skos:Concept](#Concept)
|Description|A concept can be related to another concept.

|!form data#Concept_narrowlyMatches!Eigenschap|narrowly matches with
|----------|------
|Used term|[skos:narrowMatch](http://www.w3.org/2004/02/skos/core#narrowMatch)
|Related with|[Extern concept](#ExternalConcept)
|Description|A concept can be a generalizaton of a concept in another domain.

|!form data#Concept_partOf!Eigenschap|part of
|----------|------
|Used term|[skosthes:broaderPartitive](http://purl.org/iso25964/skos-thes#broaderPartitive)
|Refers to|[skos:Concept](#Concept)
|Description|A concept can be about a part of a broader concept.

|!form data#Concept_provenance!Eigenschap|provenance
|----------|------
|Used term|[foaf:isPrimaryTopicOf](http://xmlns.com/foaf/0.1/isPrimaryTopicOf)
|Refers to|[prov:Entity](#Entity)
|Description|Provenance of a concept can be described.
|Example|Op basis van de nieuwe wet op de BAG is de definitie van het begrip 'verblijfsobject' aangepast.

|!form data#Concept_seeAlso!Eigenschap|related to
|----------|------
|Used term|[skos:relatedMatch](http://www.w3.org/2004/02/skos/core#relatedMatch)
|Related with|[Extern concept](#ExternalConcept)
|Description|A concepts can be related to a concept in another domain.

|!form data#Concept_specialisationOf!Eigenschap|specialization of
|----------|------
|Used term|[skosthes:broaderGeneric](http://purl.org/iso25964/skos-thes#broaderGeneric)
|Refers to|[skos:Concept](#Concept)
|Description|A concept can be a specialization of a concept with a broader meaning.


## Collection

|!form data#Collection!Klasse|Collection
|----------|------
|Used term|[skos:Collection](http://www.w3.org/2004/02/skos/core#Collection)
|Description|A group of coherent concepts can be bundled in a collection.
|Properties en relations|[has member](#Collection_hasMember), [label](#Collection_label), [provenance](#Collection_provenance)


### Properties

|!form data#Collection_label!Eigenschap|label
|----------|------
|Used term|[rdfs:label](http://www.w3.org/2000/01/rdf-schema#label)
|Datatype|[Text](http://www.w3.org/2001/XMLSchema#string)
|Description|A collection has a human readable label. Blanks and diacritics are allowed.
|Example|De collectie die alle activiteiten in het BAL beschrijft heeft als label 'BAL'
|Min card.|1


### Relations

|!form data#Collection_hasMember!Eigenschap|has member
|----------|------
|Used term|[skos:member](http://www.w3.org/2004/02/skos/core#member)
|Refers to|[skos:Concept](#Concept)
|Description|A collection can contain one or more concepts, that possibly come from multiple concept schemes.
|Example|de collectie 'Zakelijke rechten' bevat het begrip 'Erfpacht'

|!form data#Collection_provenance!Eigenschap|provenance
|----------|------
|Used term|[foaf:isPrimaryTopicOf](http://xmlns.com/foaf/0.1/isPrimaryTopicOf)
|Refers to|[prov:Entity](#Entity)
|Description|Provenance of a collection can be described.
|Example|Op basis van de nieuwe wet op de BAG is een aantal begrippen toegevoegd aan de collectie 'aard gebruik'


## Concept

|!form data#ExternalConcept!Klasse|Extern concept
|----------|------
|Typed as|[skos:Concept](#Concept)
|Description|A concept in another concept scheme, to which is referenced.


## Concept scheme asset

|!form data#AssetConceptScheme!Klasse|Asset (ConceptScheme)
|----------|------
|Typed as|[adms:Asset](#Asset), [skos:ConceptScheme](#ConceptScheme)
|Description|A concept scheme can be identified as an asset.
|Properties en relations|[type asset = Concept scheme](#AssetConceptScheme_typeConceptScheme)


### Relations

|!form data#AssetConceptScheme_typeConceptScheme!Eigenschap|type asset = Concept scheme
|----------|------
|Used term|[dcterms:type](http://purl.org/dc/terms/type)
|Value|[Asset (ConceptScheme)](http://bp4mc2.org/profiles/skos-ap-sc#AssetConceptScheme)
|Description|A concept scheme is explicitly typed as a concept scheme.
|Min card.|1
|Max card.|1


## Uri strategy


Concept schemes, collections and concepts get a uri according to the pattern:

* `http://{domain}/id/scheme/{UpperCamelCase(rdfs:label)}` for concept schemes
* `http://{domain}/id/collection/{UpperCamelCase(rdfs:label)}` for collections
* `http://{domain}/id/concept/{UpperCamelCase(skos:prefLabel)}` for concepts

The `skos:prefLabel` is in most cases equal to the `rdfs:label` and these should be unique for all concepts in a particular concept scheme. If this is not the case, the URI should be extended with a `_{context}` postfix. In such a case, the `rdfs:label` is also extended with ` ({context})`.


