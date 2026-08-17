# NG Specimen - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG Specimen**

## Resource Profile: NG Specimen 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-specimen | *Version*:0.0.0 |
| Active as of 2026-08-17 | *Computable Name*:NgSpecimen |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.42.69 | |

 
This profile constrains the Specimen resource to represent the characteristics of a biological specimens in the context of laboratory results integrated to a patient summary. 

**Usages:**

* Use this Profile: [Bundle NG (IPS)](StructureDefinition-ng-ips-bundle.md)
* Refer to this Profile: [NG Laboratory or Pathology Result Observation](StructureDefinition-ng-observation-results-laboratory-pathology.md)
* Examples for this Profile: [Specimen/NgSpecimen-001](Specimen-NgSpecimen-001.md)
* CapabilityStatements using this Profile: [Authoritative Nigeria Core Server Requirements](CapabilityStatement-NgCoreServerRequirements.md), [Nigeria Core General Hospital Requestor Capability](CapabilityStatement-NgGeneralHospitalRequestorCapability.md), [Nigeria Core General Hospital Responder Capability](CapabilityStatement-NgGeneralHospitalResponderCapability.md), [Nigeria Core Tertiary Referral Requestor Capability](CapabilityStatement-NgTertiaryRequestorCapability.md) and [Nigeria Core Tertiary Referral Responder Capability](CapabilityStatement-NgTertiaryResponderCapability.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ng.gov.digitalhealth.fhir-ig|current/StructureDefinition/StructureDefinition-ng-specimen.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ng-specimen.csv), [Excel](StructureDefinition-ng-specimen.xlsx), [Schematron](StructureDefinition-ng-specimen.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ng-specimen",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-specimen",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.42.69"
  }],
  "version" : "0.0.0",
  "name" : "NgSpecimen",
  "title" : "NG Specimen",
  "status" : "active",
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
  "description" : "This profile constrains the Specimen resource to represent the characteristics of a biological specimens in the context of laboratory results integrated to a patient summary.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
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
  "type" : "Specimen",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Specimen",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Specimen.type",
      "path" : "Specimen.type",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/CodeableConcept-ips"]
      }],
      "mustSupport" : true,
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-results-specimen-type-vs"
      }
    },
    {
      "id" : "Specimen.subject",
      "path" : "Specimen.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Specimen.subject.reference",
      "path" : "Specimen.subject.reference",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Specimen.collection.method",
      "path" : "Specimen.collection.method",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-results-specimen-collection-method-vs"
      }
    },
    {
      "id" : "Specimen.collection.bodySite",
      "path" : "Specimen.collection.bodySite",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-body-site-vs"
      }
    }]
  }
}

```
