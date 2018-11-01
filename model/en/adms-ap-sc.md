# ADMS Application profile for asset descriptions


ADMS is the W3C standard for describing 'semantic assets' that are used at eGovernment. In a system catalog it is specifically about reusable metadata on
* taxonomies or dictionaries that contain the concept scheme that contains the 'topics of interest' of a dataset (general).
* reference data and controlled vocabularies from a dataset (general) that can be reused in other domains.
* data models of a dataset (version) or of a dataset (product).

Every metadata description, in ADMS an asset, can have its own webpage.

A metadata description can be published in various ways, for example as a pdf download, as a ttl description or as a html description. For controlled vocabularies also csv and xml / gc (genericode) are common. For data models XMI is common as an exchange format for UML representations. Every format in which a metadata description (adms: Asset) is published can be explicitly described as distirbution (adms: Distribution).

Provenance can be tracked of metadata descriptions and distributions.
* For concept schemes and for reference data or controlled vocabularies, that are usually managed in a of 'continious delivery' process. This means that the metadata description is published once. The provenance is then managed at the level of a concept or reference entity.
* In addition, controlled vocabularies can periodically releases. Each release then becomes a new version of the metadata description.
* Data models are always published or released in full at once. Each release receives a new version of the metadata description.


![](adms-ap-sc.png)

## Asset


### Properties


### Relations


## Asset distribution


### Properties


### Relations


## Landing page


### Properties


### Relations


## Download format


### Properties


### Relations


## Uri strategy


Assets en asset distributions get a uri according to the pattern:

* `http://{domain}/id/{asset-type}/{UpperCamelCase(rdfs:label)}` for assets
* `http://{domain}/id/{asset-type}/{UpperCamelCase(rdfs:label)}.{extension}` for asset distributions

Depending on the type of asset, `{asset-type}` is one of the following values:
* `codelist` voor waardelijsten;
* `scheme` voor begrippenkaders;
* `model` voor informatiemodellen.

And for `{extension}` the regular extensions for file types are used:
* `ttl` for turtle files;
* `pdf` for pdf files;
* `xml` for xml files.


