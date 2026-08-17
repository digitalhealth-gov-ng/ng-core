# NG Owner of Facility - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG Owner of Facility**

## Extension: NG Owner of Facility 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-organization-owner | *Version*:0.0.0 |
| Draft as of 2026-08-17 | *Computable Name*:NgOrganizationOwner |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.42.57 | |

An extension to define the owner of the health institution

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [NG Organization](StructureDefinition-ng-organization.md)
* Examples for this Extension: [Asokoro District Hospital](Organization-NgOrganization-001.md), [Kano Central Hospital Pharmacy](Organization-NgOrganization-002.md), [Gwagwalada Model PHC](Organization-NgOrganization-003.md) and [Port Harcourt Emergency Hospital](Organization-Organization-PortHarcourt-Hospital.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ng.gov.digitalhealth.fhir-ig|current/StructureDefinition/StructureDefinition-ng-organization-owner.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ng-organization-owner.csv), [Excel](StructureDefinition-ng-organization-owner.xlsx), [Schematron](StructureDefinition-ng-organization-owner.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ng-organization-owner",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-organization-owner",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.42.57"
  }],
  "version" : "0.0.0",
  "name" : "NgOrganizationOwner",
  "title" : "NG Owner of Facility",
  "status" : "draft",
  "date" : "2026-08-17T16:10:29+01:00",
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
  "description" : "An extension to define the owner of the health institution",
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
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Organization"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "NG Owner of Facility",
      "definition" : "An extension to define the owner of the health institution"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-organization-owner"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Code system for the owner type of a health facility (eg. a vaccination center)",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-organization-owner-vs"
      }
    }]
  }
}

```
