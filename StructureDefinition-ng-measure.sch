<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile Measure
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Measure</sch:title>
    <sch:rule context="f:Measure">
      <sch:assert test="count(f:name) &gt;= 1">name: minimum cardinality of 'name' is 1</sch:assert>
      <sch:assert test="count(f:title) &gt;= 1">title: minimum cardinality of 'title' is 1</sch:assert>
      <sch:assert test="count(f:subject[x]) &lt;= 0">subject[x]: maximum cardinality of 'subject[x]' is 0</sch:assert>
      <sch:assert test="count(f:publisher) &gt;= 1">publisher: minimum cardinality of 'publisher' is 1</sch:assert>
      <sch:assert test="count(f:jurisdiction) &lt;= 1">jurisdiction: maximum cardinality of 'jurisdiction' is 1</sch:assert>
      <sch:assert test="count(f:purpose) &lt;= 0">purpose: maximum cardinality of 'purpose' is 0</sch:assert>
      <sch:assert test="count(f:usage) &lt;= 0">usage: maximum cardinality of 'usage' is 0</sch:assert>
      <sch:assert test="count(f:copyright) &lt;= 0">copyright: maximum cardinality of 'copyright' is 0</sch:assert>
      <sch:assert test="count(f:topic) &lt;= 0">topic: maximum cardinality of 'topic' is 0</sch:assert>
      <sch:assert test="count(f:author) &lt;= 1">author: maximum cardinality of 'author' is 1</sch:assert>
      <sch:assert test="count(f:editor) &lt;= 0">editor: maximum cardinality of 'editor' is 0</sch:assert>
      <sch:assert test="count(f:reviewer) &lt;= 1">reviewer: maximum cardinality of 'reviewer' is 1</sch:assert>
      <sch:assert test="count(f:endorser) &lt;= 1">endorser: maximum cardinality of 'endorser' is 1</sch:assert>
      <sch:assert test="count(f:relatedArtifact) &lt;= 0">relatedArtifact: maximum cardinality of 'relatedArtifact' is 0</sch:assert>
      <sch:assert test="count(f:library) &lt;= 0">library: maximum cardinality of 'library' is 0</sch:assert>
      <sch:assert test="count(f:compositeScoring) &lt;= 0">compositeScoring: maximum cardinality of 'compositeScoring' is 0</sch:assert>
      <sch:assert test="count(f:type) &lt;= 0">type: maximum cardinality of 'type' is 0</sch:assert>
      <sch:assert test="count(f:riskAdjustment) &lt;= 0">riskAdjustment: maximum cardinality of 'riskAdjustment' is 0</sch:assert>
      <sch:assert test="count(f:rateAggregation) &lt;= 0">rateAggregation: maximum cardinality of 'rateAggregation' is 0</sch:assert>
      <sch:assert test="count(f:rationale) &lt;= 0">rationale: maximum cardinality of 'rationale' is 0</sch:assert>
      <sch:assert test="count(f:clinicalRecommendationStatement) &lt;= 0">clinicalRecommendationStatement: maximum cardinality of 'clinicalRecommendationStatement' is 0</sch:assert>
      <sch:assert test="count(f:improvementNotation) &lt;= 0">improvementNotation: maximum cardinality of 'improvementNotation' is 0</sch:assert>
      <sch:assert test="count(f:definition) &lt;= 0">definition: maximum cardinality of 'definition' is 0</sch:assert>
      <sch:assert test="count(f:guidance) &lt;= 0">guidance: maximum cardinality of 'guidance' is 0</sch:assert>
      <sch:assert test="count(f:supplementalData) &lt;= 0">supplementalData: maximum cardinality of 'supplementalData' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
