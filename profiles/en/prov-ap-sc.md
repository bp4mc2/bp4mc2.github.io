# PROV Application profile for provenance information


Formal/legal validity and administrative aspects are recorded in accordance with the prov ontology. This involves who, what, when and for whatever reason has been recorded or changed.

* To this end metadata are described in a prov:Entity.
* The system catalog itself is the most generic entity on which provenance is recorded. This means that all changes in the catalog description are kept.
* Provenance is also recorded on the descriptions of datasets (dataset, dataset version and dataset product) and (dataset) distributions.
* For concepts models, value lists and information models, which are described as an asset, provenance is recorded on the asset description and on the asset distribution description.
* For concepts and collections provenance is recorded per concept and collection.

The provenance has two aspects:
* The formal and legal validity.
** The formal validity is recorded in the formal issued date. The formal status can also be established. For the formal status the EU value list for statuses (adms:status) is used.
** The legal validity in time and place can be recorded in a time period and in a reference to a geographical area.
** For concepts and collections of concepts that originate from the underlying laws and regulations, this period of time is the period as laid down in those laws and regulations. The geographical area is the area over which the relevant competent authority has jurisdiction.
* The administrative / household aspects.
** A change in the data is recorded in an sd:graph. The graph is the collection of changed elements in 1 transaction.
** This change is made by a prov:agent.
** This prov:agent must be authorized to make such a change. This implies that the prov:agent needs to be known as a foaf:Agent in a list of parties (actually a list of organizations). Via the dcterms:publisher relationship, it is clear who is the publicist of a dataset, and thus who is allowed to make changes to the information about this dataset.


![](prov-ap-sc.png)

## Metadata

