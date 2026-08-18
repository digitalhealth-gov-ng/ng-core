# NG Languages in Nigeria CS - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG Languages in Nigeria CS**

## CodeSystem: NG Languages in Nigeria CS 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/nigeria-languages | *Version*:0.0.0 |
| Active as of 2026-08-18 | *Computable Name*:NGLanguagesCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.112 | |

 
This CodeSystem defines codes for major languages spoken across Nigeria. 

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "nigeria-languages",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/nigeria-languages",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.112"
  }],
  "version" : "0.0.0",
  "name" : "NGLanguagesCS",
  "title" : "NG Languages in Nigeria CS",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-18T15:57:17+01:00",
  "publisher" : "NDHI",
  "contact" : [{
    "name" : "NDHI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://digitalhealth.gov.ng"
    }]
  }],
  "description" : "This CodeSystem defines codes for major languages spoken across Nigeria.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "caseSensitive" : true,
  "hierarchyMeaning" : "grouped-by",
  "content" : "complete",
  "count" : 22,
  "concept" : [{
    "code" : "English",
    "display" : "English"
  },
  {
    "code" : "Pidgin",
    "display" : "Nigerian Pidgin"
  },
  {
    "code" : "Hausa",
    "display" : "Hausa"
  },
  {
    "code" : "Yoruba",
    "display" : "Yoruba"
  },
  {
    "code" : "Igbo",
    "display" : "Igbo"
  },
  {
    "code" : "Fulfulde",
    "display" : "Fulfulde"
  },
  {
    "code" : "Ibibio",
    "display" : "Ibibio"
  },
  {
    "code" : "Kanuri",
    "display" : "Kanuri"
  },
  {
    "code" : "Tiv",
    "display" : "Tiv"
  },
  {
    "code" : "Nupe",
    "display" : "Nupe"
  },
  {
    "code" : "Igala",
    "display" : "Igala"
  },
  {
    "code" : "Efik",
    "display" : "Efik"
  },
  {
    "code" : "Ijaw",
    "display" : "Ijaw"
  },
  {
    "code" : "Urhobo",
    "display" : "Urhobo"
  },
  {
    "code" : "Itsekiri",
    "display" : "Itsekiri"
  },
  {
    "code" : "Bini-Edo",
    "display" : "Bini (Edo)"
  },
  {
    "code" : "Ogoni",
    "display" : "Ogoni"
  },
  {
    "code" : "Esan",
    "display" : "Esan"
  },
  {
    "code" : "Ikwerre",
    "display" : "Ikwerre"
  },
  {
    "code" : "Idoma",
    "display" : "Idoma"
  },
  {
    "code" : "Ebira",
    "display" : "Ebira"
  },
  {
    "code" : "Hausa-Fulani",
    "display" : "Hausa-Fulani"
  }]
}

```
