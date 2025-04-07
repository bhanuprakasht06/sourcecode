<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xpath-default-namespace="http://www.ibm.com/maximo">
<xsl:output encoding="UTF-8" indent="yes" method="xml" />
<xsl:template match="PublishPSA_GFS_MXITEM/PSA_GFS_MXITEMSet/ITEM">
      <cre:createItemDetailsRequest xmlns:cre="http://xmlns.oracle.com/psa/schema/createItemDetails">
         <cre:ItemNumber><xsl:value-of select="./ITEMNUM"/></cre:ItemNumber>
         <cre:CompanyCode><xsl:value-of select="./ITEMORGINFO/ORGID"/></cre:CompanyCode>
         <cre:ItemStatusValue><xsl:value-of select="./STATUS"/></cre:ItemStatusValue>
         <cre:PrimaryUOMValue><xsl:value-of select="./ISSUEUNIT"/></cre:PrimaryUOMValue>
         <cre:ItemDescription><xsl:value-of select="./DESCRIPTION"/></cre:ItemDescription>
         <cre:Template></cre:Template>
         <cre:ExpenseAccountValue></cre:ExpenseAccountValue>
         <cre:OutputTaxClassificationCodeValue></cre:OutputTaxClassificationCodeValue>
         <cre:SalesAccountValue></cre:SalesAccountValue>
         <cre:LongDescription><xsl:value-of select="substring(./DESCRIPTION_LONGDESCRIPTION,1,4000)"/></cre:LongDescription>
         <cre:PurchasingInputTaxClassificationValue></cre:PurchasingInputTaxClassificationValue>
         <cre:ListPrice></cre:ListPrice>
         <cre:BuyerEmailAddress></cre:BuyerEmailAddress>
         <cre:ItemCatalog>Inventory</cre:ItemCatalog>
         <cre:CategoryName><xsl:value-of select="concat(./PSA_ITEMCATEGORY1,'.',./PSA_ITEMCATEGORY2,'.',./PSA_ITEMCATEGORY3)"/> </cre:CategoryName>
         <cre:StyleItemFlag></cre:StyleItemFlag>
         <cre:UserItemTypeValue></cre:UserItemTypeValue>
      </cre:createItemDetailsRequest>
</xsl:template>
</xsl:stylesheet>