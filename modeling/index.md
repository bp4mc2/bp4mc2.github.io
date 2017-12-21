# Modeling

## Intro - living in a semantic world
[Tim Berners-Lee](http://dbpedia.org/resource/Tim_Berners-Lee), [James Hendler](http://dbpedia.org/resource/James_Hendler) and [Ora Lassila](http://dbpedia.org/resource/Ora_Lassila) introduced the notion of the semantic web in an [article of the may 2001 edition of Scientific American](https://pdfs.semanticscholar.org/566c/1c6bd366b4c9e07fc37eb372771690d5ba31.pdf). The essence of the semantic web is described in this article:

*Meaning is expressed by RDF, which encodes it in sets of triples, each triple being rather like the subject, verb and object of an elementary sentence. These triples can be written using XML tags. In RDF, a document makes assertions that particular things (people, Web pages or whatever) have properties (such as "is a sister of," "is the author of") with certain values (another person, another Web page).*

Although the we have moved from XML as the prefered way of writing down triples, this essence has remained the same over more than 15 years.

This semantic world differs fundamentally from the administrative world we have come to be familiar with. The difference is that the semantic world is about *making assertions about particular things*. The reference to the particular thing is important. In the administrative world, we don't make assertions, but we *store* information into files, records, slots, tables. The reference to the particular thing is only implicit: we imply that a file of person data is about a certain person, without directly referencing such a person.

You might argue that the semantic world also stores information: into a table containing exactly three columns: subject, predicate, object. This is, of course, true. The difference is that the semantic world doesn't imply meaning by the way information is stored or written down in a message (with the exception of the notion of the subject, predicate and object of the assertion).

And more important, as in a relational system the value of a primary key of a table uniquely identifies the *row* of data, in a triple the value of a subject only identifies the subject itself, and not the triple. The "primary key" of a triple is the combination of subject, predicate and object.

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
- The [Architecture of the World Wide Web, volume one](http://www.w3.org/TR/webarch/) states: "*whatever might be identified by a URI*".

Some of the discussion is captured by the following documents:

- [2002 TBL Design note - what do http URIs identify](http://www.w3.org/DesignIssues/HTTP-URI.html);
- [2005 TBL Design note - what HTTP URIs identify](http://www.w3.org/DesignIssues/HTTP-URI2);
- [2005 TAG httpRange-14 issue (resolved)](http://www.w3.org/2001/tag/group/track/issues/14);
- [2007 TAG HttpRedirections-57 issue (open)](http://www.w3.org/2001/tag/group/track/issues/57);
- [2008 Cool URIs for the Semantic Web](http://www.w3.org/TR/cooluris);
- [2013 URLs in data (draft)](http://www.w3.org/TR/urls-in-data).
