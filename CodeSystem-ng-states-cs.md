# NG States in Nigeria CS - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG States in Nigeria CS**

## CodeSystem: NG States in Nigeria CS 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-states-cs | *Version*:0.0.0 |
| Active as of 2026-08-17 | *Computable Name*:NgStatesCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.101 | |

 
This CodeSystem defines ward codes and names mapped to their respective States in Nigeria. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NG States VS](ValueSet-ng-states-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-states-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-states-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.101"
  }],
  "version" : "0.0.0",
  "name" : "NgStatesCS",
  "title" : "NG States in Nigeria CS",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-17T13:27:53+01:00",
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
  "description" : "This CodeSystem defines ward codes and names mapped to their respective States in Nigeria.",
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
  "count" : 37,
  "concept" : [{
    "code" : "AB",
    "display" : "Abia"
  },
  {
    "code" : "AD",
    "display" : "Adamawa"
  },
  {
    "code" : "AK",
    "display" : "Akwa Ibom"
  },
  {
    "code" : "AN",
    "display" : "Anambra"
  },
  {
    "code" : "BA",
    "display" : "Bauchi"
  },
  {
    "code" : "BY",
    "display" : "Bayelsa"
  },
  {
    "code" : "BE",
    "display" : "Benue"
  },
  {
    "code" : "BO",
    "display" : "Borno"
  },
  {
    "code" : "CR",
    "display" : "Cross River"
  },
  {
    "code" : "DE",
    "display" : "Delta"
  },
  {
    "code" : "EB",
    "display" : "Ebonyi"
  },
  {
    "code" : "ED",
    "display" : "Edo"
  },
  {
    "code" : "EK",
    "display" : "Ekiti"
  },
  {
    "code" : "EN",
    "display" : "Enugu"
  },
  {
    "code" : "GO",
    "display" : "Gombe"
  },
  {
    "code" : "IM",
    "display" : "Imo"
  },
  {
    "code" : "JI",
    "display" : "Jigawa"
  },
  {
    "code" : "KD",
    "display" : "Kaduna"
  },
  {
    "code" : "KN",
    "display" : "Kano"
  },
  {
    "code" : "KT",
    "display" : "Katsina"
  },
  {
    "code" : "KB",
    "display" : "Kebbi"
  },
  {
    "code" : "KO",
    "display" : "Kogi"
  },
  {
    "code" : "KW",
    "display" : "Kwara"
  },
  {
    "code" : "LA",
    "display" : "Lagos"
  },
  {
    "code" : "NA",
    "display" : "Nasarawa"
  },
  {
    "code" : "NI",
    "display" : "Niger"
  },
  {
    "code" : "OG",
    "display" : "Ogun"
  },
  {
    "code" : "ON",
    "display" : "Ondo"
  },
  {
    "code" : "OS",
    "display" : "Osun"
  },
  {
    "code" : "OY",
    "display" : "Oyo"
  },
  {
    "code" : "PL",
    "display" : "Plateau"
  },
  {
    "code" : "RI",
    "display" : "Rivers"
  },
  {
    "code" : "SO",
    "display" : "Sokoto"
  },
  {
    "code" : "TA",
    "display" : "Taraba"
  },
  {
    "code" : "YO",
    "display" : "Yobe"
  },
  {
    "code" : "ZA",
    "display" : "Zamfara"
  },
  {
    "code" : "FC",
    "display" : "Federal Capital Territory (FCT)"
  }]
}

```
