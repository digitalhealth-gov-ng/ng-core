# Nigeria AEFI Manifestations - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Nigeria AEFI Manifestations**

## ValueSet: Nigeria AEFI Manifestations 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-aefi-manifestation | *Version*:0.0.0 |
| Draft as of 2026-08-18 | *Computable Name*:NGAEFIManifestationVS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.48.1 | |

 
Clinical signs, symptoms, and manifestations associated with adverse events following immunization. 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

No formal definition provided for this value set

 

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
  "id" : "ng-aefi-manifestation",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-aefi-manifestation",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.48.1"
  }],
  "version" : "0.0.0",
  "name" : "NGAEFIManifestationVS",
  "title" : "Nigeria AEFI Manifestations",
  "status" : "draft",
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
  "description" : "Clinical signs, symptoms, and manifestations associated with adverse events following immunization.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }]
}

```
