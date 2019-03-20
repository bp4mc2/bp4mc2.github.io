# IRI-minting

## Introduction
One of the important steps during the creation of data on the web is the minting of IRI's for your resources. An IRI can be compared to the primary key of a resource in a database, with the unique feature that an IRI can be universally unique, which is a nice feature when you want to combine data from different datasets, or when you want others to use your IRI's.

This article describes the best practices with regard to the minting of IRI's. It answers the following questions:

1. Should I mint IRI's, URI's, URL's or URN's??
2. Should I use http or https??
2. Should I use hash-URI's??
3. What template should I use for my resources??

From these answers, a is formulated. This article starts with the resulting best practice and then continues with the answers to these questions (which is a bit more in depth and only needed for understaning the rational behind the best practice).

## Best practice

A. Use http hash URI's for terms (properties and classes) within a vocabulary (things that should be located on the web);
A. Use http IRI's for identifing things that should be directly referenceable on the web;
C. Use https URI's for identifing information resource located on the web.
D. Use non-http IRI's for identifing things that should not be directly referenceable on the web;

### A. http hash URI's for terms (properties and classes) within a vocabulary.

Common practice for RDF vocabularies is the use of hash URI's. The use of IRI's is not recommended, because this is unfriendly for developers and doesn't work well with current serialization formats.

Use the following URI template:

```
http://{domain}/{path}/{vocabulary}#{term}
```

- `{domain}` should be a domain that is owned by, or managed on behave of the publisher of the vocabulary;
- `{path}` is optional and can be used to distinguish between branches or delegations;
- `{vocabulary}` should be the name of the vocabulary with pattern `[a-z][a-z0-9\-]*`. Spaces should be converted using kebab-case (using a dash `-` instead of a space);
- `{term}` should be the name of the class or property with pattern `[A-Z][a-zA-Z0-9_]*` for classes and `[a-z][a-zA-Z0-9_]` for properties. Spaces in class or property names should converted using CamelCase.

### B. http IRI's for identifing things that should be directly referenceable on the web

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

### C. https URI's for identifying information resources located on the web.

As the http protocol only allows URI's (and not IRI's), it stands for reason to use URI's for identifying information resources located on the web. The use of https (instead of http) stands for reason as https is currently the most common way of requesting information on the web via the http protocol.

Use the following URI template for information resources *about* resources of type B:

```
https://{domain}/{path}/doc/{class}/{doc-reference}
```

- `{domain}`, `{path}`, `{class}` should be the same as the corresponding resource of type B;
- `{doc-reference}` should be the URI convertion of the `{id-reference}` and may also include a version or time reference (in case of one resource of type B that is the primary topic of multiple information resources).

### Use non-http IRI's for identifing things that should not be directly referenceable on the web;

Things that cannot be looked up directly, should not have http or https IRI's, as this would never result in a meaningful (e.g. 20x or 30x) answer.

use the following URI template:

```
{protocol}:{unique-identifier}
```

The protocol should not be a network protocol, but should identify some identification-protocol. Traditionally such protocol should start with `urn:`. The format of the `{unique-identifier}` fully depends on this identification-protol. If no specific protocol is feasible, use the uuid protocol:

```
urn:uuid:{uuid}
```

## 1. Should I mint IRI's, URI's, URL's or URN's??

URI's, URL's and URN's are defined by [[RFC3986]](https://tools.ietf.org/html/rfc3986):

*A Uniform Resource Identifier (URI) provides a simple and extensible means for identifying a resource. A URI can be further classified as a locator, a name, or both.  The term "Uniform Resource Locator" (URL) refers to the subset of URIs that, in addition to identifying a resource, provide a means of locating the resource by describing its primary access mechanism (e.g., its network "location").  The term "Uniform Resource Name" (URN) has been used historically to refer to both URIs under the "urn" scheme [[RFC2141]](https://tools.ietf.org/html/rfc2141), which are required to remain globally unique and persistent even when the resource ceases to exist or becomes unavailable, and to any other URI with the properties of a name.*

*An individual scheme does not have to be classified as being just one of "name" or "locator".  Instances of URIs from any given scheme may have the characteristics of names or locators or both, often depending on the persistence and care in the assignment of identifiers by the naming authority, rather than on any quality of the scheme.  Future specifications and related documentation should use the general term "URI" rather than the more restrictive terms "URL" and "URN" [[RFC3305]](https://tools.ietf.org/html/rfc3305).*

IRI's are defined by [[RFC3987]](https://tools.ietf.org/html/rfc3987):

*A Uniform Resource Identifier (URI) is defined in [[RFC3986]](https://tools.ietf.org/html/rfc3986) as a sequence of characters chosen from a limited subset of the repertoire of US-ASCII [ASCII] characters. This document defines a new protocol element called Internationalized Resource Identifier (IRI) by extending the syntax of URIs to a much wider repertoire of characters.*

As defined by [[RDF11-CONCEPTS]](https://www.w3.org/TR/rdf11-concepts), a resource is identified by an IRI. So we can mint IRI's, but should we? For that, we need to answer the following questions:

1.1 Do I need characters outside the ASCII subset that are allowed for URI's?
1.2 Should my resource have a location on the web?

Some practical experience with these issues is already available, as described in [[DBPEDIA-I18N]](http://svn.aksw.org/papers/2011/DBpedia_I18n/public.pdf).

### 1.1 Do I need characters outside the ASCII subset that are allowed for URI's?

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
