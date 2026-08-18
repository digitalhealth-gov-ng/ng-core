# NG TB Specimen Shipment Register - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG TB Specimen Shipment Register**

## Logical Model: NG TB Specimen Shipment Register 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/NgTBSpecimenShipmentRegister | *Version*:0.0.0 |
| Draft as of 2026-08-18 | *Computable Name*:NgTBSpecimenShipmentRegister |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.42.80 | |

 
Logical model for the Nigeria National Tuberculosis and Leprosy Control Programme NTBLCP/TB 03 Specimen Shipment Form, Version 2, 2019. One model instance represents one specimen shipment from a facility or treatment unit to a laboratory and contains repeatable specimen entries together with shipping, receipt, transport-condition and acknowledgement information. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ng.gov.digitalhealth.fhir-ig|current/StructureDefinition/StructureDefinition-NgTBSpecimenShipmentRegister.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-NgTBSpecimenShipmentRegister.csv), [Excel](StructureDefinition-NgTBSpecimenShipmentRegister.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "NgTBSpecimenShipmentRegister",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/NgTBSpecimenShipmentRegister",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.42.80"
  }],
  "version" : "0.0.0",
  "name" : "NgTBSpecimenShipmentRegister",
  "title" : "NG TB Specimen Shipment Register",
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
  "description" : "Logical model for the Nigeria National Tuberculosis and Leprosy Control\nProgramme NTBLCP/TB 03 Specimen Shipment Form, Version 2, 2019. One model\ninstance represents one specimen shipment from a facility or treatment unit\nto a laboratory and contains repeatable specimen entries together with\nshipping, receipt, transport-condition and acknowledgement information.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "ng-tb-specimen-shipment-register-columns",
    "uri" : "urn:ng:ntblcp:tb03:specimen-shipment-form",
    "name" : "NG TB Specimen Shipment Register Column Mapping",
    "comment" : "Maps NgTBSpecimenShipmentRegister logical-model elements to the\nNTBLCP/TB 03 Specimen Shipment Form, Version 2, 2019."
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/NgTBSpecimenShipmentRegister",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "NgTBSpecimenShipmentRegister",
      "path" : "NgTBSpecimenShipmentRegister",
      "short" : "NG TB Specimen Shipment Register",
      "definition" : "Logical model for the Nigeria National Tuberculosis and Leprosy Control\nProgramme NTBLCP/TB 03 Specimen Shipment Form, Version 2, 2019. One model\ninstance represents one specimen shipment from a facility or treatment unit\nto a laboratory and contains repeatable specimen entries together with\nshipping, receipt, transport-condition and acknowledgement information."
    },
    {
      "id" : "NgTBSpecimenShipmentRegister.identifier",
      "path" : "NgTBSpecimenShipmentRegister.identifier",
      "short" : "Shipment identifier",
      "definition" : "Identifier assigned to the specimen shipment or its electronic equivalent.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "NgTBSpecimenShipmentRegister.shipmentDate",
      "path" : "NgTBSpecimenShipmentRegister.shipmentDate",
      "short" : "Date of shipment to laboratory",
      "definition" : "Date the specimen consignment was shipped to the receiving laboratory.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "ng-tb-specimen-shipment-register-columns",
        "map" : "Date of shipment to Laboratory"
      }]
    },
    {
      "id" : "NgTBSpecimenShipmentRegister.originatingFacility",
      "path" : "NgTBSpecimenShipmentRegister.originatingFacility",
      "short" : "Originating facility reference",
      "definition" : "Reference to the facility or treatment unit sending the specimens, when available.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-organization"]
      }]
    },
    {
      "id" : "NgTBSpecimenShipmentRegister.originatingFacilityName",
      "path" : "NgTBSpecimenShipmentRegister.originatingFacilityName",
      "short" : "Name of facility or treatment unit",
      "definition" : "Name of the facility or treatment unit from which the specimens are shipped.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-tb-specimen-shipment-register-columns",
        "map" : "Name of Facility/Treatment unit"
      }]
    },
    {
      "id" : "NgTBSpecimenShipmentRegister.state",
      "path" : "NgTBSpecimenShipmentRegister.state",
      "short" : "State",
      "definition" : "State in which the originating facility or treatment unit is located.",
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
        "identity" : "ng-tb-specimen-shipment-register-columns",
        "map" : "State"
      }]
    },
    {
      "id" : "NgTBSpecimenShipmentRegister.lga",
      "path" : "NgTBSpecimenShipmentRegister.lga",
      "short" : "LGA",
      "definition" : "Local Government Area in which the originating facility or treatment unit is located.",
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
        "identity" : "ng-tb-specimen-shipment-register-columns",
        "map" : "LGA"
      }]
    },
    {
      "id" : "NgTBSpecimenShipmentRegister.destinationLaboratory",
      "path" : "NgTBSpecimenShipmentRegister.destinationLaboratory",
      "short" : "Destination laboratory reference",
      "definition" : "Reference to the laboratory processing the specimens, when available.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-organization"]
      }]
    },
    {
      "id" : "NgTBSpecimenShipmentRegister.destinationLaboratoryName",
      "path" : "NgTBSpecimenShipmentRegister.destinationLaboratoryName",
      "short" : "Laboratory processing the specimen",
      "definition" : "Name of the laboratory to which the specimen shipment is sent.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-tb-specimen-shipment-register-columns",
        "map" : "Laboratory processing the specimen"
      }]
    },
    {
      "id" : "NgTBSpecimenShipmentRegister.entry",
      "path" : "NgTBSpecimenShipmentRegister.entry",
      "short" : "Specimen shipment entry",
      "definition" : "One patient/specimen included in the shipment.",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "NgTBSpecimenShipmentRegister.entry.serialNumber",
      "path" : "NgTBSpecimenShipmentRegister.entry.serialNumber",
      "short" : "Serial number",
      "definition" : "Sequential number assigned to the specimen within the shipment.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "positiveInt"
      }],
      "mapping" : [{
        "identity" : "ng-tb-specimen-shipment-register-columns",
        "map" : "S/N"
      }]
    },
    {
      "id" : "NgTBSpecimenShipmentRegister.entry.subject",
      "path" : "NgTBSpecimenShipmentRegister.entry.subject",
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
      "id" : "NgTBSpecimenShipmentRegister.entry.patientName",
      "path" : "NgTBSpecimenShipmentRegister.entry.patientName",
      "short" : "Patient name",
      "definition" : "Name of the patient from whom the specimen was collected.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-tb-specimen-shipment-register-columns",
        "map" : "Patient Name"
      }]
    },
    {
      "id" : "NgTBSpecimenShipmentRegister.entry.specimenReference",
      "path" : "NgTBSpecimenShipmentRegister.entry.specimenReference",
      "short" : "Specimen reference",
      "definition" : "Reference to the corresponding FHIR Specimen resource, when available.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Specimen"]
      }]
    },
    {
      "id" : "NgTBSpecimenShipmentRegister.entry.specimenIdentificationNumber",
      "path" : "NgTBSpecimenShipmentRegister.entry.specimenIdentificationNumber",
      "short" : "Specimen identification number",
      "definition" : "Identifier assigned to the specimen.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-tb-specimen-shipment-register-columns",
        "map" : "Specimen Id Number"
      }]
    },
    {
      "id" : "NgTBSpecimenShipmentRegister.entry.specimenType",
      "path" : "NgTBSpecimenShipmentRegister.entry.specimenType",
      "short" : "Type of specimen",
      "definition" : "Type of clinical specimen being shipped.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-tb-specimen-shipment-register-columns",
        "map" : "Type of Specimen"
      }]
    },
    {
      "id" : "NgTBSpecimenShipmentRegister.entry.collectionDate",
      "path" : "NgTBSpecimenShipmentRegister.entry.collectionDate",
      "short" : "Date of collection",
      "definition" : "Date the specimen was collected from the patient.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "ng-tb-specimen-shipment-register-columns",
        "map" : "Date of Collection"
      }]
    },
    {
      "id" : "NgTBSpecimenShipmentRegister.entry.remarks",
      "path" : "NgTBSpecimenShipmentRegister.entry.remarks",
      "short" : "Specimen remarks",
      "definition" : "Remarks associated with the individual specimen shipment entry.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-tb-specimen-shipment-register-columns",
        "map" : "Remarks"
      }]
    },
    {
      "id" : "NgTBSpecimenShipmentRegister.shippingOfficer",
      "path" : "NgTBSpecimenShipmentRegister.shippingOfficer",
      "short" : "Shipping officer reference",
      "definition" : "Reference to the person responsible for transporting the specimen shipment, when available.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-practitioner-role"]
      }]
    },
    {
      "id" : "NgTBSpecimenShipmentRegister.shippingOfficerName",
      "path" : "NgTBSpecimenShipmentRegister.shippingOfficerName",
      "short" : "Name of shipping officer",
      "definition" : "Name of the officer transporting the specimen shipment.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-tb-specimen-shipment-register-columns",
        "map" : "Name of shipping officer"
      }]
    },
    {
      "id" : "NgTBSpecimenShipmentRegister.shippingOfficerTelephone",
      "path" : "NgTBSpecimenShipmentRegister.shippingOfficerTelephone",
      "short" : "Shipping officer telephone number",
      "definition" : "Telephone number of the officer transporting the specimen shipment.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-tb-specimen-shipment-register-columns",
        "map" : "Telephone Number of shipping officer"
      }]
    },
    {
      "id" : "NgTBSpecimenShipmentRegister.shippingOfficerSignature",
      "path" : "NgTBSpecimenShipmentRegister.shippingOfficerSignature",
      "short" : "Shipping officer signature",
      "definition" : "Signature or electronic signature reference for the shipping officer.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-tb-specimen-shipment-register-columns",
        "map" : "Shipping officer Signature"
      }]
    },
    {
      "id" : "NgTBSpecimenShipmentRegister.receipt",
      "path" : "NgTBSpecimenShipmentRegister.receipt",
      "short" : "Laboratory receipt",
      "definition" : "Acknowledgement and condition of the specimen shipment when received by the laboratory.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "NgTBSpecimenShipmentRegister.receipt.arrivalDate",
      "path" : "NgTBSpecimenShipmentRegister.receipt.arrivalDate",
      "short" : "Date specimen arrived at laboratory",
      "definition" : "Date the specimen shipment arrived at the receiving laboratory.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "ng-tb-specimen-shipment-register-columns",
        "map" : "Date Specimen arrived at the Laboratory"
      }]
    },
    {
      "id" : "NgTBSpecimenShipmentRegister.receipt.receivingPersonnel",
      "path" : "NgTBSpecimenShipmentRegister.receipt.receivingPersonnel",
      "short" : "Receiving laboratory personnel reference",
      "definition" : "Reference to the laboratory personnel who received the shipment, when available.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-practitioner-role"]
      }]
    },
    {
      "id" : "NgTBSpecimenShipmentRegister.receipt.receivingPersonnelName",
      "path" : "NgTBSpecimenShipmentRegister.receipt.receivingPersonnelName",
      "short" : "Name of laboratory personnel receiving specimen",
      "definition" : "Name of the laboratory personnel who received the specimen shipment.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-tb-specimen-shipment-register-columns",
        "map" : "Name of laboratory personnel who received specimen"
      }]
    },
    {
      "id" : "NgTBSpecimenShipmentRegister.receipt.receivingPersonnelTelephone",
      "path" : "NgTBSpecimenShipmentRegister.receipt.receivingPersonnelTelephone",
      "short" : "Receiving personnel telephone number",
      "definition" : "Telephone number of the laboratory personnel receiving the specimen shipment.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-tb-specimen-shipment-register-columns",
        "map" : "Receiving laboratory personnel Telephone Number"
      }]
    },
    {
      "id" : "NgTBSpecimenShipmentRegister.receipt.receivingPersonnelSignature",
      "path" : "NgTBSpecimenShipmentRegister.receipt.receivingPersonnelSignature",
      "short" : "Receiving personnel signature",
      "definition" : "Signature or electronic signature reference of the laboratory personnel receiving the shipment.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-tb-specimen-shipment-register-columns",
        "map" : "Receiving laboratory personnel Signature"
      }]
    },
    {
      "id" : "NgTBSpecimenShipmentRegister.receipt.specimenTemperature",
      "path" : "NgTBSpecimenShipmentRegister.receipt.specimenTemperature",
      "short" : "Temperature of specimens on arrival",
      "definition" : "Temperature of the specimen shipment at the time it was received by the laboratory.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }],
      "mapping" : [{
        "identity" : "ng-tb-specimen-shipment-register-columns",
        "map" : "Temperature of specimens on arrival"
      }]
    },
    {
      "id" : "NgTBSpecimenShipmentRegister.receipt.remarks",
      "path" : "NgTBSpecimenShipmentRegister.receipt.remarks",
      "short" : "Laboratory receipt remarks",
      "definition" : "Remarks recorded by the laboratory personnel who received the specimen shipment.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-tb-specimen-shipment-register-columns",
        "map" : "Remarks by laboratory personnel who received the specimen"
      }]
    }]
  }
}

```