|!form data#Entity!Klasse|Waarde
|----------|------
|Used term|[prov:Entity](http://www.w3.org/ns/prov#Entity)
|Description|Metadata of a version of an entity can be described.
|Properties en relations|[change note](#Entity_changeNote), [date issued](#Entity_isIssued), [temporal validity](#Entity_isValidDuring), [spatial validity](#Entity_isvalidWithin), [status](#Entity_status)


### Properties

|!form data#Entity_changeNote!Eigenschap|change note
|----------|------
|Used term|[skos:changeNote](http://www.w3.org/2004/02/skos/core#changeNote)
|Datatype|[Text](http://www.w3.org/2001/XMLSchema#string)
|Description|The reason for a version and other points of attention in a version can be explained.

|!form data#Entity_isIssued!Eigenschap|date issued
|----------|------
|Used term|[dcterms:issued](http://purl.org/dc/terms/issued)
|Datatype|[Date/time](http://www.w3.org/2001/XMLSchema#dateTime)
|Description|A version can be issued from a certain moment in time.
|Max card.|1


### Relations

|!form data#Entity_isValidDuring!Eigenschap|temporal validity
|----------|------
|Used term|[dcterms:temporal](http://purl.org/dc/terms/temporal)
|Refers to|[dcterms:PeriodOfTime](#PeriodOfTime)
|Description|A version can be formally / legally valid for a period.
|Example|22/10/2017 - 
|Max card.|1

|!form data#Entity_isvalidWithin!Eigenschap|spatial validity
|----------|------
|Used term|[dcterms:spatial](http://purl.org/dc/terms/spatial)
|Refers to|[dcterms:Location](#Location)
|Description|A version can be formally / legally valid in an geographical area.
|Example|gemeente Apeldoorn
|Max card.|1

|!form data#Entity_status!Eigenschap|status
|----------|------
|Used term|[adms:status](http://www.w3.org/ns/adms#status)
|Related with|[Controlled vocabulary status](#Status)
|Description|A version has an administrative status based on the ADMS list of values.
|Min card.|1
|Max card.|1


## Status

|!form data#Status!Klasse|Controlled vocabulary status
|----------|------
|Description|A version can hav an administrative status that is based on the ADMS controlled vocabulary.
|Controlled vocabulary|[http://purl.org/adms/status/1.0](http://purl.org/adms/status/1.0)


## Period of time

|!form data#PeriodOfTime!Klasse|Time period
|----------|------
|Used term|[dcterms:PeriodOfTime](http://purl.org/dc/terms/PeriodOfTime)
|Description|A period of time is pointed out by a start date and end date.
|Properties en relations|[end](#PeriodOfTime_end), [start](#PeriodOfTime_start)


### Properties

|!form data#PeriodOfTime_end!Eigenschap|end
|----------|------
|Used term|[dcmiperiod:end](http://dublincore.org/documents/2006/04/10/dcmi-period/end)
|Datatype|[Date/time](http://www.w3.org/2001/XMLSchema#dateTime)
|Description|A period of time ends at a certain date. This date can be unknown (empty).
|Example|01/08/2018
|Max card.|1

|!form data#PeriodOfTime_start!Eigenschap|start
|----------|------
|Used term|[dcmiperiod:start](http://dublincore.org/documents/2006/04/10/dcmi-period/start)
|Datatype|[Date/time](http://www.w3.org/2001/XMLSchema#dateTime)
|Description|A period of time starts at a certain date. This date can be unknown (empty).
|Example|22/10/2017
|Max card.|1


## Geographical area

|!form data#Location!Klasse|Geographical area
|----------|------
|Used term|[dcterms:Location](http://purl.org/dc/terms/Location)
|Description|The description of the geographical area in which a version is valid.


## Data graph

|!form data#ProvenanceGraph!Klasse|Data graph
|----------|------
|Used term|[sd:Graph](http://www.w3.org/ns/sparql-service-description#Graph)
|Description|The data graph contains both the concrete data (represented by a prov:Entity), and the metadata of the prov:Entity, that is: an sd:Graph
|Properties en relations|[was attributed to](#ProvenanceGraph_attributedTo), [change note](#ProvenanceGraph_changeNote), [registration moment](#ProvenanceGraph_generatedAtTime)


### Properties

|!form data#ProvenanceGraph_changeNote!Eigenschap|change note
|----------|------
|Used term|[skos:changeNote](http://www.w3.org/2004/02/skos/core#changeNote)
|Datatype|[Text](http://www.w3.org/2001/XMLSchema#string)
|Description|The reason for a set of related changes can be explained.

|!form data#ProvenanceGraph_generatedAtTime!Eigenschap|registration moment
|----------|------
|Used term|[prov:generatedAtTime](http://www.w3.org/ns/prov#generatedAtTime)
|Datatype|[Date/time](http://www.w3.org/2001/XMLSchema#dateTime)
|Description|The date and time of the administrative operation can be saved. This way you can always retrieve what information was known at what time.


### Relations

|!form data#ProvenanceGraph_attributedTo!Eigenschap|was attributed to
|----------|------
|Used term|[prov:wasAttributedTo](http://www.w3.org/ns/prov#wasAttributedTo)
|Refers to|[prov:Agent](#Agent)
|Description|The person or organization that made or let make the change can be recorded.


## Agent (provenance)

|!form data#Agent!Klasse|Agent (provenance)
|----------|------
|Used term|[prov:Agent](http://www.w3.org/ns/prov#Agent)
|Description|The person or organization that is responsible for an activity, the creation of a entity or an activity of another can be recorded.
|Properties en relations|[acted on behalf of](#Agent_OnBehalfOf)


### Relations

|!form data#Agent_OnBehalfOf!Eigenschap|acted on behalf of
|----------|------
|Used term|[prov:actedOnBehalfOf](http://www.w3.org/ns/prov#actedOnBehalfOf)
|Refers to|[prov:Organization](#Organization)
|Description|A person or organization can act on behalf of another person or organization.


## Person (provenance)

|!form data#ProvenancePerson!Klasse|Person (provenance)
|----------|------
|Used term|[prov:Person](http://www.w3.org/ns/prov#Person)
|Description|An agent (provenance can be a human.


## Software agent

|!form data#ProvenanceSoftwareAgent!Klasse|Software agent
|----------|------
|Used term|[prov:SoftwareAgent](http://www.w3.org/ns/prov#SoftwareAgent)
|Description|An agent (provenance can be an automated routine.


## Organization (provenance)

|!form data#Organization!Klasse|Organization (provenance)
|----------|------
|Used term|[prov:Organization](http://www.w3.org/ns/prov#Organization)
|Description|An agent (provenance can be an organization.


## Registered Agent

|!form data#FoafAgent!Klasse|Agent (foaf)
|----------|------
|Used term|[foaf:Agent](http://xmlns.com/foaf/0.1/Agent)
|Description|The person or organization that is responsible for a dataset.


## Organization (foaf)

|!form data#FoafOrganization!Klasse|Organization (foaf)
|----------|------
|Used term|[foaf:Organization](http://xmlns.com/foaf/0.1/Organization)
|Description|The organization that is responsible for a dataset.


## Organization (org)

|!form data#OrgOrganization!Klasse|Organization (org)
|----------|------
|Used term|[org:Organization](http://www.w3.org/ns/org#Organization)
|Description|The organization as included in the formal list with OIN numbers.
|Properties en relations|[has OIN](#OrgOrganization_oin)


### Properties

|!form data#OrgOrganization_oin!Eigenschap|has OIN
|----------|------
|Used term|[org:identifier](http://www.w3.org/ns/org#identifier)
|Datatype|[Text](http://www.w3.org/2001/XMLSchema#string)
|Description|The organization that is responsible for a dataset is included in the formal list with OIN numbers.
|Min card.|1
|Max card.|1


## Uri strategy


* The information about an entity as valid at a certain time can be requested via the doc-uri, supplemented with yyyy/mm/dd
#* The information about a location as valid at a certain place can be requested via the doc-uri, supplemented with {UpperCamelCase (rdfs:label of the Location)}


