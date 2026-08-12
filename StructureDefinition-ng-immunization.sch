<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile Immunization
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Immunization</sch:title>
    <sch:rule context="f:Immunization">
      <sch:assert test="count(f:extension[@url = 'https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-next-dose-date']) &lt;= 1">extension with URL = 'https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-next-dose-date': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:identifier) &lt;= 1">identifier: maximum cardinality of 'identifier' is 1</sch:assert>
      <sch:assert test="count(f:doseQuantity) &gt;= 1">doseQuantity: minimum cardinality of 'doseQuantity' is 1</sch:assert>
      <sch:assert test="count(f:reaction) &lt;= 5">reaction: maximum cardinality of 'reaction' is 5</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
