# NG HIV Pharmacy Daily Worksheet - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG HIV Pharmacy Daily Worksheet**

## Logical Model: NG HIV Pharmacy Daily Worksheet 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/NgHivPharmacyDailyWorksheet | *Version*:0.0.0 |
| Draft as of 2026-08-18 | *Computable Name*:NgHivPharmacyDailyWorksheet |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.42.6 | |

 
Logical model for the revised Nigeria HIV Pharmacy Daily Worksheet. One instance represents one pharmacist worksheet for one dispensing date and contains repeatable patient-level dispensing entries corresponding to printed fields W1 through W73. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ng.gov.digitalhealth.fhir-ig|current/StructureDefinition/StructureDefinition-NgHivPharmacyDailyWorksheet.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-NgHivPharmacyDailyWorksheet.csv), [Excel](StructureDefinition-NgHivPharmacyDailyWorksheet.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "NgHivPharmacyDailyWorksheet",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/NgHivPharmacyDailyWorksheet",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.42.6"
  }],
  "version" : "0.0.0",
  "name" : "NgHivPharmacyDailyWorksheet",
  "title" : "NG HIV Pharmacy Daily Worksheet",
  "status" : "draft",
  "date" : "2026-08-18T06:18:50+01:00",
  "publisher" : "NDHI",
  "contact" : [{
    "name" : "NDHI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://digitalhealth.gov.ng"
    }]
  }],
  "description" : "Logical model for the revised Nigeria HIV Pharmacy Daily Worksheet. One\ninstance represents one pharmacist worksheet for one dispensing date and\ncontains repeatable patient-level dispensing entries corresponding to\nprinted fields W1 through W73.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "ng-hiv-pharmacy-daily-worksheet-columns",
    "uri" : "urn:ng:hiv-pharmacy-daily-worksheet:2025",
    "name" : "NG HIV Pharmacy Daily Worksheet Column Mapping",
    "comment" : "Maps logical-model elements to the revised November 2025 Pharmacy Daily Worksheet fields W1–W73."
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/NgHivPharmacyDailyWorksheet",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "NgHivPharmacyDailyWorksheet",
      "path" : "NgHivPharmacyDailyWorksheet",
      "short" : "NG HIV Pharmacy Daily Worksheet",
      "definition" : "Logical model for the revised Nigeria HIV Pharmacy Daily Worksheet. One\ninstance represents one pharmacist worksheet for one dispensing date and\ncontains repeatable patient-level dispensing entries corresponding to\nprinted fields W1 through W73."
    },
    {
      "id" : "NgHivPharmacyDailyWorksheet.identifier",
      "path" : "NgHivPharmacyDailyWorksheet.identifier",
      "short" : "Worksheet identifier",
      "definition" : "Identifier assigned to the Pharmacy Daily Worksheet instance.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "NgHivPharmacyDailyWorksheet.worksheetNumber",
      "path" : "NgHivPharmacyDailyWorksheet.worksheetNumber",
      "short" : "Worksheet number",
      "definition" : "Continuous worksheet number. The supporting SOP permits a pharmacist-specific alphabetical suffix in facilities with multiple dispensing points.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-pharmacy-daily-worksheet-columns",
        "map" : "Header: Worksheet No"
      }]
    },
    {
      "id" : "NgHivPharmacyDailyWorksheet.facility",
      "path" : "NgHivPharmacyDailyWorksheet.facility",
      "short" : "Facility reference",
      "definition" : "Reference to the dispensing facility, when available.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-organization"]
      }]
    },
    {
      "id" : "NgHivPharmacyDailyWorksheet.state",
      "path" : "NgHivPharmacyDailyWorksheet.state",
      "short" : "State",
      "definition" : "State where the dispensing facility is located.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-states-vs"
      },
      "mapping" : [{
        "identity" : "ng-hiv-pharmacy-daily-worksheet-columns",
        "map" : "Header: State"
      }]
    },
    {
      "id" : "NgHivPharmacyDailyWorksheet.lga",
      "path" : "NgHivPharmacyDailyWorksheet.lga",
      "short" : "LGA",
      "definition" : "Local Government Area where the dispensing facility is located.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-lgas-vs"
      },
      "mapping" : [{
        "identity" : "ng-hiv-pharmacy-daily-worksheet-columns",
        "map" : "Header: LGA"
      }]
    },
    {
      "id" : "NgHivPharmacyDailyWorksheet.facilityName",
      "path" : "NgHivPharmacyDailyWorksheet.facilityName",
      "short" : "Facility name",
      "definition" : "Official name of the dispensing facility.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-pharmacy-daily-worksheet-columns",
        "map" : "Header: Facility Name"
      }]
    },
    {
      "id" : "NgHivPharmacyDailyWorksheet.dispensingDate",
      "path" : "NgHivPharmacyDailyWorksheet.dispensingDate",
      "short" : "Dispensing date",
      "definition" : "Date on which medicines were dispensed and recorded on this worksheet.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-pharmacy-daily-worksheet-columns",
        "map" : "Header: Date"
      }]
    },
    {
      "id" : "NgHivPharmacyDailyWorksheet.entry",
      "path" : "NgHivPharmacyDailyWorksheet.entry",
      "short" : "Patient dispensing entry",
      "definition" : "One patient-level row in the Pharmacy Daily Worksheet. The printed page provides fifteen rows.",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "NgHivPharmacyDailyWorksheet.entry.subject",
      "path" : "NgHivPharmacyDailyWorksheet.entry.subject",
      "short" : "Patient reference",
      "definition" : "Reference to the corresponding Nigeria Core Patient resource, when available.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-patient"]
      }]
    },
    {
      "id" : "NgHivPharmacyDailyWorksheet.entry.serialNumber",
      "path" : "NgHivPharmacyDailyWorksheet.entry.serialNumber",
      "short" : "W1 Serial number",
      "definition" : "Sequential number assigned to the patient row.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "positiveInt"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-pharmacy-daily-worksheet-columns",
        "map" : "W1"
      }]
    },
    {
      "id" : "NgHivPharmacyDailyWorksheet.entry.hospitalNumber",
      "path" : "NgHivPharmacyDailyWorksheet.entry.hospitalNumber",
      "short" : "W2 Hospital number",
      "definition" : "Facility-specific hospital or unit number.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-pharmacy-daily-worksheet-columns",
        "map" : "W2"
      }]
    },
    {
      "id" : "NgHivPharmacyDailyWorksheet.entry.uniqueId",
      "path" : "NgHivPharmacyDailyWorksheet.entry.uniqueId",
      "short" : "W3 Unique ID",
      "definition" : "HIV program client unique identifier.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-pharmacy-daily-worksheet-columns",
        "map" : "W3"
      }]
    },
    {
      "id" : "NgHivPharmacyDailyWorksheet.entry.patientName",
      "path" : "NgHivPharmacyDailyWorksheet.entry.patientName",
      "short" : "W4 Patient name",
      "definition" : "Patient name recorded surname first.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-pharmacy-daily-worksheet-columns",
        "map" : "W4"
      }]
    },
    {
      "id" : "NgHivPharmacyDailyWorksheet.entry.sex",
      "path" : "NgHivPharmacyDailyWorksheet.entry.sex",
      "short" : "W5–W7 Sex",
      "definition" : "Client sex represented by the printed male and female columns.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-gender-vs"
      },
      "mapping" : [{
        "identity" : "ng-hiv-pharmacy-daily-worksheet-columns",
        "map" : "W5 Male / W6 Female non-pregnant / W7 Female pregnant"
      }]
    },
    {
      "id" : "NgHivPharmacyDailyWorksheet.entry.pregnant",
      "path" : "NgHivPharmacyDailyWorksheet.entry.pregnant",
      "short" : "W7 Pregnancy status",
      "definition" : "True when the female-pregnant column is marked. Female non-pregnant is represented by female sex with pregnant set to false.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-pharmacy-daily-worksheet-columns",
        "map" : "W7; false with female sex corresponds to W6"
      }]
    },
    {
      "id" : "NgHivPharmacyDailyWorksheet.entry.ageYears",
      "path" : "NgHivPharmacyDailyWorksheet.entry.ageYears",
      "short" : "W8 Age",
      "definition" : "Client age in completed years.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-pharmacy-daily-worksheet-columns",
        "map" : "W8"
      }]
    },
    {
      "id" : "NgHivPharmacyDailyWorksheet.entry.dsdModel",
      "path" : "NgHivPharmacyDailyWorksheet.entry.dsdModel",
      "short" : "W9–W10 DSD model",
      "definition" : "Facility-based or community-based differentiated-service-delivery model.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-pharmacy-worksheet-dsd-model-vs"
      },
      "mapping" : [{
        "identity" : "ng-hiv-pharmacy-daily-worksheet-columns",
        "map" : "W9 Facility-based / W10 Community-based"
      }]
    },
    {
      "id" : "NgHivPharmacyDailyWorksheet.entry.newlyStartedOnArt",
      "path" : "NgHivPharmacyDailyWorksheet.entry.newlyStartedOnArt",
      "short" : "W11 Newly started on ART",
      "definition" : "True when ART was initiated at the dispensing visit.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-pharmacy-daily-worksheet-columns",
        "map" : "W11"
      }]
    },
    {
      "id" : "NgHivPharmacyDailyWorksheet.entry.artRefill",
      "path" : "NgHivPharmacyDailyWorksheet.entry.artRefill",
      "short" : "W12 ART refill",
      "definition" : "True for ART refill, including transfer-in and restart.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-pharmacy-daily-worksheet-columns",
        "map" : "W12"
      }]
    },
    {
      "id" : "NgHivPharmacyDailyWorksheet.entry.regimenSubstitution",
      "path" : "NgHivPharmacyDailyWorksheet.entry.regimenSubstitution",
      "short" : "W13 Regimen substitution",
      "definition" : "True when a drug was replaced because of toxicity, side effect or another substitution reason.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-pharmacy-daily-worksheet-columns",
        "map" : "W13"
      }]
    },
    {
      "id" : "NgHivPharmacyDailyWorksheet.entry.regimenSwitch",
      "path" : "NgHivPharmacyDailyWorksheet.entry.regimenSwitch",
      "short" : "W14 Regimen switch",
      "definition" : "True when the client changed between ART regimen lines.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-pharmacy-daily-worksheet-columns",
        "map" : "W14"
      }]
    },
    {
      "id" : "NgHivPharmacyDailyWorksheet.entry.heiNewlyStartedArvProphylaxis",
      "path" : "NgHivPharmacyDailyWorksheet.entry.heiNewlyStartedArvProphylaxis",
      "short" : "W15 HEI newly started on ARV prophylaxis",
      "definition" : "True when an HIV-exposed infant initiated ARV prophylaxis.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-pharmacy-daily-worksheet-columns",
        "map" : "W15"
      }]
    },
    {
      "id" : "NgHivPharmacyDailyWorksheet.entry.heiArvProphylaxisRefill",
      "path" : "NgHivPharmacyDailyWorksheet.entry.heiArvProphylaxisRefill",
      "short" : "W16 HEI ARV prophylaxis refill",
      "definition" : "True when an HIV-exposed infant received a prophylaxis refill.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-pharmacy-daily-worksheet-columns",
        "map" : "W16"
      }]
    },
    {
      "id" : "NgHivPharmacyDailyWorksheet.entry.heiArvProphylaxisRegimen",
      "path" : "NgHivPharmacyDailyWorksheet.entry.heiArvProphylaxisRegimen",
      "short" : "W17 HEI ARV prophylaxis regimen",
      "definition" : "Printed prophylaxis code 1, 2 or 3.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-pharmacy-worksheet-arv-prophylaxis-vs"
      },
      "mapping" : [{
        "identity" : "ng-hiv-pharmacy-daily-worksheet-columns",
        "map" : "W17"
      }]
    },
    {
      "id" : "NgHivPharmacyDailyWorksheet.entry.occupationalPep",
      "path" : "NgHivPharmacyDailyWorksheet.entry.occupationalPep",
      "short" : "W18 Occupational PEP",
      "definition" : "True when ARVs were dispensed for occupational HIV exposure.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-pharmacy-daily-worksheet-columns",
        "map" : "W18"
      }]
    },
    {
      "id" : "NgHivPharmacyDailyWorksheet.entry.nonOccupationalPep",
      "path" : "NgHivPharmacyDailyWorksheet.entry.nonOccupationalPep",
      "short" : "W19 Non-occupational PEP",
      "definition" : "True when ARVs were dispensed for non-occupational HIV exposure.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-pharmacy-daily-worksheet-columns",
        "map" : "W19"
      }]
    },
    {
      "id" : "NgHivPharmacyDailyWorksheet.entry.prepNewlyInitiated",
      "path" : "NgHivPharmacyDailyWorksheet.entry.prepNewlyInitiated",
      "short" : "W20 PrEP newly initiated",
      "definition" : "True when a client was newly initiated on PrEP.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-pharmacy-daily-worksheet-columns",
        "map" : "W20"
      }]
    },
    {
      "id" : "NgHivPharmacyDailyWorksheet.entry.prepRefill",
      "path" : "NgHivPharmacyDailyWorksheet.entry.prepRefill",
      "short" : "W21 PrEP refill",
      "definition" : "True when a client received a PrEP refill.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-pharmacy-daily-worksheet-columns",
        "map" : "W21"
      }]
    },
    {
      "id" : "NgHivPharmacyDailyWorksheet.entry.pharmaceuticalCareProvided",
      "path" : "NgHivPharmacyDailyWorksheet.entry.pharmaceuticalCareProvided",
      "short" : "W22 Pharmaceutical care provided",
      "definition" : "True when pharmaceutical care was provided during the visit.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-pharmacy-daily-worksheet-columns",
        "map" : "W22"
      }]
    },
    {
      "id" : "NgHivPharmacyDailyWorksheet.entry.currentArvRegimen",
      "path" : "NgHivPharmacyDailyWorksheet.entry.currentArvRegimen",
      "short" : "W23 ARV regimen code",
      "definition" : "Current ART regimen code.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-art-register-regimen-vs"
      },
      "mapping" : [{
        "identity" : "ng-hiv-pharmacy-daily-worksheet-columns",
        "map" : "W23"
      }]
    },
    {
      "id" : "NgHivPharmacyDailyWorksheet.entry.currentArvRegimenText",
      "path" : "NgHivPharmacyDailyWorksheet.entry.currentArvRegimenText",
      "short" : "W23 ARV regimen source text",
      "definition" : "Source regimen text when a valid ART register code is unavailable.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-pharmacy-daily-worksheet-columns",
        "map" : "W23 uncoded source text"
      }]
    },
    {
      "id" : "NgHivPharmacyDailyWorksheet.entry.dispensedMedicine",
      "path" : "NgHivPharmacyDailyWorksheet.entry.dispensedMedicine",
      "short" : "W24–W71 Fixed medicine product dispensed",
      "definition" : "A quantity recorded under one of the fixed medicine-product columns.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "NgHivPharmacyDailyWorksheet.entry.dispensedMedicine.product",
      "path" : "NgHivPharmacyDailyWorksheet.entry.dispensedMedicine.product",
      "short" : "Worksheet medicine product",
      "definition" : "The fixed product column under which the quantity was recorded.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-pharmacy-worksheet-medicine-vs"
      },
      "mapping" : [{
        "identity" : "ng-hiv-pharmacy-daily-worksheet-columns",
        "map" : "W24–W71; the Coding.code is the exact printed column identifier"
      }]
    },
    {
      "id" : "NgHivPharmacyDailyWorksheet.entry.dispensedMedicine.category",
      "path" : "NgHivPharmacyDailyWorksheet.entry.dispensedMedicine.category",
      "short" : "Medicine category",
      "definition" : "Adult ART, paediatric ART, CTX prophylaxis, TPT, anti-infective or advanced-HIV-disease treatment.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-pharmacy-worksheet-medicine-category-vs"
      }
    },
    {
      "id" : "NgHivPharmacyDailyWorksheet.entry.dispensedMedicine.quantity",
      "path" : "NgHivPharmacyDailyWorksheet.entry.dispensedMedicine.quantity",
      "short" : "Quantity dispensed",
      "definition" : "Quantity dispensed using the worksheet reporting unit. Adult and paediatric ARVs are reported in packs, bottles or vials; CTX in tablets; TPT in kits. Other sections should retain the locally recorded unit.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-pharmacy-daily-worksheet-columns",
        "map" : "Quantity entered under the selected W24–W71 product column"
      }]
    },
    {
      "id" : "NgHivPharmacyDailyWorksheet.entry.dispensedMedicine.note",
      "path" : "NgHivPharmacyDailyWorksheet.entry.dispensedMedicine.note",
      "short" : "Dispensing note",
      "definition" : "Optional note about package size, unit, formulation or another source detail.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "NgHivPharmacyDailyWorksheet.entry.nutritionalSupplement",
      "path" : "NgHivPharmacyDailyWorksheet.entry.nutritionalSupplement",
      "short" : "W72 Nutritional supplement",
      "definition" : "Type of nutritional supplement provided.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-pharmacy-daily-worksheet-columns",
        "map" : "W72"
      }]
    },
    {
      "id" : "NgHivPharmacyDailyWorksheet.entry.otherMedicine",
      "path" : "NgHivPharmacyDailyWorksheet.entry.otherMedicine",
      "short" : "W73 Other OI or non-HIV medicine",
      "definition" : "Type of medicine provided for another opportunistic infection or non-HIV-related condition.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-pharmacy-daily-worksheet-columns",
        "map" : "W73"
      }]
    },
    {
      "id" : "NgHivPharmacyDailyWorksheet.summary",
      "path" : "NgHivPharmacyDailyWorksheet.summary",
      "short" : "Worksheet summary row",
      "definition" : "Total for the page, cumulative total for the day or cumulative total for the month.",
      "min" : 0,
      "max" : "3",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "NgHivPharmacyDailyWorksheet.summary.scope",
      "path" : "NgHivPharmacyDailyWorksheet.summary.scope",
      "short" : "Summary scope",
      "definition" : "Page, day or month.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-pharmacy-worksheet-summary-scope-vs"
      },
      "mapping" : [{
        "identity" : "ng-hiv-pharmacy-daily-worksheet-columns",
        "map" : "Total for this page / Cumulative for the day / Cumulative for the month"
      }]
    },
    {
      "id" : "NgHivPharmacyDailyWorksheet.summary.columnTotal",
      "path" : "NgHivPharmacyDailyWorksheet.summary.columnTotal",
      "short" : "Column total",
      "definition" : "A total for one printed worksheet column.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "NgHivPharmacyDailyWorksheet.summary.columnTotal.columnCode",
      "path" : "NgHivPharmacyDailyWorksheet.summary.columnTotal.columnCode",
      "short" : "Worksheet column code",
      "definition" : "Printed column identifier W1 through W73.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-pharmacy-daily-worksheet-columns",
        "map" : "Printed W1–W73 column being totalled"
      }]
    },
    {
      "id" : "NgHivPharmacyDailyWorksheet.summary.columnTotal.value",
      "path" : "NgHivPharmacyDailyWorksheet.summary.columnTotal.value",
      "short" : "Column total value",
      "definition" : "Count or quantity total recorded for the selected worksheet column.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-pharmacy-daily-worksheet-columns",
        "map" : "Value in the corresponding bottom summary row"
      }]
    },
    {
      "id" : "NgHivPharmacyDailyWorksheet.summary.columnTotal.unit",
      "path" : "NgHivPharmacyDailyWorksheet.summary.columnTotal.unit",
      "short" : "Column total unit",
      "definition" : "Unit associated with the total when applicable.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "NgHivPharmacyDailyWorksheet.completedBy",
      "path" : "NgHivPharmacyDailyWorksheet.completedBy",
      "short" : "Name of pharmacist",
      "definition" : "Name of the pharmacist or pharmacy technician who completed the worksheet.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-pharmacy-daily-worksheet-columns",
        "map" : "Bottom row: Name of Pharmacist"
      }]
    },
    {
      "id" : "NgHivPharmacyDailyWorksheet.completedSignature",
      "path" : "NgHivPharmacyDailyWorksheet.completedSignature",
      "short" : "Signature or signature reference",
      "definition" : "Signature or electronic signature reference.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-pharmacy-daily-worksheet-columns",
        "map" : "Bottom row: Signature"
      }]
    },
    {
      "id" : "NgHivPharmacyDailyWorksheet.completedDate",
      "path" : "NgHivPharmacyDailyWorksheet.completedDate",
      "short" : "Completion date",
      "definition" : "Date the worksheet was completed.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-pharmacy-daily-worksheet-columns",
        "map" : "Bottom row: Date"
      }]
    }]
  }
}

```
