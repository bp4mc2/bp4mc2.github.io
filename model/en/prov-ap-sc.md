# Application profile for provenance information


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


### Properties


### Relations


## Adms status


## Metadata


### Time period


## Geographical area


## Provenance graph


### Properties


### Relations


## Agent (provenance)


### Properties


### Relations


## Person (provenance)


## Software agent


## Organization (provenance)


## Agent (foaf)


## Organization (foaf)


## Organization (org)


## Uri strategy


* The information about an entity as valid at a certain time can be requested via the doc-uri, supplemented with yyyy/mm/dd
#* The information about a location as valid at a certain place can be requested via the doc-uri, supplemented with {UpperCamelCase (rdfs:label of the Location)}


