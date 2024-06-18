Feature:
  Background:

  #Assignment 1
    * def serviceURL = 'https://petstore.swagger.io/v2/pet'

  Scenario Outline:Reading pet details from xl file
    Given url serviceURL
    * def javaFileObj = Java.type('reuseMethod.ReadingCommonMethod')
    * def petId  = javaFileObj.readingXLFileAsPerTestData('<TestCaseName>','id')
    * def petName  = javaFileObj.readingXLFileAsPerTestData('<TestCaseName>','name')
    * def actualJsonBody = javaFileObj.createJsonBody(petId,petName)

    When request actualJsonBody
    Then method post
    And print 'Response is; ' , response
    And response.id == petId
    And response.name == petName

    Examples:
      |TestCaseName|
      |TC001|
      |TC002|
      |TC003|
      |TC004|
      |TC005|
      |TC006|
      |TC007|
      |TC008|
      |TC009|
      |TC010|
      |TC011|
      |TC012|
      |TC013|
      |TC014|
      |TC015|
      |TC016|
      |TC017|
      |TC018|
      |TC019|
      |TC020|
      |TC021|
      |TC022|
      |TC023|
      |TC024|
      |TC025|
      |TC026|
      |TC027|
      |TC028|
      |TC029|
      |TC030|
