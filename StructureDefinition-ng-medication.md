# NG Medication - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG Medication**

## Resource Profile: NG Medication 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-medication | *Version*:0.0.0 |
| Draft as of 2026-08-17 | *Computable Name*:NgMedication |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.42.46 | |

 
A Medication profile with some core elements for demonstration purposes. 

**Usages:**

* Use this Profile: [Bundle NG (IPS)](StructureDefinition-ng-ips-bundle.md)
* Refer to this Profile: [NG MedicationDispense](StructureDefinition-ng-medication-dispense.md), [NG MedicationRequest](StructureDefinition-ng-medication-request.md), [Nigeria Medication Statement](StructureDefinition-ng-medication-statement.md) and [NG Procedure](StructureDefinition-ng-procedure.md)
* Examples for this Profile: [Medication/NgMedication-001](Medication-NgMedication-001.md), [Medication/NgMedication-002](Medication-NgMedication-002.md) and [Medication/NgMedication-003](Medication-NgMedication-003.md)
* CapabilityStatements using this Profile: [Authoritative Nigeria Core Server Requirements](CapabilityStatement-NgCoreServerRequirements.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ng.gov.digitalhealth.fhir-ig|current/StructureDefinition/StructureDefinition-ng-medication.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ng-medication.csv), [Excel](StructureDefinition-ng-medication.xlsx), [Schematron](StructureDefinition-ng-medication.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ng-medication",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-medication",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.42.46"
  }],
  "version" : "0.0.0",
  "name" : "NgMedication",
  "title" : "NG Medication",
  "status" : "draft",
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
  "description" : "A Medication profile with some core elements for demonstration purposes.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "script10.6",
    "uri" : "http://ncpdp.org/SCRIPT10_6",
    "name" : "Mapping to NCPDP SCRIPT 10.6"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Medication",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Medication",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Medication.identifier",
      "path" : "Medication.identifier",
      "mustSupport" : true
    },
    {
      "id" : "Medication.code",
      "path" : "Medication.code",
      "mustSupport" : true
    },
    {
      "id" : "Medication.form",
      "path" : "Medication.form",
      "mustSupport" : true
    },
    {
      "id" : "Medication.ingredient",
      "path" : "Medication.ingredient",
      "mustSupport" : true
    },
    {
      "id" : "Medication.batch",
      "path" : "Medication.batch",
      "mustSupport" : true
    }]
  }
}

```
