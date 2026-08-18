# NG Relationships VS - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG Relationships VS**

## ValueSet: NG Relationships VS 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-relationships-vs | *Version*:0.0.0 |
| Active as of 2026-08-18 | *Computable Name*:NgRelationshipsVS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.48.179 | |

 
list of persons related to a patient, but who is not a direct target of care. 

 **References** 

* [NG Patient](StructureDefinition-ng-patient.md)
* [NG HIV Care and Treatment Transfer Form Questionnaire](Questionnaire-ng-hiv-transfer-form-questionnaire.md)
* [NG Immunization Client Registration Form](Questionnaire-ng-imm-client-registration-form.md)
* [NG Immunization Updating Client Record Form](Questionnaire-ng-imm-updating-client-record-form.md)

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
  "id" : "ng-relationships-vs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-relationships-vs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.48.179"
  }],
  "version" : "0.0.0",
  "name" : "NgRelationshipsVS",
  "title" : "NG Relationships VS",
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
  "description" : "list of persons related to a patient, but who is not a direct target of care.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-relationship-cs"
    }]
  }
}

```
