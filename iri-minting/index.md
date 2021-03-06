# IRI-minting

## 1. Introduction
One of the important steps during the creation of data on the web is the minting of IRI's for your resources. An IRI can be compared to the primary key of a resource in a database, with the unique feature that an IRI can be universally unique, which is a nice feature when you want to combine data from different datasets, or when you want others to use your IRI's. Another unique feature is that (in some cases) this IRI can directly be used as a request for information about the resource that is identified by the IRI.

The is huge! It means that if you mint IRI's the proper way:

- Everybody in the whole world can use your IRI as primary or foreign key, without the need of changing anything;
- Everybody in the whole world can use your IRI to retrieve information you have about the resource, without the need for any more information!

Compare this to a typical primary key in a typical database, for example "5010":

- Nobody can use "5010" as a primary or foreign key, except when it is stored in a particular column of a table in a specific database;
- Nobody can retrieve any information about "5010", except when some API is available and it is clear in which way "5010" can be used with this API.

This article describes the best practices with regard to the minting of IRI's. It answers the following questions:

1. Should I mint IRI's, URI's, URL's or URN's??
2. Should I use http or https??
3. Should I use hash-URI's??
4. What pattern should I use for my IRI's??
5. And what about API URL's?

A best practice is formulated from these answers. This article starts with the resulting best practice and then continues with the answers to these questions (which is a bit more in depth and only needed for understanding the rational behind the best practice).

## 2. Some important terms

