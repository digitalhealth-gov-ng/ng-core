# NG Age Component Codes - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG Age Component Codes**

## CodeSystem: NG Age Component Codes 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/age-component-codes-cs | *Version*:0.0.0 |
| Active as of 2026-08-18 | *Computable Name*:NgAgeComponentCodesCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.1 | |

 
Local CodeSystem for age components: units, comparison operators, and common MNCH/EPI age bands for use in measures, decision logic, and stratification. 

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "age-component-codes-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/age-component-codes-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.1"
  }],
  "version" : "0.0.0",
  "name" : "NgAgeComponentCodesCS",
  "title" : "NG Age Component Codes",
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
  "description" : "Local CodeSystem for age components: units, comparison operators, and common MNCH/EPI age bands for use in measures, decision logic, and stratification.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 30,
  "concept" : [{
    "code" : "a",
    "display" : "Age in years",
    "definition" : "Age measured in years."
  },
  {
    "code" : "mo",
    "display" : "Age in months",
    "definition" : "Age measured in months."
  },
  {
    "code" : "wk",
    "display" : "Age in weeks",
    "definition" : "Age measured in weeks."
  },
  {
    "code" : "d",
    "display" : "Age in days",
    "definition" : "Age measured in days."
  },
  {
    "code" : "h",
    "display" : "Hours (h)",
    "definition" : "Age measured in hours (e.g., immediate neonatal)."
  },
  {
    "code" : "op-lt",
    "display" : "< (less than)",
    "definition" : "Comparator for age threshold: less than."
  },
  {
    "code" : "op-le",
    "display" : "≤ (less than or equal)",
    "definition" : "Comparator for age threshold: less than or equal."
  },
  {
    "code" : "op-eq",
    "display" : "= (equal)",
    "definition" : "Comparator for age equality checks."
  },
  {
    "code" : "op-ge",
    "display" : "≥ (greater than or equal)",
    "definition" : "Comparator for age threshold: greater than or equal."
  },
  {
    "code" : "op-gt",
    "display" : "> (greater than)",
    "definition" : "Comparator for age threshold: greater than."
  },
  {
    "code" : "band-neonate",
    "display" : "Neonate (0–28 days)",
    "definition" : "0–28 days inclusive."
  },
  {
    "code" : "band-early-neonate",
    "display" : "Early neonate (0–6 days)",
    "definition" : "0–6 days inclusive."
  },
  {
    "code" : "band-late-neonate",
    "display" : "Late neonate (7–28 days)",
    "definition" : "7–28 days inclusive."
  },
  {
    "code" : "band-under1",
    "display" : "Under 1 year (0–11 months)",
    "definition" : "0–11 months inclusive."
  },
  {
    "code" : "band-infant",
    "display" : "Infant (1–11 months)",
    "definition" : "1–11 months inclusive."
  },
  {
    "code" : "band-u5",
    "display" : "Under 5 years (0–59 months)",
    "definition" : "0–59 months inclusive."
  },
  {
    "code" : "band-1to4y",
    "display" : "1–4 years",
    "definition" : "1 year up to 4 years 11 months."
  },
  {
    "code" : "band-5to9y",
    "display" : "5–9 years",
    "definition" : "5 years up to 9 years 11 months."
  },
  {
    "code" : "band-10to14y",
    "display" : "10–14 years",
    "definition" : "10 years up to 14 years 11 months."
  },
  {
    "code" : "band-15to19y",
    "display" : "Adolescent (15–19 years)",
    "definition" : "15 years up to 19 years 11 months."
  },
  {
    "code" : "band-20to24y",
    "display" : "Young adult (20–24 years)",
    "definition" : "20 years up to 24 years 11 months."
  },
  {
    "code" : "band-25to49y",
    "display" : "Adult (25–49 years)",
    "definition" : "25 years up to 49 years 11 months."
  },
  {
    "code" : "band-50to64y",
    "display" : "Older adult (50–64 years)",
    "definition" : "50 years up to 64 years 11 months."
  },
  {
    "code" : "band-65plus",
    "display" : "Senior (≥65 years)",
    "definition" : "65 years and above."
  },
  {
    "code" : "epi-birth",
    "display" : "At birth",
    "definition" : "EPI schedule label for birth dose."
  },
  {
    "code" : "epi-6w",
    "display" : "6 weeks",
    "definition" : "EPI schedule label for doses due at 6 weeks."
  },
  {
    "code" : "epi-10w",
    "display" : "10 weeks",
    "definition" : "EPI schedule label for doses due at 10 weeks."
  },
  {
    "code" : "epi-14w",
    "display" : "14 weeks",
    "definition" : "EPI schedule label for doses due at 14 weeks."
  },
  {
    "code" : "epi-9m",
    "display" : "9 months",
    "definition" : "EPI schedule label for doses due at 9 months."
  },
  {
    "code" : "epi-15m",
    "display" : "15 months",
    "definition" : "EPI schedule label for doses due at 15 months."
  }]
}

```
