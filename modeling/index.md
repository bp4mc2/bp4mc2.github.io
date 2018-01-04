# Fundamentals of Linked Data Modeling

## Intro - living in a semantic world
[Tim Berners-Lee](http://dbpedia.org/resource/Tim_Berners-Lee), [James Hendler](http://dbpedia.org/resource/James_Hendler) and [Ora Lassila](http://dbpedia.org/resource/Ora_Lassila) introduced the notion of the semantic web in an [article of the may 2001 edition of Scientific American](https://pdfs.semanticscholar.org/566c/1c6bd366b4c9e07fc37eb372771690d5ba31.pdf). The essence of the semantic web is described in this article:

*Meaning is expressed by RDF, which encodes it in sets of triples, each triple being rather like the subject, verb and object of an elementary sentence. These triples can be written using XML tags. In RDF, a document makes assertions that particular things (people, Web pages or whatever) have properties (such as "is a sister of," "is the author of") with certain values (another person, another Web page).*

Although we have moved from XML as the prefered way of writing down triples, this essence has remained the same over more than 15 years.

This semantic world differs fundamentally from the administrative world we have come to be familiar with. The difference is that the semantic world is about *making assertions about particular things*. The reference to the particular thing is important. In the administrative world, we don't make assertions, but we *store* information into files, records, slots, tables. The reference to the particular thing is only implicit: we imply that a file of person data is about a certain person, without directly referencing such a person.

You might argue that the semantic world also stores information: into a table containing exactly three columns: subject, predicate, object. This is, of course, true. The difference is that the semantic world doesn't imply meaning by the way information is stored or written down in a message (with the exception that these three columns store assertions, in the form of a triple containing a subject, predicate and object).

And more important, as in a relational system the value of a primary key of a table uniquely identifies the *row* of data, in a triple the value of a subject only identifies the subject itself, and not the triple. The "primary key" of a triple is the combination of subject, predicate and object. The triples (or assertions) themselves don't have a single unique key.

Quad stores extent the triple structure with a forth element: the graph. A graph represents a set of triples. The use of graphs is very important to create an elegant way of making assertions about (a set of) assertions, for example versioning information and provenance.

## Contents
This document is about the fundamentals of modeling in the semantic world, and more precise: modeling Linked Data structures, vocabularies and ontologies. We will explore and set out the best practices for:

- What do http URIs identify?
- How do you ask for information about something that is identified by a URI and what should be the answer?
- How should you define new vocabularies?
- How to deal with versioning?

## What do http URIs identify?
We begin with the most difficult question. At least, it is a question that is been on the minds of people from the dawn of the semantic web till this day. And although the answer seems obvious (being: "*anything you want*"), the implications are not. And maybe we might have good reasons to limit the things we may *want* that http URIs identify.

To start with the answer:

- The [original article](https://pdfs.semanticscholar.org/566c/1c6bd366b4c9e07fc37eb372771690d5ba31.pdf) states: "*particular things (people, Web pages or whatever)*;
- The [original design note about Linked Data](http://www.w3.org/DesignIssues/LinkedData.html) states: "*any kind of object or  concept*";
- The [Architecture of the World Wide Web, volume one](http://www.w3.org/TR/webarch/) states: "*whatever might be identified by a URI*";
- The current [IETF RFC3986 standard states](https://tools.ietf.org/html/rfc3986): "*whatever might be identified by a URI*"

Some of the discussion is captured by the following documents:

- [2002 TBL Design note - what do http URIs identify](http://www.w3.org/DesignIssues/HTTP-URI.html);
- [2005 TBL Design note - what HTTP URIs identify](http://www.w3.org/DesignIssues/HTTP-URI2);
- [2005 TAG httpRange-14 issue (resolved)](http://www.w3.org/2001/tag/group/track/issues/14);
- [2007 TAG HttpRedirections-57 issue (open)](http://www.w3.org/2001/tag/group/track/issues/57);
- [2008 Cool URIs for the Semantic Web](http://www.w3.org/TR/cooluris);
- [2013 URLs in data (draft)](http://www.w3.org/TR/urls-in-data).

That brings us to the next question: "Ok, it's possible to use URIs for non-information resources, but SHOULD we?".

### Vocabularies: properties and classes
We use vocabularies to describe properties of resources and we use classes to classify those resources. We use URIs to refer to these properties and classes. Such properties and classes themselves are by definition non-information resources. So the answer is obviously "*yes*", with regard to properties and classes.

Most properties and classes are so-called "#"-URI's, meaning that the document that describes these properties and classes automatically has a different URI from the properties and classes:

- [`<http://www.w3.org/2000/01/rdf-schema#label>`](http://www.w3.org/2000/01/rdf-schema#label) is a property (and cannot be a webpage);
- [`<http://www.w3.org/2000/01/rdf-schema>`](http://www.w3.org/2000/01/rdf-schema) is webpage, containing all triples that make up the rdf schema vocabulary.

Even if we would make the bold statement that properties and classes are information resources ("bold" because such would be the same as saying a verb is a document), it doesn't change much, because the question isn't that important: using a URI at the predicate-position will automatically mean that it refers to a property and not to a web page.

The schema.org vocabulary and webpages don't make the distinction between information and non-information resources. For example: [`<http://schema.org/vehicleIdentificationNumber>`](http://schema.org/vehicleIdentificationNumber) is a webpage, because when you request this URI, you get a 200 Ok http response. According to the [http protocol RFC](https://tools.ietf.org/html/rfc7231#section-6.3.1), this means that [`<http://schema.org/vehicleIdentificationNumber>`](http://schema.org/vehicleIdentificationNumber) refers to an information resource. But the resulting website also states (codified in RDFa) that [`<http://schema.org/vehicleIdentificationNumber>`](http://schema.org/vehicleIdentificationNumber) [`rdf:type`]() [`rdf:Property`](), which means that [`<http://schema.org/vehicleIdentificationNumber>`](http://schema.org/vehicleIdentificationNumber) is a non-information resource. Bold indeed! So what would the assertion below mean? Do we like the property vehicle identification number?, or do we like the webpage about this property? It is not clear, but the makers of schema.org probably don't really care.

	<http://schema.org/vehicleIdentificationNumber> skos:editorialNote "I love it!"

For all things considered, the makers of schema.org probably want a property to be a property, and we will probably consider it a property in all cases. The actual issue in this case is that the makers of schema.org don't adhere to the semantics that are given to a [200 Ok response](https://tools.ietf.org/html/rfc7231#section-6.3.1), but pragmatically just return a 200 Ok, where - according to the standards - a [300 See Also](https://tools.ietf.org/html/rfc7231#section-6.4.4) would be the correct response.

### Subjects
Using non-information resources alongside information resources becomes important when we want to make assertions about some thing (for example a car), AND we want to make assertions about the assertions we have made. So the question is actually: "*do we want to use non-information resources for subjects?*".

The set of information resources is by definition disjunct from the set of non-information resources (as the definition of a non-information resource is: "*a resource that is not an information resource*). A URI can refer to an information resource or to a non-information resource, but not both: the two are mutually exclusive. However, in a lot of cases, it isn't that important to make a clear distinction. A resource can be like [Schrödinger's cat](https://en.wikipedia.org/wiki/Schr%C3%B6dinger%27s_cat): both information and non-information, as long as you don't look inside the box!

However, as will become clear in the next couple of paragraphs: if you want to be part of the semantic web (and link to other resources in the semantic web), in becomes clear that you should look inside the box, or don't link at all!

We will create an example first only using information resources, and after that recreate the example using a mix of information and non-information resources.

### A vocabulary with only information resources
We want to make an assertion about the colour of a real-world car, and the [vehicle identification number](https://en.wikipedia.org/wiki/Vehicle_identification_number) of that car. Our car is red, and the vehicle identification number is WP0ZZZ99ZTS392124.

	PREFIX ex: <http://example.org/def#>
	<http://example.org/doc/car/WP0ZZZ99ZTS392124> a ex:Car;
		ex:color "red";
		ex:vehicleIdentificationNumber "WP0ZZZ99ZTS392124"
	.

At this moment, our resource is still "in the box": we haven't made an assertion whether it is a non-information resource, or an information resource. It seems a car, but it could be a document. We might include some versioning information:

	<http://example.org/doc/car/WP0ZZZ99ZTS392124> a ex:Car;
		ex:color "red";
		ex:vehicleIdentificationNumber "WP0ZZZ99ZTS392124";
		ex:registrationDate "05-12-2015"^^xsd:date
	.

Even now, the cat is still "in the box": the registration date might refer to the date that the car was registered, but also to the date that the information about the car was registered.

Cars can change colour, so this piece of information might change. We want to be able to retrieve the "old" information and the new information, so we need new URI's. Maybe something like:

	<http://example.org/doc/car/WP0ZZZ99ZTS392124/05-12-2015> a ex:Car;
		ex:color "red";
		ex:vehicleIdentificationNumber "WP0ZZZ99ZTS392124";
		ex:registrationDate "05-12-2015"^^xsd:date
	.
	<http://example.org/doc/car/WP0ZZZ99ZTS392124/15-05-2017> a ex:Car;
		ex:color "blue";
		ex:vehicleIdentificationNumber "WP0ZZZ99ZTS392124";
		ex:registrationDate "15-05-2017"^^xsd:date
	.

There are some problems with the data above. It is not normalised. The vehicle identification number doesn't change, but is duplicated. Another problem is that we don't have a URI any more that refers to the same thing as the vehicle identification number: the newly minted URI's refer to some particular version of the car or cardata, but not to the car or cardata as a whole. We can fix this by adding another subject-URI:

	<http://example.org/doc/car/WP0ZZZ99ZTS392124> a ex:Car;
		ex:vehicleIdentificationNumber "WP0ZZZ99ZTS392124";
	.
	<http://example.org/doc/car/WP0ZZZ99ZTS392124/05-12-2015> a ex:Car;
		ex:color "red";
		ex:registrationDate "05-12-2015"^^xsd:date;
		ex:versionOf <http://example.org/doc/car/WP0ZZZ99ZTS392124>
	.
	<http://example.org/doc/car/WP0ZZZ99ZTS392124/15-05-2017> a ex:Car;
		ex:color "blue";
		ex:registrationDate "15-05-2017"^^xsd:date;
		ex:versionOf <http://example.org/doc/car/WP0ZZZ99ZTS392124>
	.

We have used our own vocabulary for describing the car(data). Let's see what these properties and classes actually mean, assuming that we're talking about information resources:

- `ex:Car` is actually "data about a car". We might assert something like: `ex:Car` [`rdfs:subClassOf`](http://www.w3.org/2000/01/rdf-schema#subClassOf) [`foaf:Document`](http://xmlns.com/foaf/0.1/Document);
- `ex:color` is actually "the color of the car that is described by this document": the document itself isn't red, but the car itself!
- `ex:vehicleIdentificationNumber` is, in the same way, "the vehicle identification number of the car described by this document".
- `ex:registrationDate` is the data that a specific version of the document is registered (it is not the registration date of the car, because the date has changed, and the registration date of the car cannot change).

The `ex:Car` class and the properties `ex:color` and `ex:vehicleIdentificationNumber` refer indirectly to a car and properties of a car. The properties are [shorthand properties](http://www.w3.org/TR/urls-in-data/#dfn-shorthand-property) as specified in the paper [URLs in data](http://www.w3.org/TR/urls-in-data). The relation between cardata and the actual car resembles the way the [Linked Data Platform recommendation](http://www.w3.org/TR/ldp/) uses containers (information resources) to contain triples that describe resources that may themselves be non-information resources.

Because our vocabulary isn't about cars, but about cardata, we cannot reuse existing vocabularies and it would be hard to link our cardata to other data. For example, if someone would like to assert that he owns our car, he might exidentally assert that he only owns some piece of information about the car...

The reason we cannot reuse vocabulaires and link to outside URI's about specific cars, is the common practice to directly refer to real-world objects, and to create vocabularies that have properties that directly refer to the subject, and not to some topic described by the subject. While in relational databases it is the common practice to indirectly refer to real-life objects, the common practice in the semantic world is to directly refer to real-life objects.

Most vocabularies don't imply that a subject should be an information resource or a non-information resource. But almost all vocabularies imply that properties directly refer to the subject, so you can't use these vocabularies as we have used our own vocabulary.

For example: the definition of [`schema:vehicleIdentificationNumber`](http://schema.org/vehicleIdentificationNumber) is: "*The Vehicle Identification Number (VIN) is a unique serial number used by the automotive industry to identify individual motor vehicles.*". According to the description at schema.org, this property is used for resources that are [`schema:Vehicle`](http://schema.org/Vehicle)s, and a vehicle is defined as "*A vehicle is a device that is designed or used to transport people or cargo over land, water, air, or through space.*".

### Reusing vocabularies with non-information resouces
So, while it is perfectly possible to only use information-resources if you limit yourself to your only vocabularies and don't link to the outside world, the whole idea of the semantic web is reusing vocabularies and creating links.

Let's see what happens if we would introduce non-information resources and reuse vocabularies:

	PREFIX schema: <http://schema.org/>
	<http://example.org/id/car/WP0ZZZ99ZTS392124> a schema:Car;
		schema:vehicleIdentificationNumber "WP0ZZZ99ZTS392124";
		schema:color "red";
		foaf:isPrimaryTopicOf <http://example.org/doc/car/WP0ZZZ99ZTS392124/05-12-2015>
	.
	<http://example.org/doc/car/WP0ZZZ99ZTS392124/05-12-2015> a prov:Entity;
		prov:generatedAtTime "05-12-2015"^^xsd:date;
	.
	<http://example.org/id/car/WP0ZZZ99ZTS392124> schema:color "blue"
		foaf:isPrimaryTopicOf <http://example.org/doc/car/WP0ZZZ99ZTS392124/15-05-2017>
	.
	<http://example.org/doc/car/WP0ZZZ99ZTS392124/05-12-2015> a prov:Entity;
		prov:generatedAtTime "15-05-2017"^^xsd:date;
	.

By reusing existing vocabularies (schema.org and prov in this case), users can immediately understand what the data means. And, because our car is now a real car, we can make assertions that the URI of our car refers to the same car as a URI from some other place, using for example `owl:sameAs`. We still have documents with the description of that car, and assertions about the description, including links between the document and the real car (using `foaf:isPrimaryTopicOf`).

### Consequences
The most important argument for using non-information resources is the ability to reuse vocabularies and link to the outside world, a key ingredient for using linked data. Without these two features, it won't actually make sense of creating linked data, and we could just remain in the close confinements of a closed world structure like a relational database.

But this comes at a certain price:

1. When converting data from a closed world structure to linked data, it might not always be clear what the data means. In our example, we don't really know what "registration date" means. Because we need to link it to the car OR to the cardata, we must have access to other knowledge about the data that may or may not be available.
2. Because we make assertions about the same resource that may change over time, we need some other mechanism to separate these assertions. The most elegant solution might be the use of named graphs, grouping assertions within a single named graph. In our example, the two prov:Entity resources will be the two named graphs for the two different assertions about the color of the car.