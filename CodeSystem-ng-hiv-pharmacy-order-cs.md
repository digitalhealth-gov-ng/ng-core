# NG HIV Pharmacy Order Form Codes - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG HIV Pharmacy Order Form Codes**

## CodeSystem: NG HIV Pharmacy Order Form Codes 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-pharmacy-order-cs | *Version*:0.0.0 |
| Active as of 2026-07-28 | *Computable Name*:NgHivPharmacyOrderCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.60 | |

 
Local coded medicine products transcribed from the Nigeria Combined Pharmacy Order Form revised November 2025. The codes distinguish products by program category, ingredient combination and preprinted strength. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NG HIV Adult ART Medications](ValueSet-ng-hiv-adult-art-medication-vs.md)
* [NG HIV OI Prophylaxis and Treatment Medications](ValueSet-ng-hiv-oi-prophylaxis-treatment-medication-vs.md)
* [NG HIV Paediatric ART Medications](ValueSet-ng-hiv-paediatric-art-medication-vs.md)
* [NG HIV PrEP Medications](ValueSet-ng-hiv-prep-medication-vs.md)
* [NG HIV TB Preventive Therapy Medications](ValueSet-ng-hiv-tb-preventive-therapy-medication-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-hiv-pharmacy-order-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-pharmacy-order-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.60"
  }],
  "version" : "0.0.0",
  "name" : "NgHivPharmacyOrderCS",
  "title" : "NG HIV Pharmacy Order Form Codes",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-28",
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
  "description" : "Local coded medicine products transcribed from the Nigeria Combined Pharmacy\nOrder Form revised November 2025. The codes distinguish products by program\ncategory, ingredient combination and preprinted strength.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 41,
  "concept" : [{
    "code" : "adult-tdf-3tc-dtg-300-300-50",
    "display" : "Tenofovir/Lamivudine/Dolutegravir 300/300/50 mg",
    "definition" : "Adult ART formulation. The source form preprints once-daily frequency."
  },
  {
    "code" : "adult-tdf-3tc-efv-300-300-400",
    "display" : "Tenofovir/Lamivudine/Efavirenz 300/300/400 mg",
    "definition" : "Adult ART formulation. The source form preprints once-daily frequency."
  },
  {
    "code" : "adult-taf-ftc-dtg-25-200-50",
    "display" : "Tenofovir alafenamide/Emtricitabine/Dolutegravir 25/200/50 mg",
    "definition" : "Adult ART formulation. The source form preprints once-daily frequency."
  },
  {
    "code" : "adult-taf-3tc-dtg-25-300-50",
    "display" : "Tenofovir alafenamide/Lamivudine/Dolutegravir 25/300/50 mg",
    "definition" : "Adult ART formulation. The source form preprints once-daily frequency."
  },
  {
    "code" : "adult-abc-3tc-600-300",
    "display" : "Abacavir/Lamivudine 600/300 mg",
    "definition" : "Adult ART formulation. The source form preprints once-daily frequency."
  },
  {
    "code" : "adult-azt-3tc-300-150",
    "display" : "Zidovudine/Lamivudine 300/150 mg",
    "definition" : "Adult ART formulation. The source form preprints twice-daily frequency."
  },
  {
    "code" : "adult-tdf-3tc-300-300",
    "display" : "Tenofovir/Lamivudine 300/300 mg",
    "definition" : "Adult ART formulation. The source form preprints once-daily frequency."
  },
  {
    "code" : "adult-azt-300",
    "display" : "Zidovudine 300 mg",
    "definition" : "Adult ART formulation. The source form preprints twice-daily frequency."
  },
  {
    "code" : "adult-atv-r-300-100",
    "display" : "Atazanavir/Ritonavir 300/100 mg",
    "definition" : "Adult ART formulation. The source form preprints once-daily frequency."
  },
  {
    "code" : "adult-3tc-150",
    "display" : "Lamivudine 150 mg",
    "definition" : "Adult ART formulation. The source form preprints once-daily frequency."
  },
  {
    "code" : "adult-drv-600",
    "display" : "Darunavir 600 mg",
    "definition" : "Adult ART formulation. The source form preprints twice-daily frequency."
  },
  {
    "code" : "adult-rtv-100",
    "display" : "Ritonavir 100 mg",
    "definition" : "Adult ART formulation. The source form preprints twice-daily frequency."
  },
  {
    "code" : "adult-drv-r-400-50",
    "display" : "Darunavir/Ritonavir 400/50 mg",
    "definition" : "Adult ART formulation. The source form preprints twice-daily frequency."
  },
  {
    "code" : "adult-dtg-50",
    "display" : "Dolutegravir 50 mg",
    "definition" : "Adult ART formulation. The source form permits once- or twice-daily frequency."
  },
  {
    "code" : "paediatric-abc-3tc-120-60",
    "display" : "Abacavir/Lamivudine 120/60 mg",
    "definition" : "Paediatric ART formulation. The source form permits once- or twice-daily frequency."
  },
  {
    "code" : "paediatric-azt-3tc-60-30",
    "display" : "Zidovudine/Lamivudine 60/30 mg",
    "definition" : "Paediatric ART formulation. The source form preprints twice-daily frequency."
  },
  {
    "code" : "paediatric-nvp-50-per-5ml",
    "display" : "Nevirapine 50 mg/5 mL",
    "definition" : "Paediatric ART formulation. The source form preprints twice-daily frequency."
  },
  {
    "code" : "paediatric-abc-60",
    "display" : "Abacavir 60 mg",
    "definition" : "Paediatric ART formulation. The source form permits once- or twice-daily frequency."
  },
  {
    "code" : "paediatric-lpv-r-100-25",
    "display" : "Lopinavir/Ritonavir 100/25 mg",
    "definition" : "Paediatric ART formulation. The source form preprints twice-daily frequency."
  },
  {
    "code" : "paediatric-ral-25",
    "display" : "Raltegravir 25 mg",
    "definition" : "Paediatric ART formulation. The source form preprints twice-daily frequency."
  },
  {
    "code" : "paediatric-azt-10-per-ml",
    "display" : "Zidovudine 10 mg/mL",
    "definition" : "Paediatric ART formulation. The source form preprints twice-daily frequency."
  },
  {
    "code" : "paediatric-dtg-10",
    "display" : "Dolutegravir 10 mg",
    "definition" : "Paediatric ART formulation. The source form preprints once-daily frequency."
  },
  {
    "code" : "paediatric-dtg-5",
    "display" : "Dolutegravir 5 mg",
    "definition" : "Paediatric ART formulation. The source form preprints once-daily frequency."
  },
  {
    "code" : "paediatric-drv-150",
    "display" : "Darunavir 150 mg",
    "definition" : "Paediatric ART formulation. The source form preprints once-daily frequency."
  },
  {
    "code" : "paediatric-drv-75",
    "display" : "Darunavir 75 mg",
    "definition" : "Paediatric ART formulation. The source form preprints once-daily frequency."
  },
  {
    "code" : "paediatric-rtv-25",
    "display" : "Ritonavir 25 mg",
    "definition" : "Paediatric ART formulation. The source form preprints once-daily frequency."
  },
  {
    "code" : "paediatric-tdf-3tc-dtg-300-300-50",
    "display" : "Tenofovir/Lamivudine/Dolutegravir 300/300/50 mg",
    "definition" : "ART formulation listed in the paediatric section of the source form; dosing should follow the applicable dosing wheel or chart."
  },
  {
    "code" : "oi-cotrimoxazole-120",
    "display" : "Co-trimoxazole 120 mg",
    "definition" : "Drug for opportunistic-infection prophylaxis or treatment. The source form preprints once-daily frequency."
  },
  {
    "code" : "oi-cotrimoxazole-960",
    "display" : "Co-trimoxazole 960 mg",
    "definition" : "Drug for opportunistic-infection prophylaxis or treatment. The source form preprints once-daily frequency."
  },
  {
    "code" : "oi-fluconazole",
    "display" : "Fluconazole",
    "definition" : "Drug for opportunistic-infection prophylaxis or treatment; strength is entered separately."
  },
  {
    "code" : "oi-flucytosine-500",
    "display" : "Flucytosine 500 mg",
    "definition" : "The source form notes 100 mg/kg in four divided doses and preprints four-times-daily frequency."
  },
  {
    "code" : "oi-cotrimoxazole-inh-pyridoxine-960-300-25",
    "display" : "Co-trimoxazole/Isoniazid/Pyridoxine 960/300/25 mg",
    "definition" : "Fixed-dose combination listed under drugs for opportunistic-infection prophylaxis or treatment."
  },
  {
    "code" : "oi-nystatin",
    "display" : "Nystatin",
    "definition" : "Drug for opportunistic-infection prophylaxis or treatment; strength is entered separately."
  },
  {
    "code" : "oi-liposomal-amphotericin-b-50",
    "display" : "Liposomal Amphotericin B 50 mg",
    "definition" : "The source form notes 3 mg/kg intravenously daily."
  },
  {
    "code" : "tpt-isoniazid-100",
    "display" : "Isoniazid 100 mg",
    "definition" : "Drug for TB preventive therapy. The source form preprints once-daily frequency."
  },
  {
    "code" : "tpt-isoniazid-300",
    "display" : "Isoniazid 300 mg",
    "definition" : "Drug for TB preventive therapy. The source form preprints once-daily frequency."
  },
  {
    "code" : "tpt-isoniazid-rifapentine-3hp",
    "display" : "Isoniazid/Rifapentine (3HP)",
    "definition" : "TB preventive therapy regimen listed on the source form; strength is entered separately."
  },
  {
    "code" : "tpt-other",
    "display" : "Other TB preventive therapy drug or regimen",
    "definition" : "A TB preventive therapy drug or regimen not otherwise listed; specify separately."
  },
  {
    "code" : "prep-cabotegravir-200-per-ml-3ml-vial",
    "display" : "Cabotegravir 200 mg/mL (3 mL vial)",
    "definition" : "PrEP product listed on the source form."
  },
  {
    "code" : "prep-lenacapavir-600-tablet",
    "display" : "Lenacapavir 600 mg tablet",
    "definition" : "PrEP product listed on the source form."
  },
  {
    "code" : "prep-lenacapavir-927-per-3ml-injection",
    "display" : "Lenacapavir 927 mg/3 mL injection",
    "definition" : "PrEP product listed on the source form."
  }]
}

```
