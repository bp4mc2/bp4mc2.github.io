# Value lists
A value list is "a list of values" and is used to constrain the values that can be used for a particular property.

The actual semantic "meaning" of a value list may differ:

- Enumeration or codelist. A value list is actually an enumeration that constraints the possible values. For example the enumeration: "2, 4, 8". No particular meaning is intended for the values. The value list could also be described in some other way, for example the regex `[2|4|8]`.
- Categorisation or classification list. A value list might contain values that refer to some abstraction, a concept. The value list refers to a collection of concepts that have something in common, like "Building statuses", with values as "Demolished", "In use" or "Planned".
- Reference list. A value list might contain values that refer to a concrete object that is not part of the system. The values from the value list are used to refer to these objects. For example the value list "Countries". Such a list would contain all individuals of the class "Country".

## As Linked Data
As value lists are used to constrain values, the SHACL vocabulary can be used:

	ex:SomePropertyShape a sh:PropertyShape;
		sh:path ex:someProperty;
		sh:node ex:SomeValueList
	.

The `sh:node` predicate states that the property `ex:someProperty` might only be used when the values (at the "object" position in a triple) conform to the ex:SomeValueList shape. You might say that ex:SomeValueList is a value list.

To specify which values are part of the value list, you should make the distinction between the tree different types of meaning.

### Enumeration

	ex:SizingEstimateShape a sh:PropertyShape;
		sh:path ex:sizingEstimate;
		sh:in (2 4 8);
	.

Enumerations constraints are part of the attribute itself. In this case, the value list is not identified as a indivual on its own.

### Classification or Categorisation

	ex:BuildingStatusShape a sh:PropertyShape;
		sh:path ex:buildingStatus;
		sh:node ex:BuildingStatusValueList
	.
	ex:BuildingStatusValueList a sh:NodeShape;
		rdfs:label "The list of building statuses"@en;
		sh:property [
			sh:path [sh:inversePath skos:member];
			sh:hasValue ex:BuildingStatuses
		]
	.
	ex:BuildingStatuses a skos:Collection;
		skos:member ex:Demolished;
		skos:member ex:InUse
	.

The possible values for `ex:buildingStatus` are defined as the list of the values `ex:Demolished` and `ex:InUse`.

It might be more appropriate to use a `skos:ConceptScheme` instead of a `skos:Collection`. This would change the example:

	ex:BuildingStatusShape a sh:PropertyShape;
		sh:path ex:buildingStatus;
		sh:node ex:BuildingStatusValueList
	.
	ex:BuildingStatusValueList a sh:NodeShape;
		rdfs:label "The list of building statuses"@en;
		sh:property [
			sh:path skos:inScheme;
			sh:hasValue ex:BuildingStatuses
		]
	.
	ex:Demolished skos:inScheme ex:BuildingStatuses.
	ex:Demolished skos:inScheme ex:BuildingStatuses.

### Reference

	ex:CountryOfBirth a sh:PropertyShape;
		sh:path ex:countryOfBirth;
		sh:node ex:Countries
	.
	ex:Countries a sh:NodeShape;
		rdfs:label "The list of countries"@en;
		sh:property [
			sh:path rdf:type;
			sh:hasValue ex:Country
		]
	.
	ex:Netherlands a ex:Country.
	ex:Belgium a ex:Country.

The possible values for `ex:countryOfBirth` are defined as the list of the individuals `ex:Netherlands` and `ex:Belgium`.

## Retrieving a list of all value lists
Value lists are typed as SHACL nodeshapes. But not all SHACL nodeshapes are value lists. As a list of value list is actually a reference list, we need to add something to the value list to be sure that it is indeed a value list:

	ex:ListOfValueLists a sh:NodeShape;
		rdfs:label "The list of value lists"@en;
		sh:property [
			rdf:type;
			sh:hasValue ex:ValueList.
		]
	.
	ex:Countries a sh:NodeShape, ex:ValueList.
	ex:BuildingStatusValueList a sh:NodeShape, ex:ValueList.