# NG HIV Pharmacy Worksheet HEI ARV Prophylaxis Regimens - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG HIV Pharmacy Worksheet HEI ARV Prophylaxis Regimens**

## CodeSystem: NG HIV Pharmacy Worksheet HEI ARV Prophylaxis Regimens 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-pharmacy-worksheet-arv-prophylaxis-cs | *Version*:0.0.0 |
| Active as of 2026-07-29 | *Computable Name*:NgHivPharmacyWorksheetArvProphylaxisCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.61 | |

 
ARV prophylaxis codes printed in W17 for HIV-exposed infants. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NG HIV Pharmacy Worksheet HEI ARV Prophylaxis Regimen](ValueSet-ng-hiv-pharmacy-worksheet-arv-prophylaxis-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-hiv-pharmacy-worksheet-arv-prophylaxis-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-pharmacy-worksheet-arv-prophylaxis-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.61"
  }],
  "version" : "0.0.0",
  "name" : "NgHivPharmacyWorksheetArvProphylaxisCS",
  "title" : "NG HIV Pharmacy Worksheet HEI ARV Prophylaxis Regimens",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-29",
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
  "description" : "ARV prophylaxis codes printed in W17 for HIV-exposed infants.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "1",
    "display" : "Nevirapine",
    "definition" : "NVP."
  },
  {
    "code" : "2",
    "display" : "Zidovudine plus Nevirapine",
    "definition" : "AZT + NVP."
  },
  {
    "code" : "3",
    "display" : "Zidovudine plus Lamivudine plus Nevirapine or Raltegravir",
    "definition" : "AZT + 3TC + NVP/RAL, preserving the source worksheet expression."
  }]
}

```
