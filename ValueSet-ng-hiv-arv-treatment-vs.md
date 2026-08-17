# HIV - ARV Drugs ValueSet - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HIV - ARV Drugs ValueSet**

## ValueSet: HIV - ARV Drugs ValueSet 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-arv-treatment-vs | *Version*:0.0.0 |
| Active as of 2026-08-17 | *Computable Name*:NgHivARVTreatmentVS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.48.52 | |

 
A list of codes describing the ARV Drugs. 

 **References** 

* [NG HIV Care and Treatment Transfer Form Questionnaire](Questionnaire-ng-hiv-transfer-form-questionnaire.md)

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
  "id" : "ng-hiv-arv-treatment-vs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-arv-treatment-vs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.48.52"
  }],
  "version" : "0.0.0",
  "name" : "NgHivARVTreatmentVS",
  "title" : "HIV - ARV Drugs ValueSet",
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
  "description" : "A list of codes describing the ARV Drugs.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "874950001",
        "display" : "Product containing only efavirenz and lamivudine and tenofovir (medicinal product)"
      },
      {
        "code" : "324859007",
        "display" : "Lamivudine- and zidovudine-containing product"
      },
      {
        "code" : "776467001",
        "display" : "Lamivudine and nevirapine and zidovudine only product"
      },
      {
        "code" : "787163007",
        "display" : "Dolutegravir- and lamivudine-containing product"
      },
      {
        "code" : "413381000",
        "display" : "Abacavir- and lamivudine-containing product"
      },
      {
        "code" : "387472004",
        "display" : "Isoniazid"
      },
      {
        "code" : "387174006",
        "display" : "Fluconazole"
      },
      {
        "code" : "772196006",
        "display" : "Abacavir and dolutegravir and lamivudine only product"
      },
      {
        "code" : "714769003",
        "display" : "Abacavir- and dolutegravir- and lamivudine-containing product"
      }]
    },
    {
      "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-arv-treatment-cs"
    }]
  }
}

```
