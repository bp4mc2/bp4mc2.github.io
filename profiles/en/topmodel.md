# System catalog


In a digital system, data, metadata such as quality and origin of the data and meaning of that data from different domains are managed in a coherent way. Examples in the Netherlands are the system for the key registers with the domains ‘persons’, ‘legal entities’, ‘income’, ‘Land Registry’, etc. and the digital system for the Environmental Act with the domains of laws and regulations at the one hand and information domains concerning air, water, earth (public space). ) and fire (public safety) on the other hand. A European example is Inspire, a digital network for the exchange of environmental data for European member states.

To represent the related meaning and metadata of data in various contexts, a kind of 'catalog' is required, a system catalog. In this age of digital transformation, this is a digital catalog in which meaning and metadata is available digitally via the web using standardized web technologies.

The W3C has standardized vocabularies to describe meaning and metadata. Use of these standards leads to interoperability and transparency.
* DCAT is the standard for describing catalogs, with the profiles DCAT-NL and geo-DCAT-NL for the Dutch government and the Inspire dataset descriptions.
* ADMS is the standard for describing 'semantic assets' that are used within eGovernment. This concerns reusable metadata such as data models and reference data such as controlled vocabularies and taxonomies/dictionaries.
* SKOS is the standard for publishing taxonomies. A taxonomy contains the concepts and controlled vocabularies within a certain domain.
* SKOS-LEX is presented as a 'legal extension' on SKOS for describing events and/or (legal acts).
* FRBR is the standard that enables to refer to a source (for example a legal article) in general or a version of a source as it was valid at a certain moment in time. This is important for formal concepts, which are usually defined in a decree.
* Controlled Vocabularies are used to publish lists with elements in a certain domain, so that these can be used outside that domain.
* An data model can be seen as a design of a structure in which data about things that are indicated by concepts in the semantic model can be stored. The Metamodel for Data Models (MIM) originally defined by VNG, Geonovum and Kadaster is the standard for describing data models. Data models in accordance with MIM can be represented in UML or in RDF (OWL / SHACL).
* DQV is the standard for describing quality dimensions.
* PROV-O is the standard for describing the provenance of all these elements.

These standards have been developed separately from each other. The application profiles for a system catalog are on the one hand intended to specify how these standards are applied in the context of a system catalog and on the other hand how they are interrelated. The application profiles can all be seen as a 'best practice' for the application of a standard in a catalog. They are therefore building blocks with which a complete catalog can be set up, but which can also be used separately. For example, a taxonomy can be published using the SKOS application profile for the system catalog (skos-ap-sc). The relationships between the different application profiles is shown in the figure below. Each application profile is described separately.


![](topmodel.png)