To understand the best practices formulated in this document, it is important to have a clear understanding of some terms that are used in these best practices. Background information behind these terms can be found in the document [Fundamentals of Linked Data Modeling](https://bp4mc2.org/modeling).

### 2.1 Information resource

By design, an IRI identifies a resource [[WEBARCH, section 2.2]](https://www.w3.org/TR/webarch/#id-resources). The term "resource" is used in a general sense for whatever might be identified by an IRI. Traditionally, IRI's are used to identify web pages, images, downloadable files, etc as resources. The distinguishing characteristic of these resources is that all of their essential characteristics can be conveyed in a message. The term **information resource** is used for these kind of resources.

### 2.2 Non-information resource

The scope of a IRI is not limited to only identify information resources. An IRI might also identify a car, a person or even an abstract notion as "happiness". Such things cannot be conveyed in a message. We can talk about such things, but the talk is not the same as the thing itself, as is clearly depicted in Magritte's famous picture [The Treachery of Images](https://en.wikipedia.org/wiki/The_Treachery_of_Images).

Non-information resources are by definition resources that are not information resources. They can be identified by a IRI, but they cannot be retrieved by a webserver (as a webserver can only retrieve information resources).

You could, however, request a non-information resource. Although a webserver cannot retrieve such a non-information resource, it might retrieve an information resource *about* the non-information resource. The best practice [[COOLURI]](https://www.w3.org/TR/cooluris) describes how this should be done.

### 2.3 Resource
A resource is something that can be identified by an IRI. A resource might be an information resource or a non-information resource.

### 2.4 Information resource version
The information that is retrieved by a webserver when someone requests an IRI might change over time, while the identifier itself might remain the same. An *information resource version* is the retrieved information at a certain point in time. The IRI that identifies such an information resource version should always identify the same information. We used the term *information resource* to identify the information resource regardless of its particular version and we used the term *information resource version* to identify a particular version.

When someone uses the IRI of the information resource, a webserver should decide which particular version should be retrieved. Common practice is to retrieve the most current version. When some uses the IRI of the information resource version, a webserver should always retrieve the same information (or a 404 if the information doesn't exists at the particular webserver).

### 2.5 Information resource version format
The information version that is retrieved by a webserver can be serialized in different formats. Common practice is to use the http-accept header to find out what format is most appropriate. When someone uses the IRI of the information resource version, a webserver should decide which particular format should be used for serialization. Common Linked Data formats are JSON-LD, Turtle or RDF/XML. When information is requested by a human via a webbrowser, a HTML representation might be more appropriate.

To mint the IRI for the information resource version format, a common practice is to use the IRI for the information resource version and suffix this IRI with the file extension for the particular format, for example `.jsonld`, `.ttl`, `.rdf` or `.html`.

### 2.6 Dereferenceable IRI
A dereferenceable IRI is an IRI that can be directly used in a request to a webserver. A request using a dereferenceable IRI must be answered by a webserver with a correct response. A dereferenceable IRI usually starts with `http` or `https`, following by the domain at which the webserver is located. The correct response is specified by the http protocol, for example a `200` response in case of a succesful retrieval of the requested information resource, or a `303` to redirect to different information resource, or a `404` in case the information resource has not been found.

### 2.6 Full example

|#|IRI|What the IRI identifies|
|-|---|-----------------------|
|IRI-1|`http://bp4mc2.org/example/id/person/JohnDoe`|The real-life person John Doe|
|IRI-2|`https://bp4mc2.org/example/doc/person/JohnDoe`|Information about the real-life person John Doe|
|IRI-3|`https://bp4mc2.org/example/doc/20090615134530123/person/JohnDoe`|The version of the information about the real-life person John Doe, as registered on the 15th of June 2009, at 13:45:30.123|
|IRI-4|`https://bp4mc2.org/example/doc/20090615134530123/person/JohnDoe.jsonld`|The JSON-LD format of the version of the information about the real-life person John Doe, as registered on the 15th of June 2009, at 13:45:30.123|

IRI-1 represents a non-information resource. IRI-2, IRI-3 and IRI-4 represent information resources. All IRI's can be requested, but only a specific information resource version format will be retrieved:

- When someone requests IRI-1, the webserver redirects the requester to IRI-2 (using a http 303 status code);
- When someone requests IRI-2, the webserver looks up the most current version, which might be the information identified by IRI-3;
- When someone requests IRI-3, the webserver uses content negotiation to find out what the most appropriate format is, which might be the format identified by IRI-4;
- When someone requests IRI-4, the webserver retrieves the requested information resource version format.

## 3. Best practice

1. Use http hash URI's for terms (properties and classes) within a vocabulary;
2. Use http IRI's for identifing non-information resources that should be directly referenceable on the web;
3. Use https URI's for identifing information resources located on the web;
4. Use non-http IRI's for identifing resources that should not be directly referenceable on the web.

### 3.1. http hash URI's for terms (properties and classes) within a vocabulary.

Common practice for RDF vocabularies is the use of hash URI's. The use of IRI's is not recommended, because this is unfriendly for developers and doesn't work well with current serialization formats.

Use the following URI template:

```
http://{domain}/{path}/def/{vocabulary}#{term}
```

- `{domain}` should be a domain that is owned by, or managed on behave of the publisher of the vocabulary;
- `{path}` is optional and can be used to distinguish between different parts of an organisation or delegations;
- `{vocabulary}` should be the name of the vocabulary with pattern `[a-z][a-z0-9\-]*`. Spaces should be converted using kebab-case (using a dash `-` instead of a space);
- `{term}` should be the name of the class or property with pattern `[A-Z][a-zA-Z0-9_]*` for classes and `[a-z][a-zA-Z0-9_]` for properties. Spaces in class or property names should be converted using CamelCase.

Example:

```
http://bag.basisregistraties.overheid.nl/def/bag#Pand
```

By definition, a hash IRI identifies a non-information resource. The corresponding information-resource that contains information about this non-information resource is identified by the IRI that can be minted from the hash URI by removing the part that starts from the hash. Example:

```
http://bag.basisregistraties.overheid.nl/def/bag
```

### 3.2. http IRI's for identifing information resources that should be directly referenceable on the web

For resources that should have retrievable information on the web, use http IRIs. Don't use https, as we are minting **identifiers** and not http endpoints. Use IRI's in case of internationalization.

Use the folllowing IRI template:

```
http://{domain}/{path}/id/{class}/{id-reference}
```

- `{domain}/{path}/id/{class}` should only use URI-compliant characters;
- `{domain}` should be a domain that is owned by, or managed on behalve of the publisher of the resource;
- `{path}` is optional and can be used to distinguish between branches or delegations;
- `{class}` should be the name of the most common class of the resource with pattern `[a-z][a-z0-9\-]*`. Spaces should be converted using kebab-case (using a dash `-` instead of a space);
- `{id-reference}` should be an identifier of the resource. This identifier might use international characters. The reference should be as close to the commonly used identifier as possible (for example: the primary key in a relational database or the identifier used in data exchange interfaces).

Example:

```
http://bag.basisregistraties.overheid.nl/bag/id/pand/0003100000117485
```

Reference or master data resources are common candidates to be identified by http IRI's. A common practice is to use a SKOS vocabulary for information about these resources. Some extra best practices are available for these cases:

- `{class}` should be `concept` in case you specifically want to refer to the concept itself;
- `{id-reference}` should be the exact term of the concept using international characters if applicable, start with a capital letter and use CamelCase for spaces.

Example:

```
http://bp4mc2.org/example/id/concept/Rosé
```

In some cases, specific reference lists or master data sets are authored. In such cases, the identification of the concept is very closely related to the reference list or master data set itself. In such cases, it is more appropriate to use the class name instead of `concept`. A notation or 'code' is probably also available and should be used instead of the term:

- `{class}` should be the name of the class of the reference or master data resource in case you specifically want to refer to this class;
- `{id-reference}` should be the notation of the concept.

Example:

```
http://bp4mc2.org/example/id/land/5010
```

(In this example the notation `5010` refers to the country-code of the official Dutch country table: [http://publicaties.rvig.nl](http://publicaties.rvig.nl/dsresource?objectid=4791&type=org))

### 3.3. https URI's for identifying information resources located on the web.

#### 3.3.1 Information resource about another resource

As the http protocol only allows URI's (and not IRI's), it stands for reason to use URI's for identifying information resources located on the web. The use of https (instead of http) stands for reason as https is currently the most common way of requesting information on the web via the http protocol.

Use the following URI template for information resources *about* non-information resources:

```
https://{domain}/{path}/doc/{class}/{doc-reference}
```

- `{domain}`, `{path}`, `{class}` should be the same as the corresponding non-information resource;
- `{doc-reference}` should be the URI convertion of the `{id-reference}`.

### 3.3.2 Information resource as a set of data

In some cases, you want to identify a particular set of data, which is not necessary *about* a specific non-information resource, but might be a curated set of data that is about a lot of different resources. Use the following URI template for information resources that are curated datasets:

```
https://{domain}/{path}/data/{dataset-reference}
```

A webserver should retrieve the most current version of the set of data when someone requests such a URI.

### 3.3.3 Information resource as part of a RESTful http API

A http API is a application programming interface using the http protocol. A RESTful http API conform to the principals of the REST architecture [[REST]](https://www.ics.uci.edu/~fielding/pubs/dissertation/rest_arch_style.htm). Key to the REST architecture is the explicit use of information resources as part of the API. These information resources resemble sets of data, with the distinction that these sets of data might not actually be part of a database, but can also be the result of a query.

Use the following URI template for information resources that are contained within a RESTful http API:

```
https://{domain}/{path}/{api-version}/{class-plural}/{id-reference}
```

- `{domain}` and `{path}` is used in the same way as other templates;
- `{api-version}` should be the specific version of the API. This is not a specific version of an information resource, but the version of the API itself (different versions of an API might return the same version of an information resource);
- `{class-plural}` should be the name of the class of the requested information in plural;
- `{id-reference}` is optional in case a specific information resource is requested.

The classname should be plural because the API should return a list of resources that correspond to this class, with the optional filter of limiting the list to the resource with the specific `{id-reference}`.

The {`class-plural`} can also be something that is not actually stored in the database. For example, you could have an API `http://bp4mc2.org/example/v1/firefighters` which might return information about persons that have the occupation of firefighter.



### 3.3.3 Information resource version

An information resource version is also known as a memento for an information resource (the original resource), as defined by [[RFC7089]](https://tools.ietf.org/html/rfc7089). A memento for an original resource is a resource that encapsulates a prior state of the original resource. A Memento for an original resource as it existed at time T is a resource that encapsulates the state the original resource had at time T.

Use one of the following URI templates for information resource versions:

```
https://{domain}/{path}/doc/{timestamp}/{class}/{doc-reference}
https://{domain}/{path}/data/{timestamp}/{class}/{dataset-reference}
```

- `{domain}`, `{path}`, `{class}`, {`doc-reference`} and {`dataset-reference`} should be the same as the original resource;
- `{timestamp}` should be the registration timestamp of this particular version, using a YYYYMMDDhhmmsssss format (from year to miliseconds).

### 3.3.4 Information resource version format

Both information resources and information resource versions can have formats. The format of an information resource would be the format of the most current version of that particular information resource.

Use the following URI template for information resource (version) formats:

```
https://{original-uri}.{extension}
```

Use the following extensions:

|Extension|Mime type|Format|
|---------|---------|------|
|rdf|application/rdf+xml|XML format for the Resource Description Framework|
|jsonld|JSON-LD|JSON serialization for Linked Data|
|ttl|text/turtle|Turtle (Terse RDF Triple Language)|
|html|text/html|HyperText Markup Language (HTML) webpage|

Other formats are also possible. It is not necessary that such formats are RDF formats, like the html format isn't actually a RDF format. In all cases, the resulting serialization should contain the same information as a strict RDF format. It should be possible to translate between formats without losing information.

### 3.4. Use non-http IRI's for identifing things that should not be directly referenceable on the web;

Things that cannot be looked up directly, should not have http or https IRI's, as this would never result in a meaningful (e.g. 20x or 30x) answer.

use the following URI template:

```
{protocol}:{unique-identifier}
```

The protocol should not be a network protocol, but should identify some identification-protocol. Traditionally such protocol should start with `urn:`. The format of the `{unique-identifier}` fully depends on this identification-protol. If no specific protocol is feasible, use the uuid protocol:

```
urn:uuid:{uuid}
```

## 4. Should I mint IRI's, URI's, URL's or URN's??

URI's, URL's and URN's are defined by [[RFC3986]](https://tools.ietf.org/html/rfc3986):

*A Uniform Resource Identifier (URI) provides a simple and extensible means for identifying a resource. A URI can be further classified as a locator, a name, or both.  The term "Uniform Resource Locator" (URL) refers to the subset of URIs that, in addition to identifying a resource, provide a means of locating the resource by describing its primary access mechanism (e.g., its network "location").  The term "Uniform Resource Name" (URN) has been used historically to refer to both URIs under the "urn" scheme [[RFC2141]](https://tools.ietf.org/html/rfc2141), which are required to remain globally unique and persistent even when the resource ceases to exist or becomes unavailable, and to any other URI with the properties of a name.*

*An individual scheme does not have to be classified as being just one of "name" or "locator".  Instances of URIs from any given scheme may have the characteristics of names or locators or both, often depending on the persistence and care in the assignment of identifiers by the naming authority, rather than on any quality of the scheme.  Future specifications and related documentation should use the general term "URI" rather than the more restrictive terms "URL" and "URN" [[RFC3305]](https://tools.ietf.org/html/rfc3305).*

IRI's are defined by [[RFC3987]](https://tools.ietf.org/html/rfc3987):

*A Uniform Resource Identifier (URI) is defined in [[RFC3986]](https://tools.ietf.org/html/rfc3986) as a sequence of characters chosen from a limited subset of the repertoire of US-ASCII [ASCII] characters. This document defines a new protocol element called Internationalized Resource Identifier (IRI) by extending the syntax of URIs to a much wider repertoire of characters.*

As defined by [[RDF11-CONCEPTS]](https://www.w3.org/TR/rdf11-concepts), a resource is identified by an IRI. So we can mint IRI's, but should we? For that, we need to answer the following questions:

3.1 Do I need characters outside the ASCII subset that are allowed for URI's?
3.2 Should my resource have a location on the web?

Some practical experience with these issues is already available, as described in [[DBPEDIA-I18N]](http://svn.aksw.org/papers/2011/DBpedia_I18n/public.pdf).

### 4.1. Do I need characters outside the ASCII subset that are allowed for URI's?

Some considerations must be made with regard to the use of characters outside the ASCII subset. Such characters do not have standard locations on a typical keyboard, so using those characters for humans might be more difficult. The use of international characters in domain names might lead to security problems (using for example http://githüb.com will not direct you to github, but might be some fraudulent site).

With respect to languages that use the latin alphabet, using only the characters from the ASCII subset is in most cases probably a good idea. For example, in the Dutch language only the following "special" characters are used, which can in almost all cases be replaced by an ASCII alternative, without reference problems:

| Character | % of occurance in Dutch words |ASCII Alternative |Escaped|
|-----------|-------------------------------|------------------|-------|
|ë|0,586%|e|%C3%AB|
|ï|0,215%|i|%C3%AF|
|é|0,178%|e|%C3%A9|
|è|0,105%|e|%C3%A8|
|ö|0,074%|o|%C3%B6|
|ê|0,027%|e|%C3%AA|
|ü|0,024%|u|%C3%BC|
|ç|0,007%|c|%C3%A7|
|à|0,007%|a|%C3%A0|
|û|0,004%|u|%C3%BB|
|î|0,003%|i|%C3%AE|
|ñ|0,003%|n|%C3%B1|
|ä|0,002%|a|%C3%A4|
|ô|0,001%|o|%C3%B4|

(Source: [www.opentaal.org](https://www.opentaal.org/het-laatste-nieuws/171-karakterfrequentie), counting 315779 Dutch words)

The http protocol ([RFC2616](https://tools.ietf.org/html/rfc2616), section 3.2) only accepts URI's, so IRI's need to be converted to URI's when a resource is looked up using the http protocol. Notice that this conversion is only necessary for look-up purposes (so only for http or https IRI's). IRI's that only identify resource, should not be converted, as stated by section 3.1 of [[RFC3987]](https://tools.ietf.org/html/rfc3987):

*URIs identify resources in various ways.  IRIs also identify resources.  When the IRI is used solely for identification purposes, it is not necessary to map the IRI to a URI (see section 5).  However, when an IRI is used for resource retrieval, the resource that the IRI locates is the same as the one located by the URI obtained after converting the IRI according to the procedure defined here.*

Two IRIs are equal if and only if they are equivalent under Simple String Comparison according to section 5.1 of [[RFC3987]](https://tools.ietf.org/html/rfc3987), as defined in sectie 3.2 of [[RDF11-CONCEPTS]](https://www.w3.org/TR/rdf11-concepts). This means that when comparing a converted IRI to the original IRI, they are **not** considered the same.

Critical to the Linked Data concept [[LINKED-DATA]](https://www.w3.org/DesignIssues/LinkedData.html) is the ability to provide useful information when someone looks up a particular URI. The most common case is to provide the result of a SPARQL query that in its most simple form looks like:

```
CONSTRUCT {<URI> ?p ?o}
WHERE {<URI> ?p ?o}
```

In this example `<URI>` stands for the requested URI. This practice will **not** work if the requested URI is actually an IRI. For example, when someone request the IRI `http://dbpedia.org/resource/Rosé` (as in rosé wine, not a rose flower), this IRI is converted into the corresponding URI `http://bp4mc2.org/example/Ros%C3%A9`. Using this URI in the SPARQL query above will result in an empty set:

```
CONSTRUCT {<{<http://dbpedia.org/resource/Ros%C3%A9> ?p ?o}}
WHERE {<{<http://dbpedia.org/resource/Ros%C3%A9> ?p ?o}}
```

The correct query should use the originel IRI, deconverted from the requested URI:

```
CONSTRUCT {<{<http://dbpedia.org/resource/Rosé> ?p ?o}}
WHERE {<{<http://dbpedia.org/resource/Rosé> ?p ?o}}
```

In cases that data is retrieved from a non-latin origin, or in some edge cases (like rosé vs rose), the use of IRI's for identification might be necessary. In such a case, some extra precautions must be made when such resources are looked up.

Other problems can occur when RDF data is serialized. Not all serialization formats allow the use of IRI's. The biggest issues are with IRI's that are used as identifiers of properties.

### 4.2 Should my resource have a location on the web?

The data on the web best practice 10 [[DWBP]](https://www.w3.org/TR/dwbp/) states: "*Reuse other people's URIs as identifiers within datasets where possible*". The "why" behind this best practice is about the network effect: by reusing other people's URIs, you can find other information not enclosed in the original dataset. This will only be possible if the URI corresponds to a location on the web.

So your resource SHOULD have a location on the web, if you want the URI of your resource to be available as identifier that can be used in other people's dataset.

Because any resource that is available on the web could in theory be used as an identifier in other people's dataset, your resource SHOULD NOT have a location on the web, if you don't want the URI of your resource to be available as identifier that can be used in other people's dataset.

If your resource has a location on the web, the corresponding URL SHOULD be persistent. It MAY redirect to different versions of documentation about that resource, but SHOULD identify the resource during its lifecycle.

## 5. Should I use http or https??

## 6. Should I use hash-URI's

## 7. What pattern should I use for my IRI's

## 8. And what about API URL's

A http API is a application programming interface using the http protocol. A RESTful http API conform to the principals of the REST architecture [[REST]](https://www.ics.uci.edu/~fielding/pubs/dissertation/rest_arch_style.htm). Key to the REST architecture is the explicit use of information resources as part of the API. These information resources resemble sets of data, with the distinction that these sets of data might not actually be part of a database, but can also be the result of a query.

URI's used for RESTful http API's are always identifiers for a information resource request, and always result in the corresponding information resource. Unlike RDF, no explicit relation is expected between the identification of these information resources and the primary key that is used for the identification of the information resource in a database.

In most cases, an IRI that identifies an information resource as part of a RESTful http API cannot be used as primary or foreign key. The reason is that most data is not about information resources, but about actual real-life objects: non-information resources.

There are, however, also some advantages of using http RESTful API's as identifiers. Because there is no tight coupling between the RESTful API identifier and the primary key, it is possible to specify new information resources that are not actually stored within the database, but can be the result of a query.

This means that we now have to ways of retrieving the information about some non-information resource:

1. Using doc-URI's;
2. Using an API.

For example: let's retrieve some information about http://bp4mc2.org/id/person/JohnDoe, you might use one of the following http requests:

```
https://bp4mc2.org/doc/person/JohnDoe
https://bp4mc2.org/v1/persons/JohnDoe
```

The first one corresponds to the doc-URI, the second one corresponds to a RESTful API.

Another example: let's retrieve information about the friends of John Doe. Such a question can only be made using a RESTful API URI:

```
https://bp4mc2.org/v1/persons/JohnDoe/friends
```

This RESTful API corresponds with the following SPARQL query:

```
CONSTRUCT {
  ?friend ?property ?value
}
WHERE {
  <http://bp4mc2.org/v1/person/JohnDoe> foaf:knows ?friend.
  ?friend ?property ?value
}
```
