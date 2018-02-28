# Profile documentation

This page described the Original W3C DCAT profile as specified in: [http://www.w3.org/TR/vocab-dcat/](http://www.w3.org/TR/vocab-dcat/).

## Vocabularies and namespaces

The following vocabularies are used:

|prefix|namespace
|---|---
|dcat|http://www.w3.org/ns/dcat#
|dct|http://purl.org/dc/terms/
|dctype|http://purl.org/dc/dcmitype/
|foaf|http://xmlns.com/foaf/0.1/
|rdfs|http://www.w3.org/2000/01/rdf-schema#
|skos|http://www.w3.org/2004/02/skos/core#
|vcard|http://www.w3.org/2006/vcard/ns#

![](/images/w3c-dcat-profiel.png)

## Classes

The profile contains classes that are considered core to the profile and are part of the catalog core. Other classes are only used by reference and are stable with respect to the operational data ("Master data"). And some classes are merly used as complex datatypes.

### Core classes

|core classes|definition
|---|---
|[dcat:Catalog](http://www.w3.org/ns/dcat#Catalog)|A data catalog is a curated collection of metadata about datasets.
|[dcat:CatalogRecord](http://www.w3.org/ns/dcat#CatalogRecord)|A record in a data catalog, describing a single dataset.
|[dcat:Dataset](http://www.w3.org/ns/dcat#Dataset)|A collection of data, published or curated by a single agent, and available for access or download in one or more formats.
|[dcat:Distribution](http://www.w3.org/ns/dcat#Distribution)|Represents a specific available form of a dataset. Each dataset might be available in different forms, these forms might represent different formats of the dataset or different endpoints. Examples of distributions include a downloadable CSV file, an API or an RSS feed

### Reference classes

|reference classes|definition
|---|---
|[dctype:Dataset](http://purl.org/dc/dcmitype/Dataset)|Data encoded in a defined structure.
|[skos:Concept](http://www.w3.org/2004/02/skos/core#Concept)|A category or a theme used to describe datasets in the catalog.
|[skos:ConceptScheme](http://www.w3.org/2004/02/skos/core#ConceptScheme)|The knowledge organization system (KOS) used to represent themes/categories of datasets in the catalog.
|[foaf:Agent](http://xmlns.com/foaf/0.1/Agent)|An agent (eg. person, group, software or physical artifact).
|[foaf:Organization](http://xmlns.com/foaf/0.1/Organization)|An organization.
|[foaf:Person](http://xmlns.com/foaf/0.1/Person)|A person.

### Datatype classes

|datatype classes|definition
|---|---
|[dct:Frequency](http://purl.org/dc/terms/Frequency)|
|[dct:LicenseDocument](http://purl.org/dc/terms/LicenseDocument)|
|[dct:LinguisticSystem](http://purl.org/dc/terms/LinguisticSystem)|
|[dct:Location](http://purl.org/dc/terms/Location)|
|[dct:MediaTypeOrExtent](http://purl.org/dc/terms/MediaTypeOrExtent)|
|[dct:PeriodOfTime](http://purl.org/dc/terms/PeriodOfTime)|
|[dct:RightsStatement](http://purl.org/dc/terms/RightsStatement)|
|[rdfs:Literal](http://www.w3.org/2000/01/rdf-schema#Literal)|
|[rdfs:Resource](http://www.w3.org/2000/01/rdf-schema#Resource)|
|[vcard:Kind](http://www.w3.org/2006/vcard/ns#Kind)|
|[foaf:Document](http://xmlns.com/foaf/0.1/Document)|

## Catalog

|property|range|definition
|---|---|---
|[dct:title](http://purl.org/dc/terms/title)|[rdfs:Literal](http://www.w3.org/2000/01/rdf-schema#Literal)|A name given to the catalog.
|[dct:description](http://purl.org/dc/terms/description)|[rdfs:Literal](http://www.w3.org/2000/01/rdf-schema#Literal)|A free-text account of the catalog.
|[dct:issued](http://purl.org/dc/terms/issued)|[rdfs:Literal](http://www.w3.org/2000/01/rdf-schema#Literal)|Date of formal issuance (e.g., publication) of the catalog.
|[dct:modified](http://purl.org/dc/terms/modified)|[rdfs:Literal](http://www.w3.org/2000/01/rdf-schema#Literal)|Most recent date on which the catalog was changed, updated or modified.
|[dct:language](http://purl.org/dc/terms/language)|[dct:LinguisticSystem](http://purl.org/dc/terms/LinguisticSystem)|The language of the catalog. This refers to the language used in the textual metadata describing titles, descriptions, etc. of the datasets in the catalog.
|[foaf:homepage](http://xmlns.com/foaf/0.1/homepage)|[foaf:Document](http://xmlns.com/foaf/0.1/Document)|The homepage of the catalog.
|[dct:publisher](http://purl.org/dc/terms/publisher)|[foaf:Agent](http://xmlns.com/foaf/0.1/Agent)|The entity responsible for making the catalog online.
|[dct:spatial](http://purl.org/dc/terms/spatial)|[dct:Location](http://purl.org/dc/terms/Location)|The geographical area covered by the catalog.
|[dcat:themeTaxonomy](http://www.w3.org/ns/dcat#themeTaxonomy)|[skos:ConceptScheme](http://www.w3.org/2004/02/skos/core#ConceptScheme)|The knowledge organization system (KOS) used to classify catalog's datasets.
|[dct:license](http://purl.org/dc/terms/license)|[dct:LicenseDocument](http://purl.org/dc/terms/LicenseDocument)|This links to the license document under which the catalog is made available and not the datasets. Even if the license of the catalog applies to all of its datasets and distributions, it should be replicated on each distribution.
|[dct:rights](http://purl.org/dc/terms/rights)|[dct:RightsStatement](http://purl.org/dc/terms/RightsStatement)|This describes the rights under which the catalog can be used/reused and not the datasets. Even if theses rights apply to all the catalog datasets and distributions, it should be replicated on each distribution.
|[dcat:dataset](http://www.w3.org/ns/dcat#dataset)|[dcat:Dataset](http://www.w3.org/ns/dcat#Dataset)|A dataset that is part of the catalog.
|[dcat:record](http://www.w3.org/ns/dcat#record)|[dcat:CatalogRecord](http://www.w3.org/ns/dcat#CatalogRecord)|A catalog record that is part of the catalog.

## Catalog record

|property|range|definition
|---|---|---
|[dct:title](http://purl.org/dc/terms/title)|[rdfs:Literal](http://www.w3.org/2000/01/rdf-schema#Literal)|A name given to the record.
|[dct:description](http://purl.org/dc/terms/description)|[rdfs:Literal](http://www.w3.org/2000/01/rdf-schema#Literal)|free-text account of the record.
|[dct:issued](http://purl.org/dc/terms/issued)|[rdfs:Literal](http://www.w3.org/2000/01/rdf-schema#Literal)|The date of listing the corresponding dataset in the catalog.
|[dct:modified](http://purl.org/dc/terms/modified)|[rdfs:Literal](http://www.w3.org/2000/01/rdf-schema#Literal)|Most recent date on which the catalog entry was changed, updated or modified.
|[foaf:primaryTopic](http://xmlns.com/foaf/0.1/primaryTopic)|[dcat:Dataset](http://www.w3.org/ns/dcat#Dataset)|Links the catalog record to the dcat:Dataset resource described in the record.

## Dataset

|property|range|definition
|---|---|---
|[dct:title](http://purl.org/dc/terms/title)|[rdfs:Literal](http://www.w3.org/2000/01/rdf-schema#Literal)|A name given to the dataset.
|[dct:description](http://purl.org/dc/terms/description)|[rdfs:Literal](http://www.w3.org/2000/01/rdf-schema#Literal)|free-text account of the dataset.
|[dct:issued](http://purl.org/dc/terms/issued)|[rdfs:Literal](http://www.w3.org/2000/01/rdf-schema#Literal)|Date of formal issuance (e.g., publication) of the dataset.
|[dct:modified](http://purl.org/dc/terms/modified)|[rdfs:Literal](http://www.w3.org/2000/01/rdf-schema#Literal)|Most recent date on which the dataset was changed, updated or modified.
|[dct:language](http://purl.org/dc/terms/language)|[dct:LinguisticSystem](http://purl.org/dc/terms/LinguisticSystem)|The language of the dataset.
|[dct:publisher](http://purl.org/dc/terms/publisher)|[foaf:Agent](http://xmlns.com/foaf/0.1/Agent)|An entity responsible for making the dataset available.
|[dct:accrualPeriodicity](http://purl.org/dc/terms/accrualPeriodicity)|[dct:Frequency](http://purl.org/dc/terms/Frequency)|The frequency at which dataset is published.
|[dct:identifier](http://purl.org/dc/terms/identifier)|[rdfs:Literal](http://www.w3.org/2000/01/rdf-schema#Literal)|A unique identifier of the dataset.
|[dct:spatial](http://purl.org/dc/terms/spatial)|[dct:Location](http://purl.org/dc/terms/Location)|Spatial coverage of the dataset.
|[dct:temporal](http://purl.org/dc/terms/temporal)|[dct:PeriodOfTime](http://purl.org/dc/terms/PeriodOfTime)|The temporal period that the dataset covers.
|[dcat:theme](http://www.w3.org/ns/dcat#theme)|[skos:Concept](http://www.w3.org/2004/02/skos/core#Concept)|The main category of the dataset. A dataset can have multiple themes.
|[dcat:keyword](http://www.w3.org/ns/dcat#keyword)|[rdfs:Literal](http://www.w3.org/2000/01/rdf-schema#Literal)|A keyword or tag describing the dataset.
|[dcat:contactPoint](http://www.w3.org/ns/dcat#contactPoint)|[vcard:Kind](http://www.w3.org/2006/vcard/ns#Kind)|Link a dataset to relevant contact information which is provided using VCard [vcard-rdf].
|[dcat:distribution](http://www.w3.org/ns/dcat#distribution)|[dcat:Distribution](http://www.w3.org/ns/dcat#Distribution)|Connects a dataset to its available distributions.
|[dcat:landingPage](http://www.w3.org/ns/dcat#landingPage)|[foaf:Document](http://xmlns.com/foaf/0.1/Document)|A Web page that can be navigated to in a Web browser to gain access to the dataset, its distributions and/or additional information.

## Distribution

|property|range|definition
|---|---|---
|[dct:title](http://purl.org/dc/terms/title)|[rdfs:Literal](http://www.w3.org/2000/01/rdf-schema#Literal)|A name given to the distribution.
|[dct:description](http://purl.org/dc/terms/description)|[rdfs:Literal](http://www.w3.org/2000/01/rdf-schema#Literal)|free-text account of the distribution.
|[dct:issued](http://purl.org/dc/terms/issued)|[rdfs:Literal](http://www.w3.org/2000/01/rdf-schema#Literal)|Date of formal issuance (e.g., publication) of the distribution.
|[dct:modified](http://purl.org/dc/terms/modified)|[rdfs:Literal](http://www.w3.org/2000/01/rdf-schema#Literal)|Most recent date on which the distribution was changed, updated or modified.
|[dct:license](http://purl.org/dc/terms/license)|[dct:LicenseDocument](http://purl.org/dc/terms/LicenseDocument)|This links to the license document under which the distribution is made available.
|[dct:rights](http://purl.org/dc/terms/rights)|[dct:RightsStatement](http://purl.org/dc/terms/RightsStatement)|Information about rights held in and over the distribution.
|[dcat:accessURL](http://www.w3.org/ns/dcat#accessURL)|[rdfs:Resource](http://www.w3.org/2000/01/rdf-schema#Resource)|A landing page, feed, SPARQL endpoint or other type of resource that gives access to the distribution of the dataset
|[dcat:downloadURL](http://www.w3.org/ns/dcat#downloadURL)|[rdfs:Resource](http://www.w3.org/2000/01/rdf-schema#Resource)|A file that contains the distribution of the dataset in a given format
|[dcat:byteSize](http://www.w3.org/ns/dcat#byteSize)|[rdfs:Literal](http://www.w3.org/2000/01/rdf-schema#Literal)|The size of a distribution in bytes.
|[dcat:mediaType](http://www.w3.org/ns/dcat#mediaType)|[dct:MediaTypeOrExtent](http://purl.org/dc/terms/MediaTypeOrExtent)|The media type of the distribution as defined by IANA.
|[dct:format](http://purl.org/dc/terms/format)|[dct:MediaTypeOrExtent](http://purl.org/dc/terms/MediaTypeOrExtent)|The file format of the distribution.

