# NG HIV ART Monthly Summary Codes - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG HIV ART Monthly Summary Codes**

## CodeSystem: NG HIV ART Monthly Summary Codes 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-art-monthly-summary-cs | *Version*:0.0.0 |
| Active as of 2026-07-29 | *Computable Name*:NgHivArtMonthlySummaryCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.20 | |

 
Indicator, stratifier-dimension and local disaggregation codes for the Nigeria ART Monthly Summary Form revised November 2025. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NG HIV ART Monthly Age Groups](ValueSet-ng-hiv-art-monthly-age-group-vs.md)
* [NG HIV ART Monthly AHD Categories](ValueSet-ng-hiv-art-monthly-ahd-category-vs.md)
* [NG HIV ART Monthly Cervical Screening Age Groups](ValueSet-ng-hiv-art-monthly-cervical-age-group-vs.md)
* [NG HIV ART Monthly Cervical Screening Results](ValueSet-ng-hiv-art-monthly-cervical-screening-result-vs.md)
* [NG HIV ART Monthly Cervical Screening Timing](ValueSet-ng-hiv-art-monthly-cervical-screening-timing-vs.md)
* [NG HIV ART Monthly Cervical Treatment Types](ValueSet-ng-hiv-art-monthly-cervical-treatment-type-vs.md)
* [NG HIV ART Monthly Cryptococcal Meningitis Results](ValueSet-ng-hiv-art-monthly-cm-result-vs.md)
* [NG HIV ART Monthly CrAg Age Groups](ValueSet-ng-hiv-art-monthly-crag-age-group-vs.md)
* [NG HIV ART Monthly Serum CrAg Results](ValueSet-ng-hiv-art-monthly-crag-result-vs.md)
* [NG HIV ART Monthly Summary Indicators](ValueSet-ng-hiv-art-monthly-indicator-vs.md)
* [NG HIV ART Monthly Interruption Outcomes](ValueSet-ng-hiv-art-monthly-interruption-outcome-vs.md)
* [NG HIV ART Monthly MMD Duration](ValueSet-ng-hiv-art-monthly-mmd-duration-vs.md)
* [NG HIV ART Monthly TB and AHD Age Groups](ValueSet-ng-hiv-art-monthly-tb-ahd-age-group-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-hiv-art-monthly-summary-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-art-monthly-summary-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.20"
  }],
  "version" : "0.0.0",
  "name" : "NgHivArtMonthlySummaryCS",
  "title" : "NG HIV ART Monthly Summary Codes",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-29",
  "publisher" : "NDHI",
  "contact" : [{
    "name" : "NDHI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://digitalhealth.gov.ng"
    }]
  }],
  "description" : "Indicator, stratifier-dimension and local disaggregation codes for the Nigeria ART Monthly Summary Form revised November 2025.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 84,
  "concept" : [{
    "code" : "ART1",
    "display" : "ART1 (TX_NEW)",
    "definition" : "Number of people living with HIV newly started on ART during the month, excluding ART transfer-in."
  },
  {
    "code" : "ART2",
    "display" : "ART2 (TX_CURR)",
    "definition" : "Number of people living with HIV currently receiving ART during the month."
  },
  {
    "code" : "ART3",
    "display" : "ART3 (TX_PVLS_D)",
    "definition" : "Number of people living with HIV on ART for at least six months with a viral-load test result within the last 12 months."
  },
  {
    "code" : "ART4",
    "display" : "ART4 (TX_PVLS_N)",
    "definition" : "Number of people living with HIV on ART for at least six months with virologic suppression of 1000 copies/mL or less within the last 12 months."
  },
  {
    "code" : "ART5",
    "display" : "ART5 (TX_ATRR)",
    "definition" : "Number of people living with HIV on ART who had treatment interruption during the reporting month, disaggregated by tracking outcome."
  },
  {
    "code" : "ART6",
    "display" : "ART6 (TX_RTT)",
    "definition" : "Number of people living with HIV who restarted ART during the month."
  },
  {
    "code" : "ART7",
    "display" : "ART7 (TX_TO)",
    "definition" : "Number of people living with HIV who transferred out during the month."
  },
  {
    "code" : "ART8",
    "display" : "ART8 (TX_TI)",
    "definition" : "Number of people living with HIV who transferred in during the month."
  },
  {
    "code" : "ART9",
    "display" : "ART9 (ART_INSURANCE)",
    "definition" : "Number of people living with HIV on ART with current health-insurance cover."
  },
  {
    "code" : "ART10",
    "display" : "ART10 (TX_TB_SCRN)",
    "definition" : "Number of people living with HIV on ART, including PMTCT clients, who were clinically screened for TB in HIV treatment settings."
  },
  {
    "code" : "ART11",
    "display" : "ART11 (TX_TB_SCRN_POS)",
    "definition" : "Number of people living with HIV on ART with presumptive TB during the month."
  },
  {
    "code" : "ART12",
    "display" : "ART12 (TX_TB_TST)",
    "definition" : "Number of people living with HIV on ART with presumptive TB who were tested for TB during the month."
  },
  {
    "code" : "ART13",
    "display" : "ART13 (TX_TB_TST_POS)",
    "definition" : "Number of people living with HIV on ART who had active TB disease."
  },
  {
    "code" : "ART14",
    "display" : "ART14 (TX_TB)",
    "definition" : "Number of people living with HIV on ART with active TB disease who initiated TB treatment."
  },
  {
    "code" : "ART15",
    "display" : "ART15 (TB_PREV_D)",
    "definition" : "Number of people living with HIV on ART who initiated TB preventive treatment."
  },
  {
    "code" : "ART16",
    "display" : "ART16 (TB_PREV_N)",
    "definition" : "Number of people living with HIV on ART who completed a course of TB preventive treatment among those who initiated it."
  },
  {
    "code" : "ART17",
    "display" : "ART17 (TB_PREV_EVR)",
    "definition" : "Number of people living with HIV currently on ART who had ever received TB preventive treatment."
  },
  {
    "code" : "ART18",
    "display" : "ART18 (CARE_NEW)",
    "definition" : "Number of people living with HIV newly enrolled in care during the month."
  },
  {
    "code" : "ART19",
    "display" : "ART19 (AHD_SCRN)",
    "definition" : "Number of people living with HIV with advanced HIV disease: WHO clinical stage 3 or 4, CD4 below 200 cells/mm3, or child aged five years or younger."
  },
  {
    "code" : "ART20",
    "display" : "ART20 (AHD_SCRN_CRAG)",
    "definition" : "Number of people living with HIV with advanced HIV disease screened for serum cryptococcal antigen."
  },
  {
    "code" : "ART21",
    "display" : "ART21 (AHD_SCRN_CSF)",
    "definition" : "Number of people living with HIV with advanced HIV disease and positive serum CrAg who were screened for cryptococcal meningitis by lumbar puncture."
  },
  {
    "code" : "ART22",
    "display" : "ART22 (AHD_MEN_TX)",
    "definition" : "Number of people living with HIV started on treatment for cryptococcal meningitis."
  },
  {
    "code" : "ART23",
    "display" : "ART23 (CER_SCRN)",
    "definition" : "Number of women living with HIV on ART screened for cervical cancer."
  },
  {
    "code" : "ART24",
    "display" : "ART24 (CER_TX)",
    "definition" : "Number of women living with HIV on ART who screened positive, were eligible for treatment, and received cryotherapy, thermal ablation or LEEP."
  },
  {
    "code" : "artAgeGroup",
    "display" : "ART age group"
  },
  {
    "code" : "sex",
    "display" : "Sex"
  },
  {
    "code" : "keyPopulation",
    "display" : "Key-population typology"
  },
  {
    "code" : "regimenLine",
    "display" : "ART regimen line"
  },
  {
    "code" : "mmdDuration",
    "display" : "Multi-month dispensing duration"
  },
  {
    "code" : "interruptionOutcome",
    "display" : "Treatment-interruption outcome"
  },
  {
    "code" : "tbAhdAgeGroup",
    "display" : "TB and AHD age group"
  },
  {
    "code" : "tptRegimen",
    "display" : "TB preventive-treatment regimen"
  },
  {
    "code" : "ahdCategory",
    "display" : "Advanced-HIV-disease entry category"
  },
  {
    "code" : "cragAgeGroup",
    "display" : "CrAg age group"
  },
  {
    "code" : "cragResult",
    "display" : "Serum CrAg result"
  },
  {
    "code" : "cryptococcalMeningitisResult",
    "display" : "Cryptococcal-meningitis screening result"
  },
  {
    "code" : "cervicalAgeGroup",
    "display" : "Cervical-screening age group"
  },
  {
    "code" : "cervicalScreeningResult",
    "display" : "Cervical-screening result"
  },
  {
    "code" : "cervicalScreeningTiming",
    "display" : "Cervical-screening timing"
  },
  {
    "code" : "cervicalTreatmentType",
    "display" : "Cervical treatment type"
  },
  {
    "code" : "age-lt-1",
    "display" : "Younger than 1 year"
  },
  {
    "code" : "age-1-4",
    "display" : "1-4 years"
  },
  {
    "code" : "age-5-9",
    "display" : "5-9 years"
  },
  {
    "code" : "age-10-14",
    "display" : "10-14 years"
  },
  {
    "code" : "age-15-19",
    "display" : "15-19 years"
  },
  {
    "code" : "age-20-24",
    "display" : "20-24 years"
  },
  {
    "code" : "age-25-49",
    "display" : "25-49 years"
  },
  {
    "code" : "age-50-plus",
    "display" : "50 years or older"
  },
  {
    "code" : "age-lt-5",
    "display" : "Younger than 5 years"
  },
  {
    "code" : "age-5-14",
    "display" : "5-14 years"
  },
  {
    "code" : "age-15-plus",
    "display" : "15 years or older"
  },
  {
    "code" : "age-10-14-crag",
    "display" : "10-14 years"
  },
  {
    "code" : "age-15-plus-crag",
    "display" : "15 years or older"
  },
  {
    "code" : "cervical-age-15-19",
    "display" : "15-19 years"
  },
  {
    "code" : "cervical-age-20-24",
    "display" : "20-24 years"
  },
  {
    "code" : "cervical-age-25-29",
    "display" : "25-29 years"
  },
  {
    "code" : "cervical-age-30-34",
    "display" : "30-34 years"
  },
  {
    "code" : "cervical-age-35-39",
    "display" : "35-39 years"
  },
  {
    "code" : "cervical-age-40-44",
    "display" : "40-44 years"
  },
  {
    "code" : "cervical-age-45-49",
    "display" : "45-49 years"
  },
  {
    "code" : "cervical-age-50-plus",
    "display" : "50 years or older"
  },
  {
    "code" : "mmd-lt-3-months",
    "display" : "Less than 3 months"
  },
  {
    "code" : "mmd-3-5-months",
    "display" : "3-5 months"
  },
  {
    "code" : "mmd-6-plus-months",
    "display" : "6 months or more"
  },
  {
    "code" : "stopped-treatment",
    "display" : "Stopped treatment"
  },
  {
    "code" : "lost-to-follow-up",
    "display" : "Lost to follow-up"
  },
  {
    "code" : "dead",
    "display" : "Dead"
  },
  {
    "code" : "newly-enrolled",
    "display" : "Newly enrolled"
  },
  {
    "code" : "unsuppressed",
    "display" : "Unsuppressed"
  },
  {
    "code" : "restarted",
    "display" : "Restarted ART"
  },
  {
    "code" : "crag-negative",
    "display" : "Serum CrAg negative"
  },
  {
    "code" : "crag-positive",
    "display" : "Serum CrAg positive"
  },
  {
    "code" : "cm-positive",
    "display" : "Cryptococcal meningitis screening positive"
  },
  {
    "code" : "cm-negative",
    "display" : "Cryptococcal meningitis screening negative"
  },
  {
    "code" : "cervical-positive",
    "display" : "Positive"
  },
  {
    "code" : "cervical-negative",
    "display" : "Negative"
  },
  {
    "code" : "cervical-precancerous-lesion",
    "display" : "Pre-cancerous lesion"
  },
  {
    "code" : "cervical-suspected-cancer",
    "display" : "Suspected cancer"
  },
  {
    "code" : "screening-first-time",
    "display" : "First-time screening"
  },
  {
    "code" : "screening-repeat-negative",
    "display" : "Re-screening after a previous negative result"
  },
  {
    "code" : "screening-post-treatment",
    "display" : "Post-treatment follow-up"
  },
  {
    "code" : "treatment-cryotherapy",
    "display" : "Cryotherapy"
  },
  {
    "code" : "treatment-leep",
    "display" : "Loop electrosurgical excision procedure"
  },
  {
    "code" : "treatment-thermal-ablation",
    "display" : "Thermal ablation"
  }]
}

```
