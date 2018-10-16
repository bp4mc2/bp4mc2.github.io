# PROV Application profile for provenance information


Administrative aspects are recorded in accordance with the prov ontology. This involves who, what, when and for whatever reason has been recorded or changed.

* To this end, concepts and their metadata, collections, catalogs, datasets and distributions are described in a prov:Entity.
* No provenance is recorded on the information model and the conceptual model. This is done via the abstract and concrete data set.

A change in the data is recorded in an sd:graph (the set of changed elements in 1 transaction). This change comes from a prov:Agent. This prov:Agent must be authorized to make such a change. This means that the prov:Agent is also known as a foaf:Agent in a list of parties (actually a list of organizations). Via the dcterms:publisher relationship, it is clear who is the publisher of a dataset, and thus the person who is allowed to make changes to the information about this dataset.


![](prov-ap-sc.png)

