# NG HIV ART Register Regimen Codes - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG HIV ART Register Regimen Codes**

## CodeSystem: NG HIV ART Register Regimen Codes 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-art-register-regimen-cs | *Version*:0.0.0 |
| Draft as of 2026-07-28 | *Computable Name*:NgHivArtRegisterRegimenCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.25 | |

 
Adult and paediatric first-, second- and third-line ART regimen codes printed on the November 2025 National ART Register. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NgHivArtRegisterRegimenVS](ValueSet-ng-hiv-art-register-regimen-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-hiv-art-register-regimen-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-art-register-regimen-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.25"
  }],
  "version" : "0.0.0",
  "name" : "NgHivArtRegisterRegimenCS",
  "title" : "NG HIV ART Register Regimen Codes",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-07-28",
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
  "description" : "Adult and paediatric first-, second- and third-line ART regimen codes printed on the November 2025 National ART Register.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 51,
  "concept" : [{
    "code" : "1a",
    "display" : "TDF + 3TC + DTG"
  },
  {
    "code" : "1aa",
    "display" : "TDF + FTC + DTG"
  },
  {
    "code" : "1b",
    "display" : "TDF + 3TC + EFV 400"
  },
  {
    "code" : "1bb",
    "display" : "TDF + FTC + EFV 400"
  },
  {
    "code" : "1c",
    "display" : "ABC + 3TC + DTG"
  },
  {
    "code" : "1d",
    "display" : "TDF + 3TC + EFV"
  },
  {
    "code" : "1dd",
    "display" : "TDF + FTC + EFV"
  },
  {
    "code" : "1e",
    "display" : "TAF + 3TC + DTG"
  },
  {
    "code" : "1ee",
    "display" : "TAF + FTC + DTG"
  },
  {
    "code" : "1f",
    "display" : "TDF + 3TC + RAL"
  },
  {
    "code" : "1ff",
    "display" : "TDF + FTC + RAL"
  },
  {
    "code" : "2a",
    "display" : "AZT + 3TC + ATV/r"
  },
  {
    "code" : "2b",
    "display" : "TDF + 3TC + ATV/r"
  },
  {
    "code" : "2c",
    "display" : "TDF + 3TC + LPV/r"
  },
  {
    "code" : "2d",
    "display" : "AZT + 3TC + LPV/r"
  },
  {
    "code" : "2e",
    "display" : "AZT + TDF + 3TC + ATV/r"
  },
  {
    "code" : "2f",
    "display" : "AZT + TDF + 3TC + LPV/r"
  },
  {
    "code" : "2g",
    "display" : "TDF + 3TC + DTG"
  },
  {
    "code" : "2h",
    "display" : "AZT + 3TC + DRV/r"
  },
  {
    "code" : "2i",
    "display" : "TDF + 3TC + DRV/r"
  },
  {
    "code" : "2j",
    "display" : "AZT + 3TC + LPV/r + DTG"
  },
  {
    "code" : "3a",
    "display" : "DRV/r + DTG ± 1–2 NRTIs"
  },
  {
    "code" : "3b",
    "display" : "DRV/r + 2 NRTIs ± ETV"
  },
  {
    "code" : "4a",
    "display" : "TDF + 3TC + DTG"
  },
  {
    "code" : "4aa",
    "display" : "TDF + FTC + DTG"
  },
  {
    "code" : "4b",
    "display" : "ABC + 3TC + DTG"
  },
  {
    "code" : "4bb",
    "display" : "ABC + FTC + DTG"
  },
  {
    "code" : "4c",
    "display" : "ABC + 3TC + LPV/r"
  },
  {
    "code" : "4d",
    "display" : "TDF + 3TC + EFV 400"
  },
  {
    "code" : "4dd",
    "display" : "TDF + FTC + EFV 400"
  },
  {
    "code" : "4e",
    "display" : "AZT + 3TC + LPV/r"
  },
  {
    "code" : "4f",
    "display" : "ABC + 3TC + EFV 400"
  },
  {
    "code" : "4ff",
    "display" : "ABC + FTC + EFV 400"
  },
  {
    "code" : "4g",
    "display" : "AZT + 3TC + RAL"
  },
  {
    "code" : "4h",
    "display" : "ABC + 3TC + EFV"
  },
  {
    "code" : "4i",
    "display" : "AZT + 3TC + NVP"
  },
  {
    "code" : "4j",
    "display" : "TAF + 3TC + DTG"
  },
  {
    "code" : "4jj",
    "display" : "TAF + FTC + DTG"
  },
  {
    "code" : "4k",
    "display" : "ABC + 3TC + RAL"
  },
  {
    "code" : "4l",
    "display" : "AZT + 3TC + EFV 200 or 400"
  },
  {
    "code" : "5a",
    "display" : "AZT + 3TC + LPV/r"
  },
  {
    "code" : "5b",
    "display" : "AZT + 3TC + ATV/r"
  },
  {
    "code" : "5c",
    "display" : "TDF + 3TC + ATV/r"
  },
  {
    "code" : "5d",
    "display" : "TDF + 3TC + LPV/r"
  },
  {
    "code" : "5e",
    "display" : "AZT + 3TC + RAL or DTG"
  },
  {
    "code" : "5f",
    "display" : "ABC + 3TC + RAL or DTG"
  },
  {
    "code" : "5g",
    "display" : "ABC + 3TC + LPV/r or paediatric DRV/r"
  },
  {
    "code" : "5h",
    "display" : "ABC + 3TC + LPV/r or ATV/r"
  },
  {
    "code" : "5i",
    "display" : "AZT + 3TC + ATV/r, paediatric DRV/r or LPV/r"
  },
  {
    "code" : "6a",
    "display" : "DRV/r + DTG or RAL ± 1–2 NRTIs"
  },
  {
    "code" : "6b",
    "display" : "DRV/r + 2 NRTIs ± ETV"
  }]
}

```
