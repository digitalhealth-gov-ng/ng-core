# Current Smoking Status - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Current Smoking Status**

## ValueSet: Current Smoking Status 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-current-smoking-status-vs | *Version*:0.0.0 |
| Active as of 2026-08-17 | *Computable Name*:NgCurrentSmokingStatusVS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.48.13 | |
| **Copyright/Legal**: This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement | |

 
ValueSet for smoking status. This value set includes a set of specific SNOMED CT codes (no subtypes included) that may be used to represent smoking status. 

 **References** 

* [NG Tobacco Smoking Status Observation](StructureDefinition-ng-observation-tobacco-use.md)

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
  "id" : "ng-current-smoking-status-vs",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-current-smoking-status-vs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.48.13"
  }],
  "version" : "0.0.0",
  "name" : "NgCurrentSmokingStatusVS",
  "title" : "Current Smoking Status",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-17T16:10:29+01:00",
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
  "description" : "ValueSet for smoking status.  This value set includes a set of specific SNOMED CT codes (no subtypes included) that may be used to represent smoking status.",
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
      "concept" : [{
        "code" : "449868002",
        "display" : "Smokes tobacco daily (finding)"
      },
      {
        "code" : "428041000124106",
        "display" : "Occasional tobacco smoker (finding)"
      },
      {
        "code" : "8517006",
        "display" : "Ex-smoker (finding)"
      },
      {
        "code" : "266919005",
        "display" : "Never smoked tobacco (finding)"
      },
      {
        "code" : "77176002",
        "display" : "Smoker (finding)"
      },
      {
        "code" : "266927001",
        "display" : "Tobacco smoking consumption unknown (finding)"
      },
      {
        "code" : "230063004",
        "display" : "Heavy cigarette smoker (finding)"
      },
      {
        "code" : "230060001",
        "display" : "Light cigarette smoker (finding)"
      }]
    }]
  }
}

```
