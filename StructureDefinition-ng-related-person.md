# NG RelatedPerson - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG RelatedPerson**

## Resource Profile: NG RelatedPerson 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-related-person | *Version*:0.0.0 |
| Draft as of 2026-08-18 | *Computable Name*:NgRelatedPerson |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.42.67 | |

 
Sibling or parent of the sick person. 

**Usages:**

* Refer to this Profile: [NG Allergy Intolerance](StructureDefinition-ng-allergy-intolerance.md), [NG Condition](StructureDefinition-ng-condition.md), [NG Document Reference](StructureDefinition-ng-documents.md), [NG Medication Statement](StructureDefinition-ng-medication-statement.md)... Show 2 more, [NG Patient](StructureDefinition-ng-patient.md) and [NG Procedure](StructureDefinition-ng-procedure.md)
* Examples for this Profile: [RelatedPerson/NgRelatedPerson-001](RelatedPerson-NgRelatedPerson-001.md), [RelatedPerson/NgRelatedPerson-002](RelatedPerson-NgRelatedPerson-002.md), [RelatedPerson/NgRelatedPerson-003-Pseudo](RelatedPerson-NgRelatedPerson-003-Pseudo.md) and [RelatedPerson/NgRelatedPerson-003](RelatedPerson-NgRelatedPerson-003.md)
* CapabilityStatements using this Profile: [Authoritative Nigeria Core Server Requirements](CapabilityStatement-NgCoreServerRequirements.md), [Nigeria Core General Hospital Registry Service Capability](CapabilityStatement-NgGeneralHospitalRegistryCapability.md), [Nigeria Core General Hospital Requestor Capability](CapabilityStatement-NgGeneralHospitalRequestorCapability.md), [Nigeria Core General Hospital Responder Capability](CapabilityStatement-NgGeneralHospitalResponderCapability.md)... Show 3 more, [Nigeria Core Tertiary Referral Registry Service Capability](CapabilityStatement-NgTertiaryRegistryCapability.md), [Nigeria Core Tertiary Referral Requestor Capability](CapabilityStatement-NgTertiaryRequestorCapability.md) and [Nigeria Core Tertiary Referral Responder Capability](CapabilityStatement-NgTertiaryResponderCapability.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ng.gov.digitalhealth.fhir-ig|current/StructureDefinition/StructureDefinition-ng-related-person.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ng-related-person.csv), [Excel](StructureDefinition-ng-related-person.xlsx), [Schematron](StructureDefinition-ng-related-person.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ng-related-person",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-related-person",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.42.67"
  }],
  "version" : "0.0.0",
  "name" : "NgRelatedPerson",
  "title" : "NG RelatedPerson",
  "status" : "draft",
  "date" : "2026-08-18T15:57:17+01:00",
  "publisher" : "NDHI",
  "contact" : [{
    "name" : "NDHI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://digitalhealth.gov.ng"
    }]
  }],
  "description" : "Sibling or parent of the sick person.",
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
  "type" : "RelatedPerson",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/RelatedPerson",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "RelatedPerson",
      "path" : "RelatedPerson"
    },
    {
      "id" : "RelatedPerson.implicitRules",
      "path" : "RelatedPerson.implicitRules",
      "max" : "0"
    },
    {
      "id" : "RelatedPerson.modifierExtension",
      "path" : "RelatedPerson.modifierExtension",
      "max" : "0"
    },
    {
      "id" : "RelatedPerson.active",
      "path" : "RelatedPerson.active",
      "max" : "0"
    },
    {
      "id" : "RelatedPerson.patient",
      "path" : "RelatedPerson.patient",
      "short" : "The client this person is related to",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "RelatedPerson.relationship.text",
      "path" : "RelatedPerson.relationship.text",
      "short" : "The relationship of the sibling with the Client e.g. brother| sister",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/relatedperson-relationshiptype"
      }
    },
    {
      "id" : "RelatedPerson.name",
      "path" : "RelatedPerson.name",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "RelatedPerson.name.use",
      "path" : "RelatedPerson.name.use",
      "max" : "0"
    },
    {
      "id" : "RelatedPerson.name.family",
      "path" : "RelatedPerson.name.family",
      "short" : "The surname of Client's related person"
    },
    {
      "id" : "RelatedPerson.name.given",
      "path" : "RelatedPerson.name.given",
      "short" : "The first name and other names of Client's related person",
      "min" : 1
    },
    {
      "id" : "RelatedPerson.gender",
      "path" : "RelatedPerson.gender",
      "short" : "The sex of the Immunization client's related person",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-gender-vs"
      }
    },
    {
      "id" : "RelatedPerson.birthDate",
      "path" : "RelatedPerson.birthDate",
      "mustSupport" : true
    }]
  }
}

```
