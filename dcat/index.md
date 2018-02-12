# DCAT profiles
This document gives a comparision and description of the different DCAT profiles that exists and are in use within the Netherlands. This document also includes a comparision with the ISO19115 metadata profile for geospatial datasets.

The following profiles are compared:

|Profile|Original documentation
|-------|-----------------------
|[DCAT W3c](/dcat/dcat)|[http://www.w3.org/TR/vocab-dcat/](http://www.w3.org/TR/vocab-dcat/)
|[DCAT AP EU v1.1](/dcat/dcat-ap-eu)|[https://joinup.ec.europa.eu/release/dcat-ap-v11](https://joinup.ec.europa.eu/release/dcat-ap-v11)
|[GeoDCAT AP v1.0.1](/dcat/geodcat-ap-eu)|[https://joinup.ec.europa.eu/release/geodcat-ap/v101](https://joinup.ec.europa.eu/release/geodcat-ap/v101)
|[DCAT AP NL v0.6](/dcat-dcat-ap-nl)|[2014-11-13 DCAT-NL IPM Datasets 0.6.pdf](https://data.overheid.nl/sites/default/files/2014-11-13%20DCAT-NL%20IPM%20Datasets%200.6%20kopie.pdf)
## Comparison
### Classes


|DCAT (W3)|DCAT AP-EU|DCAT AP-NL|DCAT GCO
|---|---|---|---
|[dcat:Catalog](http://bp4mc2.org/def/dcat-model/Catalog)|[dcat:Catalog](http://bp4mc2.org/def/dcat-ap-eu/Catalog)|[dcat:Catalog](http://bp4mc2.org/def/dcat-nl/Catalogus)|[dcat:Catalog](http://data.ontwikkeling.pdok.nl/dso/def/model/Catalogus)
|[skos:ConceptScheme](http://bp4mc2.org/def/dcat-model/ConceptScheme)|[skos:ConceptScheme](http://bp4mc2.org/def/dcat-ap-eu/ConceptScheme)|[skos:ConceptScheme](http://bp4mc2.org/def/dcat-nl/Rubricering)|
|[dcat:CatalogRecord](http://bp4mc2.org/def/dcat-model/CatalogRecord)|[dcat:CatalogRecord](http://bp4mc2.org/def/dcat-ap-eu/CatalogRecord)|[dcat:CatalogRecord](http://bp4mc2.org/def/dcat-nl/Catalogusrecord)|[dcat:CatalogRecord](http://data.ontwikkeling.pdok.nl/dso/def/model/CatalogusRecord)
|[dcat:Dataset](http://bp4mc2.org/def/dcat-model/Dataset)|[dcat:Dataset](http://bp4mc2.org/def/dcat-ap-eu/Dataset)|[dcat:Dataset](http://bp4mc2.org/def/dcat-nl/Dataset)|[dcat:Dataset](http://data.ontwikkeling.pdok.nl/dso/def/model/Dataset), [dcat:Dataset](http://data.ontwikkeling.pdok.nl/dso/def/model/Datasetversie)
|[dcat:Distribution](http://bp4mc2.org/def/dcat-model/Distribution)|[dcat:Distribution](http://bp4mc2.org/def/dcat-ap-eu/Distribution)|[dcat:Distribution](http://bp4mc2.org/def/dcat-nl/Distributie)|[dcat:Distribution](http://data.ontwikkeling.pdok.nl/dso/def/model/distributie)
|[foaf:Agent](http://bp4mc2.org/def/dcat-model/Agent)|[foaf:Agent](http://bp4mc2.org/def/dcat-ap-eu/Agent)|[foaf:Agent](http://bp4mc2.org/def/dcat-nl/Verstrekker)|[foaf:Agent](http://data.ontwikkeling.pdok.nl/dso/def/model/UitgevendeInstantie)
|[skos:Concept](http://bp4mc2.org/def/dcat-model/Concept)|[skos:Concept](http://bp4mc2.org/def/dcat-ap-eu/LicenseType), [skos:Concept](http://bp4mc2.org/def/dcat-ap-eu/DatasetType), [skos:Concept](http://bp4mc2.org/def/dcat-ap-eu/Category), [skos:Concept](http://bp4mc2.org/def/dcat-ap-eu/PublisherType), [skos:Concept](http://bp4mc2.org/def/dcat-ap-eu/Status)|[skos:Concept](http://bp4mc2.org/def/dcat-nl/Concept)|
|[dctype:Dataset](http://bp4mc2.org/def/dcat-model/Dataset-dct)|[dctype:Dataset](http://bp4mc2.org/def/dcat-ap-eu/Dataset-dct)||
|[dct:LinguisticSystem](http://bp4mc2.org/def/dcat-model/LinguisticSystem)|[dct:LinguisticSystem](http://bp4mc2.org/def/dcat-ap-eu/LinguisticSystem)||
|[vcard:Kind](http://bp4mc2.org/def/dcat-model/Kind)|[vcard:Kind](http://bp4mc2.org/def/dcat-ap-eu/Kind)||
|[dct:Frequency](http://bp4mc2.org/def/dcat-model/Frequency)|[dct:Frequency](http://bp4mc2.org/def/dcat-ap-eu/Frequency)|[dct:Frequency](http://bp4mc2.org/def/dcat-nl/Frequentie)|
|[dct:LicenseDocument](http://bp4mc2.org/def/dcat-model/LicenseDocument)|[dct:LicenseDocument](http://bp4mc2.org/def/dcat-ap-eu/LicenseDocument)||
|[dct:Location](http://bp4mc2.org/def/dcat-model/Location)|[dct:Location](http://bp4mc2.org/def/dcat-ap-eu/Location)|[dct:Location](http://bp4mc2.org/def/dcat-nl/Locatie)|[dct:Location](http://data.ontwikkeling.pdok.nl/dso/def/model/werkingsgebied)
|[dct:MediaTypeOrExtent](http://bp4mc2.org/def/dcat-model/MediaTypeOrExtent)|[dct:MediaTypeOrExtent](http://bp4mc2.org/def/dcat-ap-eu/MediaTypeOrExtent)|[dct:MediaTypeOrExtent](http://bp4mc2.org/def/dcat-nl/Formaat)|
|[dct:PeriodOfTime](http://bp4mc2.org/def/dcat-model/PeriodOfTime)|[dct:PeriodOfTime](http://bp4mc2.org/def/dcat-ap-eu/PeriodOfTime)|[dcterms:PeriodOfTime](http://bp4mc2.org/def/dcat-nl/Periode)|
|[dct:RightsStatement](http://bp4mc2.org/def/dcat-model/RightsStatement)|[dct:RightsStatement](http://bp4mc2.org/def/dcat-ap-eu/RightsStatement)||
||[spdx:Checksum](http://bp4mc2.org/def/dcat-ap-eu/Checksum)||
||[foaf:Document](http://bp4mc2.org/def/dcat-ap-eu/Document)|[foaf:Document](http://bp4mc2.org/def/dcat-nl/URL)|
||[adms:Identifier](http://bp4mc2.org/def/dcat-ap-eu/Identifier)||
||[dct:ProvenanceStatement](http://bp4mc2.org/def/dcat-ap-eu/ProvenanceStatement)||
||[dct:Standard](http://bp4mc2.org/def/dcat-ap-eu/Standard)||
||[xsd:decimal](http://bp4mc2.org/def/dcat-ap-eu/Decimal)||
||[rdfs:Resource](http://bp4mc2.org/def/dcat-ap-eu/Resource)|[rdfs:Resource](http://bp4mc2.org/def/dcat-nl/URI)|
||[rdfs:Literal](http://bp4mc2.org/def/dcat-ap-eu/Literal)||
|||[org:Organization](http://bp4mc2.org/def/dcat-nl/Organisatie)|
|||[rdfs:Literal](http://bp4mc2.org/def/dcat-nl/VrijeTekst)|
|||[xsd:date](http://bp4mc2.org/def/dcat-nl/Datum)|
|||[xml:lang](http://bp4mc2.org/def/dcat-nl/Taal)|
|||[overheid:Regeling](http://bp4mc2.org/def/dcat-nl/Regeling)|
|||[overheidds:Stars](http://bp4mc2.org/def/dcat-nl/Stars)|
||||[dctype:Text](http://data.ontwikkeling.pdok.nl/dso/def/model/Document)

### Properties

|class|property|DCAT (W3)|DCAT AP-EU|DCAT AP-NL|DCAT GCO
|---|---|---|---|---|---
|[dct:LicenseDocument](http://purl.org/dc/terms/LicenseDocument)|dct:type||[Rec->Man](http://www.w3.org/ns/shacl#Violation)||
|[dct:PeriodOfTime](http://purl.org/dc/terms/PeriodOfTime)|schema:endDate||[Opt->Opt](http://www.w3.org/ns/shacl#Info)||
|[dct:PeriodOfTime](http://purl.org/dc/terms/PeriodOfTime)|schema:startDate||[Opt->Opt](http://www.w3.org/ns/shacl#Info)||
|[spdx:Checksum](http://spdx.org/rdf/terms#Checksum)|spdx:algorithm||[Opt->Man](http://www.w3.org/ns/shacl#Violation)||
|[spdx:Checksum](http://spdx.org/rdf/terms#Checksum)|spdx:checksumValue||[Opt->Man](http://www.w3.org/ns/shacl#Violation)||
|[skos:Concept](http://www.w3.org/2004/02/skos/core#Concept)|skos:inScheme|skos:inScheme|||
|[skos:Concept](http://www.w3.org/2004/02/skos/core#Concept)|skos:prefLabel||[Rec->Man](http://www.w3.org/ns/shacl#Violation)||
|[skos:ConceptScheme](http://www.w3.org/2004/02/skos/core#ConceptScheme)|dct:title||[Rec->Man](http://www.w3.org/ns/shacl#Violation)||
|[adms:Identifier](http://www.w3.org/ns/adms#Identifier)|skos:notation||[Opt->Man](http://www.w3.org/ns/shacl#Violation)||
|[dcat:Catalog](http://www.w3.org/ns/dcat#Catalog)|dcat:dataset|dcat:dataset|[Man->Man](http://www.w3.org/ns/shacl#Violation)|[Man->Man](http://www.w3.org/ns/shacl#Violation)|dcat:dataset
|[dcat:Catalog](http://www.w3.org/ns/dcat#Catalog)|dcat:record|dcat:record|[Man->Opt](http://www.w3.org/ns/shacl#Info)||dcat:record
|[dcat:Catalog](http://www.w3.org/ns/dcat#Catalog)|dcat:themeTaxonomy|dcat:themeTaxonomy|[Man->Rec](http://www.w3.org/ns/shacl#Warning)|[Man->Opt](http://www.w3.org/ns/shacl#Info)|dcat:themeTaxonomy
|[dcat:Catalog](http://www.w3.org/ns/dcat#Catalog)|dct:description|dct:description|[Man->Man](http://www.w3.org/ns/shacl#Violation)|[Man->Man](http://www.w3.org/ns/shacl#Violation)|dct:description
|[dcat:Catalog](http://www.w3.org/ns/dcat#Catalog)|dct:identifier|||[Man->Man](http://www.w3.org/ns/shacl#Violation)|
|[dcat:Catalog](http://www.w3.org/ns/dcat#Catalog)|dct:issued|dct:issued|[Man->Rec](http://www.w3.org/ns/shacl#Warning)|[Man->Opt](http://www.w3.org/ns/shacl#Info)|dct:issued
|[dcat:Catalog](http://www.w3.org/ns/dcat#Catalog)|dct:language|dct:language|[Man->Rec](http://www.w3.org/ns/shacl#Warning)|[Man->Man](http://www.w3.org/ns/shacl#Violation)|dct:language
|[dcat:Catalog](http://www.w3.org/ns/dcat#Catalog)|dct:license|dct:license|[Man->Rec](http://www.w3.org/ns/shacl#Warning)|[Man->Opt](http://www.w3.org/ns/shacl#Info)|dct:license
|[dcat:Catalog](http://www.w3.org/ns/dcat#Catalog)|dct:modified|dct:modified|[Man->Rec](http://www.w3.org/ns/shacl#Warning)|[Man->Man](http://www.w3.org/ns/shacl#Violation)|dct:modified
|[dcat:Catalog](http://www.w3.org/ns/dcat#Catalog)|dct:publisher, foaf:Agent|dct:publisher|[Man->Man](http://www.w3.org/ns/shacl#Violation)|[Man->Man](http://www.w3.org/ns/shacl#Violation)|foaf:Agent
|[dcat:Catalog](http://www.w3.org/ns/dcat#Catalog)|dct:rights|dct:rights|[Man->Opt](http://www.w3.org/ns/shacl#Info)|[Man->Opt](http://www.w3.org/ns/shacl#Info)|dct:rights
|[dcat:Catalog](http://www.w3.org/ns/dcat#Catalog)|dct:spatial|dct:spatial|[Man->Opt](http://www.w3.org/ns/shacl#Info)||dct:spatial
|[dcat:Catalog](http://www.w3.org/ns/dcat#Catalog)|dct:title|dct:title|[Man->Man](http://www.w3.org/ns/shacl#Violation)|[Man->Man](http://www.w3.org/ns/shacl#Violation)|dct:title
|[dcat:Catalog](http://www.w3.org/ns/dcat#Catalog)|foaf:homepage|foaf:homepage|[Man->Rec](http://www.w3.org/ns/shacl#Warning)|[Man->Rec](http://www.w3.org/ns/shacl#Warning)|foaf:homepage
|[dcat:Catalog](http://www.w3.org/ns/dcat#Catalog)|dct:hasPart||[Man->Opt](http://www.w3.org/ns/shacl#Info)||
|[dcat:Catalog](http://www.w3.org/ns/dcat#Catalog)|dct:isPartOf||[Man->Opt](http://www.w3.org/ns/shacl#Info)||
|[dcat:CatalogRecord](http://www.w3.org/ns/dcat#CatalogRecord)|adms:status||[Opt->Rec](http://www.w3.org/ns/shacl#Warning)|[Opt->Rec](http://www.w3.org/ns/shacl#Warning)|
|[dcat:CatalogRecord](http://www.w3.org/ns/dcat#CatalogRecord)|dcat:Catalog|||[Opt->Man](http://www.w3.org/ns/shacl#Violation)|
|[dcat:CatalogRecord](http://www.w3.org/ns/dcat#CatalogRecord)|dcat:identifier|||[Opt->Man](http://www.w3.org/ns/shacl#Violation)|
|[dcat:CatalogRecord](http://www.w3.org/ns/dcat#CatalogRecord)|dct:description|dct:description|[Opt->Opt](http://www.w3.org/ns/shacl#Info)|[Opt->Opt](http://www.w3.org/ns/shacl#Info)|dct:description
|[dcat:CatalogRecord](http://www.w3.org/ns/dcat#CatalogRecord)|dct:issued|dct:issued|[Opt->Rec](http://www.w3.org/ns/shacl#Warning)|[Opt->Opt](http://www.w3.org/ns/shacl#Info)|dct:issued
|[dcat:CatalogRecord](http://www.w3.org/ns/dcat#CatalogRecord)|dct:modified|dct:modified|[Opt->Man](http://www.w3.org/ns/shacl#Violation)|[Opt->Man](http://www.w3.org/ns/shacl#Violation)|dct:modified
|[dcat:CatalogRecord](http://www.w3.org/ns/dcat#CatalogRecord)|dct:title|dct:title|[Opt->Opt](http://www.w3.org/ns/shacl#Info)|[Opt->Opt](http://www.w3.org/ns/shacl#Info)|dct:title
|[dcat:CatalogRecord](http://www.w3.org/ns/dcat#CatalogRecord)|foaf:primaryTopic|foaf:primaryTopic|[Opt->Man](http://www.w3.org/ns/shacl#Violation)|[Opt->Man](http://www.w3.org/ns/shacl#Violation)|foaf:primaryTopic
|[dcat:CatalogRecord](http://www.w3.org/ns/dcat#CatalogRecord)|dct:conformsTo||[Opt->Rec](http://www.w3.org/ns/shacl#Warning)||
|[dcat:CatalogRecord](http://www.w3.org/ns/dcat#CatalogRecord)|dct:language||[Opt->Opt](http://www.w3.org/ns/shacl#Info)||
|[dcat:CatalogRecord](http://www.w3.org/ns/dcat#CatalogRecord)|dct:source||[Opt->Opt](http://www.w3.org/ns/shacl#Info)||
|[dcat:Dataset](http://www.w3.org/ns/dcat#Dataset)|adms:version|||[Man->Opt](http://www.w3.org/ns/shacl#Info)|
|[dcat:Dataset](http://www.w3.org/ns/dcat#Dataset)|adms:versionNotes||[Man->Opt](http://www.w3.org/ns/shacl#Info)|[Man->Opt](http://www.w3.org/ns/shacl#Info)|
|[dcat:Dataset](http://www.w3.org/ns/dcat#Dataset)|dcat:contactPoint|dcat:contactPoint|[Man->Rec](http://www.w3.org/ns/shacl#Warning)||
|[dcat:Dataset](http://www.w3.org/ns/dcat#Dataset)|dcat:distribution|dcat:distribution|[Man->Rec](http://www.w3.org/ns/shacl#Warning)|[Man->Rec](http://www.w3.org/ns/shacl#Warning)|
|[dcat:Dataset](http://www.w3.org/ns/dcat#Dataset)|dcat:keyword|dcat:keyword|[Man->Rec](http://www.w3.org/ns/shacl#Warning)|[Man->Rec](http://www.w3.org/ns/shacl#Warning)|
|[dcat:Dataset](http://www.w3.org/ns/dcat#Dataset)|dcat:landingPage|dcat:landingPage|[Man->Opt](http://www.w3.org/ns/shacl#Info)|[Man->Rec](http://www.w3.org/ns/shacl#Warning)|
|[dcat:Dataset](http://www.w3.org/ns/dcat#Dataset)|dcat:theme|dcat:theme|[Man->Rec](http://www.w3.org/ns/shacl#Warning)|[Man->Rec](http://www.w3.org/ns/shacl#Warning)|
|[dcat:Dataset](http://www.w3.org/ns/dcat#Dataset)|dct:accrualPeriodicity|dct:accrualPeriodicity|[Man->Opt](http://www.w3.org/ns/shacl#Info)|[Man->Opt](http://www.w3.org/ns/shacl#Info)|
|[dcat:Dataset](http://www.w3.org/ns/dcat#Dataset)|dct:conformsTo||[Man->Opt](http://www.w3.org/ns/shacl#Info)|[Man->Opt](http://www.w3.org/ns/shacl#Info)|
|[dcat:Dataset](http://www.w3.org/ns/dcat#Dataset)|dct:description|dct:description|[Man->Man](http://www.w3.org/ns/shacl#Violation)|[Man->Man](http://www.w3.org/ns/shacl#Violation)|dct:description
|[dcat:Dataset](http://www.w3.org/ns/dcat#Dataset)|dct:identifier|dct:identifier|[Man->Opt](http://www.w3.org/ns/shacl#Info)|[Man->Man](http://www.w3.org/ns/shacl#Violation)|
|[dcat:Dataset](http://www.w3.org/ns/dcat#Dataset)|dct:issued||[Man->Opt](http://www.w3.org/ns/shacl#Info)|[Man->Opt](http://www.w3.org/ns/shacl#Info)|dct:issued
|[dcat:Dataset](http://www.w3.org/ns/dcat#Dataset)|dct:language|dct:language|[Man->Opt](http://www.w3.org/ns/shacl#Info)|[Man->Man](http://www.w3.org/ns/shacl#Violation)|dct:language
|[dcat:Dataset](http://www.w3.org/ns/dcat#Dataset)|dct:license|||[Man->Rec](http://www.w3.org/ns/shacl#Warning)|
|[dcat:Dataset](http://www.w3.org/ns/dcat#Dataset)|dct:modified|dct:modified|[Man->Opt](http://www.w3.org/ns/shacl#Info)|[Man->Man](http://www.w3.org/ns/shacl#Violation)|
|[dcat:Dataset](http://www.w3.org/ns/dcat#Dataset)|dct:publisher|dct:publisher|[Man->Rec](http://www.w3.org/ns/shacl#Warning)|[Man->Rec](http://www.w3.org/ns/shacl#Warning)|
|[dcat:Dataset](http://www.w3.org/ns/dcat#Dataset)|dct:rights|||[Man->Opt](http://www.w3.org/ns/shacl#Info)|
|[dcat:Dataset](http://www.w3.org/ns/dcat#Dataset)|dct:spatial|dct:spatial|[Man->Opt](http://www.w3.org/ns/shacl#Info)|[Man->Rec](http://www.w3.org/ns/shacl#Warning)|
|[dcat:Dataset](http://www.w3.org/ns/dcat#Dataset)|dct:temporal|dct:temporal|[Man->Opt](http://www.w3.org/ns/shacl#Info)|[Man->Rec](http://www.w3.org/ns/shacl#Warning)|
|[dcat:Dataset](http://www.w3.org/ns/dcat#Dataset)|dct:title|dct:title|[Man->Man](http://www.w3.org/ns/shacl#Violation)|[Man->Man](http://www.w3.org/ns/shacl#Violation)|dct:title
|[dcat:Dataset](http://www.w3.org/ns/dcat#Dataset)|overheid:authority|||[Man->Man](http://www.w3.org/ns/shacl#Violation)|
|[dcat:Dataset](http://www.w3.org/ns/dcat#Dataset)|overheid:grondslag|||[Man->Opt](http://www.w3.org/ns/shacl#Info)|
|[dcat:Dataset](http://www.w3.org/ns/dcat#Dataset)|overheidds:LODStars|||[Man->Opt](http://www.w3.org/ns/shacl#Info)|
|[dcat:Dataset](http://www.w3.org/ns/dcat#Dataset)|overheidds:doel|||[Man->Opt](http://www.w3.org/ns/shacl#Info)|
|[dcat:Dataset](http://www.w3.org/ns/dcat#Dataset)|overheidds:kwaliteit|||[Man->Opt](http://www.w3.org/ns/shacl#Info)|
|[dcat:Dataset](http://www.w3.org/ns/dcat#Dataset)|adms:identifier||[Man->Opt](http://www.w3.org/ns/shacl#Info)||
|[dcat:Dataset](http://www.w3.org/ns/dcat#Dataset)|adms:sample||[Man->Opt](http://www.w3.org/ns/shacl#Info)||
|[dcat:Dataset](http://www.w3.org/ns/dcat#Dataset)|dct:accessRights||[Man->Opt](http://www.w3.org/ns/shacl#Info)||
|[dcat:Dataset](http://www.w3.org/ns/dcat#Dataset)|dct:hasVersion||[Man->Opt](http://www.w3.org/ns/shacl#Info)||
|[dcat:Dataset](http://www.w3.org/ns/dcat#Dataset)|dct:isVersionOf||[Man->Opt](http://www.w3.org/ns/shacl#Info)||
|[dcat:Dataset](http://www.w3.org/ns/dcat#Dataset)|dct:provenance||[Man->Opt](http://www.w3.org/ns/shacl#Info)||
|[dcat:Dataset](http://www.w3.org/ns/dcat#Dataset)|dct:relation||[Man->Opt](http://www.w3.org/ns/shacl#Info)||
|[dcat:Dataset](http://www.w3.org/ns/dcat#Dataset)|dct:source||[Man->Opt](http://www.w3.org/ns/shacl#Info)||
|[dcat:Dataset](http://www.w3.org/ns/dcat#Dataset)|dct:type||[Man->Opt](http://www.w3.org/ns/shacl#Info)||
|[dcat:Dataset](http://www.w3.org/ns/dcat#Dataset)|foaf:page||[Man->Opt](http://www.w3.org/ns/shacl#Info)||
|[dcat:Dataset](http://www.w3.org/ns/dcat#Dataset)|owl:versionInfo||[Man->Opt](http://www.w3.org/ns/shacl#Info)||
|[dcat:Distribution](http://www.w3.org/ns/dcat#Distribution)|adms:status||[Rec->Opt](http://www.w3.org/ns/shacl#Info)|[Rec->Opt](http://www.w3.org/ns/shacl#Info)|
|[dcat:Distribution](http://www.w3.org/ns/dcat#Distribution)|dcat:accessURL|dcat:accessURL|[Rec->Man](http://www.w3.org/ns/shacl#Violation)|[Rec->Man](http://www.w3.org/ns/shacl#Violation)|
|[dcat:Distribution](http://www.w3.org/ns/dcat#Distribution)|dcat:byteSize|dcat:byteSize|[Rec->Opt](http://www.w3.org/ns/shacl#Info)||
|[dcat:Distribution](http://www.w3.org/ns/dcat#Distribution)|dcat:downloadURL|dcat:downloadURL|[Rec->Opt](http://www.w3.org/ns/shacl#Info)|[Rec->Rec](http://www.w3.org/ns/shacl#Warning)|
|[dcat:Distribution](http://www.w3.org/ns/dcat#Distribution)|dcat:mediaType|dcat:mediaType|[Rec->Opt](http://www.w3.org/ns/shacl#Info)||
|[dcat:Distribution](http://www.w3.org/ns/dcat#Distribution)|dct:description|dct:description|[Rec->Rec](http://www.w3.org/ns/shacl#Warning)|[Rec->Rec](http://www.w3.org/ns/shacl#Warning)|
|[dcat:Distribution](http://www.w3.org/ns/dcat#Distribution)|dct:format|dct:format|[Rec->Rec](http://www.w3.org/ns/shacl#Warning)|[Rec->Rec](http://www.w3.org/ns/shacl#Warning)|
|[dcat:Distribution](http://www.w3.org/ns/dcat#Distribution)|dct:issued|dct:issued|[Rec->Opt](http://www.w3.org/ns/shacl#Info)|[Rec->Opt](http://www.w3.org/ns/shacl#Info)|
|[dcat:Distribution](http://www.w3.org/ns/dcat#Distribution)|dct:license|dct:license|[Rec->Rec](http://www.w3.org/ns/shacl#Warning)||
|[dcat:Distribution](http://www.w3.org/ns/dcat#Distribution)|dct:modified|dct:modified|[Rec->Opt](http://www.w3.org/ns/shacl#Info)|[Rec->Rec](http://www.w3.org/ns/shacl#Warning)|
|[dcat:Distribution](http://www.w3.org/ns/dcat#Distribution)|dct:rights|dct:rights|[Rec->Opt](http://www.w3.org/ns/shacl#Info)||
|[dcat:Distribution](http://www.w3.org/ns/dcat#Distribution)|dct:title|dct:title|[Rec->Opt](http://www.w3.org/ns/shacl#Info)|[Rec->Opt](http://www.w3.org/ns/shacl#Info)|
|[dcat:Distribution](http://www.w3.org/ns/dcat#Distribution)|dct:conformsTo||[Rec->Opt](http://www.w3.org/ns/shacl#Info)||
|[dcat:Distribution](http://www.w3.org/ns/dcat#Distribution)|dct:language||[Rec->Opt](http://www.w3.org/ns/shacl#Info)||
|[dcat:Distribution](http://www.w3.org/ns/dcat#Distribution)|foaf:page||[Rec->Opt](http://www.w3.org/ns/shacl#Info)||
|[dcat:Distribution](http://www.w3.org/ns/dcat#Distribution)|spdx:checksum||[Rec->Opt](http://www.w3.org/ns/shacl#Info)||
|[foaf:Agent](http://xmlns.com/foaf/0.1/Agent)|dct:type||[Man->Rec](http://www.w3.org/ns/shacl#Warning)||
|[foaf:Agent](http://xmlns.com/foaf/0.1/Agent)|foaf:name||[Man->Man](http://www.w3.org/ns/shacl#Violation)||


