# Truth HMO - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Truth HMO**

## Example Organization: Truth HMO

Profile: [NG Insurer Organization](StructureDefinition-ng-insurer-organization.md)

**identifier**: `https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-eligibility-request-id-cs`/HMO-TRUTH-2025

**active**: true

**type**: Insurance Company

**name**: Truth Health Maintenance Organization

**alias**: Truth HMO

**telecom**: ph: 0700-TRUTH-HMO, [https://truth-hmo.ng](https://truth-hmo.ng)

**address**: HMO Plaza Port Harcourt RI 



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "Organization-Truth-HMO",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-insurer-organization"]
  },
  "identifier" : [{
    "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-eligibility-request-id-cs",
    "value" : "HMO-TRUTH-2025"
  }],
  "active" : true,
  "type" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/organization-type",
      "code" : "ins",
      "display" : "Insurance Company"
    }]
  }],
  "name" : "Truth Health Maintenance Organization",
  "alias" : ["Truth HMO"],
  "telecom" : [{
    "system" : "phone",
    "value" : "0700-TRUTH-HMO"
  },
  {
    "system" : "url",
    "value" : "https://truth-hmo.ng"
  }],
  "address" : [{
    "line" : ["HMO Plaza"],
    "city" : "Port Harcourt",
    "district" : "ri-emohua",
    "state" : "RI"
  }]
}

```
