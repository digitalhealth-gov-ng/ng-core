# HIV Opportunistic Infections ValueSet - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HIV Opportunistic Infections ValueSet**

## ValueSet: HIV Opportunistic Infections ValueSet 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-opportunistic-infections-vs | *Version*:0.0.0 |
| Active as of 2026-08-17 | *Computable Name*:NgHivOpportunisticInfectionsVS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.48.105 | |

 
Codes used for representing opportunistic infections. 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

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
  "id" : "ng-hiv-opportunistic-infections-vs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-opportunistic-infections-vs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.48.105"
  }],
  "version" : "0.0.0",
  "name" : "NgHivOpportunisticInfectionsVS",
  "title" : "HIV Opportunistic Infections ValueSet",
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
  "description" : "Codes used for representing opportunistic infections.",
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
        "code" : "4740000",
        "display" : "Herpes zoster"
      },
      {
        "code" : "423997002",
        "display" : "Tuberculosis, extrapulmonary"
      },
      {
        "code" : "154283005",
        "display" : "Pulmonary tuberculosis"
      },
      {
        "code" : "72934000",
        "display" : "Candidiasis of vagina"
      },
      {
        "code" : "236071009",
        "display" : "Chronic diarrhea"
      },
      {
        "code" : "192701001",
        "display" : "Toxoplasma encephalitis"
      },
      {
        "code" : "109385007",
        "display" : "Kaposi's sarcoma"
      },
      {
        "code" : "415125002",
        "display" : "Pneumocystosis jirovecii pneumonia"
      },
      {
        "code" : "95589007",
        "display" : "Ulcers of male genital organs"
      },
      {
        "code" : "95595008",
        "display" : "Ulcers of female genital organs"
      },
      {
        "code" : "53084003",
        "display" : "Bacterial pneumonia"
      },
      {
        "code" : "20639004",
        "display" : "Candidiasis of the esophagus"
      },
      {
        "code" : "26284000",
        "display" : "Ulcer of mouth"
      },
      {
        "code" : "409966000",
        "display" : "Acute diarrhea"
      },
      {
        "code" : "14232007",
        "display" : "Cryptococcal meningitis"
      },
      {
        "code" : "363354003",
        "display" : "Malignant tumor of cervix"
      },
      {
        "code" : "79740000",
        "display" : "Candidiasis of mouth"
      },
      {
        "code" : "118601006",
        "display" : "Non-Hodgkin's lymphoma"
      },
      {
        "code" : "240704003",
        "display" : "Pharyngeal candidiasis"
      },
      {
        "code" : "42386007",
        "display" : "Cryptococcosis"
      },
      {
        "code" : "95892003",
        "display" : "Persistent generalized lymphadenopathy"
      },
      {
        "code" : "288517002",
        "display" : "Wasting disease"
      },
      {
        "code" : "95346009",
        "display" : "Mucocutaneous ulcer"
      },
      {
        "code" : "195708003",
        "display" : "Recurrent upper respiratory tract infection"
      },
      {
        "code" : "22255007",
        "display" : "Progressive multifocal leukoencephalopathy"
      },
      {
        "code" : "240413000",
        "display" : "Disseminated atypical mycobacterial infection"
      },
      {
        "code" : "386661006",
        "display" : "Fever"
      },
      {
        "code" : "62315008",
        "display" : "Diarrhea"
      },
      {
        "code" : "699014000",
        "display" : "Recurrent pneumonia"
      },
      {
        "code" : "81308009",
        "display" : "Disorder of brain"
      },
      {
        "code" : "3218000",
        "display" : "Mycosis"
      },
      {
        "code" : "240370009",
        "display" : "Cryptosporidiosis"
      },
      {
        "code" : "440219001",
        "display" : "Bacteremia caused by Salmonella"
      }]
    },
    {
      "system" : "http://loinc.org",
      "concept" : [{
        "code" : "LA46-8",
        "display" : "Other"
      }]
    }]
  }
}

```
