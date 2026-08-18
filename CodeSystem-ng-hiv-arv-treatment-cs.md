# HIV ARV Drugs CodeSystem - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HIV ARV Drugs CodeSystem**

## CodeSystem: HIV ARV Drugs CodeSystem 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-arv-treatment-cs | *Version*:0.0.0 |
| Active as of 2026-08-18 | *Computable Name*:NgHivARVTreatmentCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.32 | |

 
A list of codes describing the ARV Drugs. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NG HIV - ARV Drugs](ValueSet-ng-hiv-arv-treatment-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-hiv-arv-treatment-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-arv-treatment-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.32"
  }],
  "version" : "0.0.0",
  "name" : "NgHivARVTreatmentCS",
  "title" : "HIV ARV Drugs CodeSystem",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-18T06:18:50+01:00",
  "publisher" : "NDHI",
  "contact" : [{
    "name" : "NDHI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://digitalhealth.gov.ng"
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
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 71,
  "concept" : [{
    "code" : "1a",
    "display" : "1a"
  },
  {
    "code" : "1b",
    "display" : "1b"
  },
  {
    "code" : "1c",
    "display" : "AZT + 3TC + NVP - Product containing only lamivudine and nevirapine and zidovudine"
  },
  {
    "code" : "1d",
    "display" : "AZT + 3TC + EFV"
  },
  {
    "code" : "1e",
    "display" : "TDF + 3TC + EFV - Product containing only efavirenz and lamivudine and tenofovir"
  },
  {
    "code" : "1f",
    "display" : "TDF + 3TC + NVP"
  },
  {
    "code" : "1g",
    "display" : "ABC + 3TC + EFV - Product containing abacavir and lamivudine"
  },
  {
    "code" : "1h",
    "display" : "ABC + 3TC + NVP - Product containing abacavir and lamivudine"
  },
  {
    "code" : "1j",
    "display" : "TDF + 3TC + DTG"
  },
  {
    "code" : "1k",
    "display" : "AZT + 3TC + DTG"
  },
  {
    "code" : "1a-30",
    "display" : "1a-30"
  },
  {
    "code" : "1a-40",
    "display" : "1a-40"
  },
  {
    "code" : "1b-30",
    "display" : "1b-30"
  },
  {
    "code" : "1b-40",
    "display" : "1b-40"
  },
  {
    "code" : "2a",
    "display" : "2a"
  },
  {
    "code" : "2b",
    "display" : "2b"
  },
  {
    "code" : "2c",
    "display" : "2c"
  },
  {
    "code" : "2d",
    "display" : "2d"
  },
  {
    "code" : "2e",
    "display" : "AZT + 3TC + LPV/r - Product containing lamivudine and zidovudine"
  },
  {
    "code" : "2f",
    "display" : "AZT + 3TC + ATV/r - Product containing lamivudine and zidovudine"
  },
  {
    "code" : "2g",
    "display" : "TDF + 3TC+ LPV/r"
  },
  {
    "code" : "2h",
    "display" : "TDF + 3TC + ATV/r"
  },
  {
    "code" : "2i",
    "display" : "ABC + 3TC + LPV/r - Product containing abacavir and lamivudine"
  },
  {
    "code" : "2j",
    "display" : "TDF + 3TC + DTG"
  },
  {
    "code" : "2k",
    "display" : "AZT + 3TC + DTG"
  },
  {
    "code" : "3a",
    "display" : "DRV/r + DTG + AZT/3TC"
  },
  {
    "code" : "3b",
    "display" : "DRV/r + DTG + TDF/3TC - Product containing dolutegravir and lamivudine"
  },
  {
    "code" : "3c",
    "display" : "DRV/r + ABC + 3TC + DTG"
  },
  {
    "code" : "3d",
    "display" : "DRV/r + ABC + EFV + 3TC"
  },
  {
    "code" : "3e",
    "display" : "DRV/r + TDF + 3TC + EFV"
  },
  {
    "code" : "3f",
    "display" : "DRV/r + AZT + 3TC + EFV"
  },
  {
    "code" : "4a",
    "display" : "4a"
  },
  {
    "code" : "4b",
    "display" : "4b"
  },
  {
    "code" : "4c",
    "display" : "AZT + 3TC + NVP"
  },
  {
    "code" : "4d",
    "display" : "AZT + 3TC + EFV"
  },
  {
    "code" : "4e",
    "display" : "TDF + 3TC + EFV"
  },
  {
    "code" : "4f",
    "display" : "AZT + 3TC + LPV/r"
  },
  {
    "code" : "4g",
    "display" : "ABC + 3TC + LPV/r"
  },
  {
    "code" : "4h",
    "display" : "Other"
  },
  {
    "code" : "4j",
    "display" : "ABC + 3TC + DTG"
  },
  {
    "code" : "4i",
    "display" : "TDF + 3TC + DTG"
  },
  {
    "code" : "4k",
    "display" : "AZT + 3TC + DTG"
  },
  {
    "code" : "4L",
    "display" : "ABC+ 3TC + EFV"
  },
  {
    "code" : "5a",
    "display" : "5a"
  },
  {
    "code" : "5b",
    "display" : "5b"
  },
  {
    "code" : "5c",
    "display" : "5c"
  },
  {
    "code" : "5d",
    "display" : "5d"
  },
  {
    "code" : "5e",
    "display" : "ABC + 3TC + LPV/r"
  },
  {
    "code" : "5f",
    "display" : "AZT + 3TC + LPV/r"
  },
  {
    "code" : "5g",
    "display" : "TDF + 3TC + EFV"
  },
  {
    "code" : "5h",
    "display" : "ABC + 3TC + EFV"
  },
  {
    "code" : "5i",
    "display" : "TDF + 3TC + LPV/r"
  },
  {
    "code" : "5j",
    "display" : "other"
  },
  {
    "code" : "5k",
    "display" : "RAL + AZT + 3TC"
  },
  {
    "code" : "5L",
    "display" : "RAL + ABC + 3TC"
  },
  {
    "code" : "5m",
    "display" : "ABC + 3TC + DTG"
  },
  {
    "code" : "5n",
    "display" : "ABC + 3TC + LPV/r"
  },
  {
    "code" : "5o",
    "display" : "TDF + 3TC + DTG"
  },
  {
    "code" : "6a",
    "display" : "6a"
  },
  {
    "code" : "6b",
    "display" : "6b"
  },
  {
    "code" : "6c",
    "display" : "6c"
  },
  {
    "code" : "6d",
    "display" : "6d"
  },
  {
    "code" : "6f",
    "display" : "DRV/r + DTG + ABC + 3TC"
  },
  {
    "code" : "6g",
    "display" : "DRV/r + ABC + 3TC + EFV"
  },
  {
    "code" : "6h",
    "display" : "DRV/r + AZT + 3TC + EFV"
  },
  {
    "code" : "other-adult-1",
    "display" : "Other Adult first line regimen"
  },
  {
    "code" : "other-adult-2",
    "display" : "Other Adult second line regimen"
  },
  {
    "code" : "other-adult-3",
    "display" : "Other Adult third line regimen"
  },
  {
    "code" : "other-children-1",
    "display" : "Other Children first line regimen"
  },
  {
    "code" : "other-children-2",
    "display" : "Other Children second line regimen"
  },
  {
    "code" : "other-children-3",
    "display" : "Other Children third line regimen"
  }]
}

```
