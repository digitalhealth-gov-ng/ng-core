# NG IMMZ.D.DE4 Vaccine Library (SNOMED CT) - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG IMMZ.D.DE4 Vaccine Library (SNOMED CT)**

## CodeSystem: NG IMMZ.D.DE4 Vaccine Library (SNOMED CT) 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-vaccine-local-to-snomed-cs | *Version*:0.0.0 |
| Active as of 2026-08-17 | *Computable Name*:NgVaccineLibrarySnomedCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.108 | |

 
SNOMED-CT code Immunization.vaccineCode. Dose/order is not encoded in codes; use protocolApplied.doseNumber[x]. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NG Vaccine SNOMED ValueSet](ValueSet-ng-vaccine-snomed-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-vaccine-local-to-snomed-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-vaccine-local-to-snomed-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.108"
  }],
  "version" : "0.0.0",
  "name" : "NgVaccineLibrarySnomedCS",
  "title" : "NG IMMZ.D.DE4 Vaccine Library (SNOMED CT)",
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
  "description" : "SNOMED-CT code Immunization.vaccineCode. Dose/order is not encoded in codes; use protocolApplied.doseNumber[x].",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 11,
  "concept" : [{
    "code" : "1861000221106",
    "display" : "BCG vaccine"
  },
  {
    "code" : "871822003",
    "display" : "Hepatitis B vaccine"
  },
  {
    "code" : "293117006",
    "display" : "Poliomyelitis vaccine"
  },
  {
    "code" : "409568008",
    "display" : "DTP-HepB-Hib vaccine"
  },
  {
    "code" : "1052328007",
    "display" : "Pneumococcal conjugate vaccine"
  },
  {
    "code" : "871761004",
    "display" : "Rotavirus vaccine"
  },
  {
    "code" : "871817003",
    "display" : "Measles and rubella vaccine"
  },
  {
    "code" : "871717007",
    "display" : "Yellow fever vaccine"
  },
  {
    "code" : "219088009",
    "display" : "Meningococcal vaccine"
  },
  {
    "code" : "871826000",
    "display" : "Tetanus-diphtheria vaccine"
  },
  {
    "code" : "911000221103",
    "display" : "Human papillomavirus vaccine"
  }]
}

```
