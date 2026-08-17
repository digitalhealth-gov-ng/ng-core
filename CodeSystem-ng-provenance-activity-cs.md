# NG Provenance Activity Codes - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG Provenance Activity Codes**

## CodeSystem: NG Provenance Activity Codes 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-provenance-activity-cs | *Version*:0.0.0 |
| Active as of 2026-08-17 | *Computable Name*:NgProvenanceActivityCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.98 | |

 
Local CodeSystem defining provenance activity codes for data lifecycle operations such as anonymization, de-identification, labeling, creation, and deletion. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NG Provenance Activity Codes](ValueSet-ng-provenance-activity-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-provenance-activity-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-provenance-activity-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.98"
  }],
  "version" : "0.0.0",
  "name" : "NgProvenanceActivityCS",
  "title" : "NG Provenance Activity Codes",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-17T07:55:48+01:00",
  "publisher" : "NDHI",
  "contact" : [{
    "name" : "NDHI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://digitalhealth.gov.ng"
    },
    {
      "system" : "email",
      "value" : "emeka2015@gmail.com"
    }]
  },
  {
    "name" : "Nigeria Digital in Health Initiative.",
    "telecom" : [{
      "system" : "email",
      "value" : "lekeojewale@gmail.com",
      "use" : "work"
    }]
  },
  {
    "name" : "Nigeria Digital in Health Initiative.",
    "telecom" : [{
      "system" : "email",
      "value" : "emeka2015@gmail.com",
      "use" : "work"
    }]
  }],
  "description" : "Local CodeSystem defining provenance activity codes for data lifecycle operations such as anonymization, de-identification, labeling, creation, and deletion.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "caseSensitive" : false,
  "hierarchyMeaning" : "grouped-by",
  "content" : "complete",
  "count" : 10,
  "concept" : [{
    "code" : "ANONY",
    "display" : "Anonymize",
    "definition" : "Activity that removes all personally identifiable information (PII) to prevent re-identification."
  },
  {
    "code" : "DEID",
    "display" : "De-identify",
    "definition" : "Activity that removes or obfuscates personal identifiers while retaining data usability."
  },
  {
    "code" : "MASK",
    "display" : "Mask",
    "definition" : "Activity that hides or replaces specific data elements with placeholder values."
  },
  {
    "code" : "LABEL",
    "display" : "Assign Security Label",
    "definition" : "Activity that applies confidentiality, sensitivity, or purpose-of-use labels to data."
  },
  {
    "code" : "PSEUD",
    "display" : "Pseudonymize",
    "definition" : "Activity that replaces direct identifiers with pseudonyms that can be re-linked under controlled conditions."
  },
  {
    "code" : "CREATE",
    "display" : "Create",
    "definition" : "Activity representing the creation of new data or resource instance."
  },
  {
    "code" : "DELETE",
    "display" : "Delete",
    "definition" : "Activity representing deletion or removal of a data record."
  },
  {
    "code" : "APPEND",
    "display" : "Append",
    "definition" : "Activity representing addition of new information to an existing resource or record."
  },
  {
    "code" : "NULLIFY",
    "display" : "Nullify",
    "definition" : "Activity that invalidates or renders data non-usable without deleting the record."
  },
  {
    "code" : "LA",
    "display" : "Legally Authenticated",
    "definition" : "Activity confirming legal authentication of a record (e.g., signed or witnessed by authorized person)."
  }]
}

```
