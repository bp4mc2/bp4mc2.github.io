# Data versus Information

A very common discussion is the difference between «data» and «information». This discussion becomes even more intense when people want to make the distinction between «logical data» and «physical data», and some may even want to throw the concept of «knowledge» into the mix. The [well-known DIKW-pyramid](https://en.wikipedia.org/wiki/DIKW_pyramid) even adds the concept of «wisdom» into the mix.

Let's finish this discussion one and for all! This page had the intention to make all thinks clear, and finally have some wisdom about this topic! ;-D

> One might say that  wise people know when not to discuss a particular topic, so let's understand that the symbol used at the end of the previous sentence is used to indicate humor and that we won't discuss the concept of «wisdom» at all, and let this page be at least informative about the topic at hand!

## Some common understanding

### Terms and concepts

When discussing the topic of data and information, we are actually talking about means of communication and language. For this, it is important to understand the basics of semiotics, or at least the difference between a term and the concept it refers to. A «term» is a sequence of one or more words that we use to refer to a particular concept. A «concept» is a unit of thought, an idea. When we use natural language, each word we use, typically refers to a concept (and not the literal term). So when we say for example: "three plus four", we understand the terms "three" and "four" as refering to the concepts of the number 3 and number 4, so we could continue with: "..makes seven".

In this paper, we use french quotation marks («») when we explicitly want to refer to a concept. We will use double quotion marks ("") when we explicitly want to refer to the term itself. For example:

```
«three» plus «four» makes «seven»
"four" plus "teen" makes "fourteen"
```

(this distinction is called the [use-mention distinction](https://en.wikipedia.org/wiki/Use–mention_distinction) and is actually somewhat similar to the data-information distinction as in you can combine data using nothing more than the data itself, wheres to combine information, you need more than the data itself - you need to have some knowledge about what the data means).

### Metadata

Before discussion the difference between data and information, we need to understand the concepts of «metadata» and «model».

«metadata» is data about data. So technically, metadata *is* data. It is the way we understand and use metadata which makes it metadata (and not regular data). This implies that without some rules, we cannot differentiate metadata from data.

> An example of such a rule might be that we treat the first row of a spreadsheet as metadata with regard to the other rows. The first row contains metadata about the data in the other rows. Only with this knowledge, we can treat the data correctly.

Metadata can be send, stored or received along with the data it is about. But this is not strictly necessary.

> An example of metadata that is not send along with data might be a message format specification. For example: when a PDF document is send, the metadata send along with the data will contain a reference to the PDF-format used. But the actual specification this PDF-format will not be part of the metadata that is send, only the reference to this specification will be part of the metadata that is send.

### Models

Within the context of data and information, a «model» is a representation things that are within the scope of the model. Typically such a model doesn't describe the things themselves, but it describes classes of these things. A model about ships, typically doesn't describes actual ships, but the different classes of ships that are relevant within the scope of the model. A model about data, typically called a "datamodel" will not contain descriptions of actual data, but instead a description of classes of data.

To understand what a «datamodel» actually is, you first need to understand what «data» is, and what is within your scope regarding the relevant classes of data.

### Facts, physical data and logical data

Physical data is essentially data in its physical form. Hieroglyphs cut out in stone are pretty good examples of physical data. In the digital area, we also consider data in electronic files or databases as physical data: the sequence of characters in an electronic file or the data as it is structured in a database.

Logical data is data, read for what it represents. We look beyond the physical form of the data. Logical data represents the facts that are given by the physical data (in dutch we use the term "gegevens", which is could both be translated to "facts" and "data", but literally means "something given"). Mark that we will consider logical data a "fact from data", which does **not** imply that the data in question refers to a true fact in reality (the data stating something that is a lie).

So, while the existence of logical data is considered a fact (it is a fact that the data is in the record), reality itself might be something completely else.

## Let's be precise - with some examples

While we have now have some common understanding about the concepts we are dealing with, we haven't touched on the topic of the difference between data and information. And we haven't been precise. We might try to start with some examples which clearly state the differences.

### Physical data

> `"2001-09-11"` is physical data (a sequence of digits and symbols)

> `"2001-09-11"^^xsd:string` is more than just physical data
> `"2001-09-11"^^xsd:date` is also more than just physical data

The last two examples are more that just physical data, because these examples contain physical data *and* metadata. It is physical data in a logical structure, in which the part after "^^" represents the datatype of the physical data. When we look from a logical point of view to the physical data, we understand that the former is a piece of text, and that the latter represents a date.

### Logical data

> `<http://dbpedia.org/resource/September_11_attacks> <http://example.org/def#occuredAt> “2001-09-11”^^xsd:date.` is a single piece of logical data

We consider this a single piece of logical data (in the physical form of a RDF triple), because:

- it is a *single piece*, because you can't make it any smaller without losing the essence of what logical data is, and..
- it is *logical data*, because it represents a fact.

Logical data can be represented in many different physical form. The same logical data might be represented as in the following physical form:

> `"http://dbpedia.org/resource/September_11_attacks","2001-09-11"` is the same single piece of logical data

The form used in this case is the well-known CSV format. Mark that you can read the logical data from the physical data only correctly by interpreting the first part is the identification of something that occurs on the date represented by the last part.

Another possible might be the physical form depicted below, where the first part is again the identification and the second part again the date, in the Unix Epoch timestamp, using 0:00:00 for the time-part:

> `123456, 1000159200`

### Information

Logical data only becomes information if you can interpret its meaning, what it stands for. To interpret a piece of logical data correctly, you need something that is *not* part of the data itself. You might find *some* clues in the metadata that is given along with the data (for example: the datatype), but most of the meaning will not be part of the data given or stored.

Logical data can only be processed on a logical level by the system: CSV files can be processed and stored, maybe extracting the rows or combining rows from different CSV files. XML or JSON files have a bit more structure, so we can process and store them a little bit better and triples can actually be stored directly into a graph database.

Interpretation is only actually possible if we have pieces of the puzzle. We need metadata that is typically not part of the data itself.

If we want to interpret the logical data into information, the essence of this process is that we try to interpret to what facts the data refers to *in real life*.

> `123456, 1000159200` refers to the fact that the September 11 attacks occured at the 11th of september in the year 2001.

We cannot know if this piece of information is true or false (in the real world), but we *can* know that this is the piece of information that should be interpreted from the data.

The question remains: when can a piece of logical data be interpreted as information. The answer is: when the piece of logical data contains enough metadata, that you can interpret the meaning of the data correctly (with possibly the help of some external resources to which the given metadata refers).

## Models

As we have a little bit more understanding about the differences between physical data, logical data and information, we might try to have some understanding about what the models are about:

- A **physical data model** is a model that describes the structure, the form in which the physical data occurs.
- A **logical data model** is a model that describes what facts can be read from the data, which statements can be made.
- A **information model** is a model that describes what is the meaning of the data.
