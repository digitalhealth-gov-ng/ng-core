# NG HIV Care and ART Codes - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG HIV Care and ART Codes**

## CodeSystem: NG HIV Care and ART Codes 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-care-art-codes-cs | *Version*:0.0.0 |
| Active as of 2026-07-27 | *Computable Name*:NgHivCareArtCodesCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.33 | |

 
Local codes transcribed from the Nigeria HIV Care/ART Card for coded answers used by the HIV care and ART Questionnaire. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NG HIV ART Stop Reason](ValueSet-ng-hiv-art-stop-reason-vs.md)
* [NG HIV Care Entry Point](ValueSet-ng-hiv-care-entry-point-vs.md)
* [NG HIV Cause of Death](ValueSet-ng-hiv-cause-of-death-vs.md)
* [NG HIV CD4 Reference](ValueSet-ng-hiv-cd4-reference-vs.md)
* [NG HIV Drug Resistance Result](ValueSet-ng-hiv-drug-resistance-result-vs.md)
* [NG HIV Educational Status](ValueSet-ng-hiv-educational-status-vs.md)
* [NG HIV Key Population Typology](ValueSet-ng-hiv-kp-typology-vs.md)
* [NG HIV Marital Status](ValueSet-ng-hiv-marital-status-vs.md)
* [NG HIV Prior ART](ValueSet-ng-hiv-prior-art-vs.md)
* [NG HIV Regimen Substitution or Switch Reason](ValueSet-ng-hiv-regimen-change-reason-vs.md)
* [NG HIV TB Preventive Therapy](ValueSet-ng-hiv-tb-preventive-therapy-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-hiv-care-art-codes-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-care-art-codes-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.33"
  }],
  "version" : "0.0.0",
  "name" : "NgHivCareArtCodesCS",
  "title" : "NG HIV Care and ART Codes",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-27",
  "publisher" : "NDHI",
  "contact" : [{
    "name" : "NDHI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://digitalhealth.gov.ng"
    }]
  }],
  "description" : "Local codes transcribed from the Nigeria HIV Care/ART Card for coded answers\nused by the HIV care and ART Questionnaire.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 68,
  "concept" : [{
    "code" : "marital-status-1",
    "display" : "Single",
    "definition" : "Source form code 1: Single."
  },
  {
    "code" : "marital-status-2",
    "display" : "Married",
    "definition" : "Source form code 2: Married."
  },
  {
    "code" : "marital-status-3",
    "display" : "Divorced",
    "definition" : "Source form code 3: Divorced."
  },
  {
    "code" : "marital-status-4",
    "display" : "Separated",
    "definition" : "Source form code 4: Separated."
  },
  {
    "code" : "marital-status-5",
    "display" : "Cohabiting",
    "definition" : "Source form code 5: Cohabiting."
  },
  {
    "code" : "marital-status-6",
    "display" : "Widower",
    "definition" : "Source form code 6: Widower."
  },
  {
    "code" : "educational-status-1",
    "display" : "No education",
    "definition" : "Source form code 1: No education."
  },
  {
    "code" : "educational-status-2",
    "display" : "Primary Education",
    "definition" : "Source form code 2: Primary Education."
  },
  {
    "code" : "educational-status-3",
    "display" : "Secondary Education",
    "definition" : "Source form code 3: Secondary Education."
  },
  {
    "code" : "educational-status-4",
    "display" : "Tertiary Education",
    "definition" : "Source form code 4: Tertiary Education."
  },
  {
    "code" : "educational-status-5",
    "display" : "Others",
    "definition" : "Source form code 5: Others (specify)."
  },
  {
    "code" : "care-entry-point-1",
    "display" : "OPD",
    "definition" : "Source form code 1: Outpatient department."
  },
  {
    "code" : "care-entry-point-2",
    "display" : "Inpatients",
    "definition" : "Source form code 2: Inpatients."
  },
  {
    "code" : "care-entry-point-3",
    "display" : "HTS",
    "definition" : "Source form code 3: HIV testing services."
  },
  {
    "code" : "care-entry-point-4",
    "display" : "TB DOTS",
    "definition" : "Source form code 4: TB DOTS."
  },
  {
    "code" : "care-entry-point-5",
    "display" : "STI Clinic",
    "definition" : "Source form code 5: STI Clinic."
  },
  {
    "code" : "care-entry-point-6",
    "display" : "ANC/PMTCT",
    "definition" : "Source form code 6: ANC/PMTCT."
  },
  {
    "code" : "care-entry-point-7",
    "display" : "Transfer-in",
    "definition" : "Source form code 7: Transfer-in."
  },
  {
    "code" : "care-entry-point-8",
    "display" : "Community",
    "definition" : "Source form code 8: Community."
  },
  {
    "code" : "care-entry-point-9",
    "display" : "Others",
    "definition" : "Source form code 9: Others (specify)."
  },
  {
    "code" : "prior-art-1",
    "display" : "Earlier ARV but not a transfer in",
    "definition" : "Source form code 1."
  },
  {
    "code" : "prior-art-2",
    "display" : "Transfer in without records",
    "definition" : "Source form code 2."
  },
  {
    "code" : "prior-art-3",
    "display" : "PrEP",
    "definition" : "Source form code 3: Pre-exposure prophylaxis."
  },
  {
    "code" : "prior-art-4",
    "display" : "PEP",
    "definition" : "Source form code 4: Post-exposure prophylaxis."
  },
  {
    "code" : "kp-typology-1",
    "display" : "MSM",
    "definition" : "Source form code 1: Men who have sex with men."
  },
  {
    "code" : "kp-typology-2",
    "display" : "FSW",
    "definition" : "Source form code 2: Female sex workers."
  },
  {
    "code" : "kp-typology-3",
    "display" : "PWID",
    "definition" : "Source form code 3: People who inject drugs."
  },
  {
    "code" : "kp-typology-4",
    "display" : "TG",
    "definition" : "Source form code 4: Transgender persons."
  },
  {
    "code" : "kp-typology-5",
    "display" : "Persons in custodial centers",
    "definition" : "Source form code 5."
  },
  {
    "code" : "cd4-reference-less-than-200",
    "display" : "<200 cells/mm3",
    "definition" : "CD4 result below 200 cells/mm3."
  },
  {
    "code" : "cd4-reference-greater-than-or-equal-200",
    "display" : "≥200 cells/mm3",
    "definition" : "CD4 result greater than or equal to 200 cells/mm3."
  },
  {
    "code" : "tpt-1",
    "display" : "Isoniazid (6H)",
    "definition" : "Source form code 1: Isoniazid for six months."
  },
  {
    "code" : "tpt-2",
    "display" : "Isoniazid and Rifapentine (3HP)",
    "definition" : "Source form code 2."
  },
  {
    "code" : "tpt-3",
    "display" : "Isoniazid and Rifampicin (3HR)",
    "definition" : "Source form code 3."
  },
  {
    "code" : "tpt-4",
    "display" : "CTX/INH/B6 FDC (QTIP)",
    "definition" : "Source form code 4: Cotrimoxazole/Isoniazid/Pyridoxine fixed-dose combination."
  },
  {
    "code" : "drug-resistance-result-1",
    "display" : "Wild type",
    "definition" : "Source form code 1."
  },
  {
    "code" : "drug-resistance-result-2",
    "display" : "Resistant detected",
    "definition" : "Source form code 2."
  },
  {
    "code" : "drug-resistance-result-3",
    "display" : "No resistance detected",
    "definition" : "Source form code 3."
  },
  {
    "code" : "drug-resistance-result-4",
    "display" : "Partial or mixed resistance",
    "definition" : "Source form code 4."
  },
  {
    "code" : "drug-resistance-result-5",
    "display" : "Indeterminate or unsuccessful test",
    "definition" : "Source form code 5."
  },
  {
    "code" : "regimen-change-reason-1",
    "display" : "Toxicity/side effects",
    "definition" : "Source form code 1."
  },
  {
    "code" : "regimen-change-reason-2",
    "display" : "Pregnancy",
    "definition" : "Source form code 2."
  },
  {
    "code" : "regimen-change-reason-3",
    "display" : "Risk of pregnancy",
    "definition" : "Source form code 3."
  },
  {
    "code" : "regimen-change-reason-4",
    "display" : "Due to new TB",
    "definition" : "Source form code 4."
  },
  {
    "code" : "regimen-change-reason-5",
    "display" : "New drug available",
    "definition" : "Source form code 5."
  },
  {
    "code" : "regimen-change-reason-6",
    "display" : "Drug out of stock",
    "definition" : "Source form code 6."
  },
  {
    "code" : "regimen-change-reason-7",
    "display" : "Clinical treatment failure",
    "definition" : "Source form code 7."
  },
  {
    "code" : "regimen-change-reason-8",
    "display" : "Immunologic failure",
    "definition" : "Source form code 8."
  },
  {
    "code" : "regimen-change-reason-9",
    "display" : "Virologic failure",
    "definition" : "Source form code 9."
  },
  {
    "code" : "regimen-change-reason-10",
    "display" : "Other reason",
    "definition" : "Source form code 10: Other reason (specify)."
  },
  {
    "code" : "art-stop-reason-1",
    "display" : "Toxicity/side effects",
    "definition" : "Source form code 1."
  },
  {
    "code" : "art-stop-reason-2",
    "display" : "Pregnancy",
    "definition" : "Source form code 2."
  },
  {
    "code" : "art-stop-reason-3",
    "display" : "Treatment failure",
    "definition" : "Source form code 3."
  },
  {
    "code" : "art-stop-reason-4",
    "display" : "Poor adherence",
    "definition" : "Source form code 4."
  },
  {
    "code" : "art-stop-reason-5",
    "display" : "Illness or hospitalization",
    "definition" : "Source form code 5."
  },
  {
    "code" : "art-stop-reason-6",
    "display" : "Drugs out of stock",
    "definition" : "Source form code 6."
  },
  {
    "code" : "art-stop-reason-7",
    "display" : "Patient lacks finances",
    "definition" : "Source form code 7."
  },
  {
    "code" : "art-stop-reason-8",
    "display" : "Other patient decision",
    "definition" : "Source form code 8."
  },
  {
    "code" : "art-stop-reason-9",
    "display" : "Planned treatment interruption",
    "definition" : "Source form code 9."
  },
  {
    "code" : "art-stop-reason-10",
    "display" : "Other",
    "definition" : "Source form code 10: Other (specify)."
  },
  {
    "code" : "cause-of-death-1",
    "display" : "HIV related",
    "definition" : "Source form code 1."
  },
  {
    "code" : "cause-of-death-2",
    "display" : "TB",
    "definition" : "Source form code 2."
  },
  {
    "code" : "cause-of-death-3",
    "display" : "Road accident",
    "definition" : "Source form code 3."
  },
  {
    "code" : "cause-of-death-4",
    "display" : "Malaria",
    "definition" : "Source form code 4."
  },
  {
    "code" : "cause-of-death-5",
    "display" : "COPD",
    "definition" : "Source form code 5."
  },
  {
    "code" : "cause-of-death-6",
    "display" : "Hypertension",
    "definition" : "Source form code 6."
  },
  {
    "code" : "cause-of-death-7",
    "display" : "Diabetes",
    "definition" : "Source form code 7."
  },
  {
    "code" : "cause-of-death-8",
    "display" : "Others",
    "definition" : "Source form code 8: Others (specify)."
  }]
}

```
