# Results Specimen Collection Method - IPS - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Results Specimen Collection Method - IPS**

## ValueSet: Results Specimen Collection Method - IPS 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-results-specimen-collection-method-vs | *Version*:0.0.0 |
| Active as of 2026-08-18 | *Computable Name*:NgResultsSpecimenCollectionMethodVS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.48.184 | |
| **Copyright/Legal**: This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement | |

 
IPS Specimen collection method codes value set. This value set includes codes from SNOMED CT®: all descendants or self of 129316008 |Aspiration - action (qualifier value)|; all descendants or self of 129314006 |Biopsy - action (qualifier value)|; all descendants or self of 129300006 |Puncture - action (qualifier value)|; all descendants or self of 129304002 |Excision - action (qualifier value)|; all descendants or self of 129323009 |Scraping - action (qualifier value)|; all descendants or self of 73416001 |Urine specimen collection, clean catch (procedure)|; all descendants or self of 225113003 |Timed urine collection (procedure)|; all descendants or self of 70777001 |Urine specimen collection, catheterized (procedure)|; all descendants or self of 386089008 |Collection of coughed sputum (procedure)|; all descendants or self of 278450005 |Finger-prick sampling (procedure)| 

 **References** 

* [NG Specimen](StructureDefinition-ng-specimen.md)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "ng-results-specimen-collection-method-vs",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-results-specimen-collection-method-vs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.48.184"
  }],
  "version" : "0.0.0",
  "name" : "NgResultsSpecimenCollectionMethodVS",
  "title" : "Results Specimen Collection Method - IPS",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-18T16:47:52+01:00",
  "publisher" : "NDHI",
  "contact" : [{
    "name" : "NDHI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://digitalhealth.gov.ng"
    }]
  }],
  "description" : "IPS Specimen collection method codes value set.  This value set includes codes from SNOMED CT®: all descendants or self of 129316008 \\|Aspiration - action (qualifier value)\\|; all descendants or self of 129314006 \\|Biopsy - action (qualifier value)\\|; all descendants or self of 129300006 \\|Puncture - action (qualifier value)\\|; all descendants or self of 129304002 \\|Excision - action (qualifier value)\\|; all descendants or self of 129323009 \\|Scraping - action (qualifier value)\\|; all descendants or self of 73416001 \\|Urine specimen collection, clean catch (procedure)\\|; all descendants or self of 225113003 \\|Timed urine collection (procedure)\\|; all descendants or self of 70777001 \\|Urine specimen collection, catheterized (procedure)\\|; all descendants or self of 386089008 \\|Collection of coughed sputum (procedure)\\|; all descendants or self of 278450005 \\|Finger-prick sampling (procedure)\\| ",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "immutable" : false,
  "copyright" : "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement",
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "129316008"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "129314006"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "129300006"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "129304002"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "129323009"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "73416001"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "225113003"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "70777001"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "386089008"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "278450005"
      }]
    }]
  }
}

```
