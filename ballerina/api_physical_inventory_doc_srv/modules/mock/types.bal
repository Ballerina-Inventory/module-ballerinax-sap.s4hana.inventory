// AUTO-GENERATED FILE.
// This file is auto-generated by the Ballerina OpenAPI tool.

import ballerina/constraint;

public type A_PhysInventoryDocHeader_1 record {
    A_PhysInventoryDocHeader d?;
};

public type A_PhysInventoryDocHeader record {
    @constraint:String {maxLength: 4}
    string FiscalYear?;
    @constraint:String {maxLength: 10}
    string PhysicalInventoryDocument?;
    string? InventoryTransactionType?;
    string? Plant?;
    string? StorageLocation?;
    # Special Stock Indicator
    string? InventorySpecialStockType?;
    # Document Date in Document
    string? DocumentDate?;
    # Planned Date of Inventory Count
    string? PhysInventoryPlannedCountDate?;
    # Date of Last Count
    string? PhysicalInventoryLastCountDate?;
    # Posting Date in the Document
    string? PostingDate?;
    string? FiscalPeriod?;
    # Physical Inventory Created by User
    string? CreatedByUser?;
    # Posting Block Due to Physical Inventory
    boolean? PostingIsBlockedForPhysInvtry?;
    string? PhysicalInventoryCountStatus?;
    # Status of Adjustment Posting (Inventory Differences)
    string? PhysInvtryAdjustmentPostingSts?;
    # Status of Deletion
    string? PhysInvtryDeletionStatus?;
    boolean? PhysInvtryDocHasQtySnapshot?;
    # Type of Grouping Criterion
    string? PhysicalInventoryGroupType?;
    # Grouping Criterion of Physical Inventory Document Item
    string? PhysicalInventoryGroup?;
    string? PhysicalInventoryNumber?;
    string? PhysInventoryReferenceNumber?;
    # Description of Physical Inventory Document
    string? PhysicalInventoryDocumentDesc?;
    string? PhysicalInventoryType?;
    # Last Change Timestamp
    string? LastChangeDateTime?;
    A_PhysInventoryDocHeader_to_PhysicalInventoryDocumentItem to_PhysicalInventoryDocumentItem?;
};

public type CreateA_PhysInventoryDocHeader record {
    @constraint:String {maxLength: 4}
    string FiscalYear;
    @constraint:String {maxLength: 10}
    string PhysicalInventoryDocument;
    string? InventoryTransactionType?;
    string? Plant?;
    string? StorageLocation?;
    # Special Stock Indicator
    string? InventorySpecialStockType?;
    # Document Date in Document
    string? DocumentDate?;
    # Planned Date of Inventory Count
    string? PhysInventoryPlannedCountDate?;
    # Date of Last Count
    string? PhysicalInventoryLastCountDate?;
    # Posting Date in the Document
    string? PostingDate?;
    string? FiscalPeriod?;
    # Physical Inventory Created by User
    string? CreatedByUser?;
    # Posting Block Due to Physical Inventory
    boolean? PostingIsBlockedForPhysInvtry?;
    string? PhysicalInventoryCountStatus?;
    # Status of Adjustment Posting (Inventory Differences)
    string? PhysInvtryAdjustmentPostingSts?;
    # Status of Deletion
    string? PhysInvtryDeletionStatus?;
    boolean? PhysInvtryDocHasQtySnapshot?;
    # Type of Grouping Criterion
    string? PhysicalInventoryGroupType?;
    # Grouping Criterion of Physical Inventory Document Item
    string? PhysicalInventoryGroup?;
    string? PhysicalInventoryNumber?;
    string? PhysInventoryReferenceNumber?;
    # Description of Physical Inventory Document
    string? PhysicalInventoryDocumentDesc?;
    string? PhysicalInventoryType?;
    # Last Change Timestamp
    string? LastChangeDateTime?;
    CreateA_PhysInventoryDocHeader_to_PhysicalInventoryDocumentItem to_PhysicalInventoryDocumentItem?;
};

public type A_SerialNumberPhysInventoryDocSelectOptions ("Equipment"|"FiscalYear"|"PhysicalInventoryDocument"|"PhysicalInventoryDocumentItem"|"SerialNumberPhysicalInvtryType"|"Material"|"SerialNumber")[];

public type CollectionOfA_SerialNumberPhysInventoryDocWrapper record {
    CollectionOfA_SerialNumberPhysInventoryDoc d?;
};

# The number of entities in the collection. Available when using the [$inlinecount](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=67) query option.
public type count string;

public type A_SerialNumberPhysInventoryDoc record {
    # Equipment Number
    @constraint:String {maxLength: 18}
    string Equipment?;
    @constraint:String {maxLength: 4}
    string FiscalYear?;
    # Physical Inventory Document
    @constraint:String {maxLength: 10}
    string PhysicalInventoryDocument?;
    # Line Number
    @constraint:String {maxLength: 3}
    string PhysicalInventoryDocumentItem?;
    @constraint:String {maxLength: 1}
    string SerialNumberPhysicalInvtryType?;
    # Material Number
    string? Material?;
    string? SerialNumber?;
};

public type CreateA_SerialNumberPhysInventoryDoc record {
    # Equipment Number
    @constraint:String {maxLength: 18}
    string Equipment;
    @constraint:String {maxLength: 4}
    string FiscalYear;
    # Physical Inventory Document
    @constraint:String {maxLength: 10}
    string PhysicalInventoryDocument;
    # Line Number
    @constraint:String {maxLength: 3}
    string PhysicalInventoryDocumentItem;
    @constraint:String {maxLength: 1}
    string SerialNumberPhysicalInvtryType;
    # Material Number
    string? Material?;
    string? SerialNumber?;
};

public type CollectionOfA_PhysInventoryDocHeader record {
    count __count?;
    A_PhysInventoryDocHeader[] results?;
};

public type A_PhysInventoryDocHeaderExpandOptions ("to_PhysicalInventoryDocumentItem")[];

public type A_PhysInventoryDocItem record {
    @constraint:String {maxLength: 4}
    string FiscalYear?;
    @constraint:String {maxLength: 10}
    string PhysicalInventoryDocument?;
    # Physical Inventory Item Number
    @constraint:String {maxLength: 3}
    string PhysicalInventoryDocumentItem?;
    string? Plant?;
    string? StorageLocation?;
    # Material Number
    string? Material?;
    # Batch Number
    string? Batch?;
    string? InventorySpecialStockType?;
    # Stock Type (Physical Inventory)
    string? PhysicalInventoryStockType?;
    # Sales Order Number
    string? SalesOrder?;
    # Item Number in Sales Order
    string? SalesOrderItem?;
    # Supplier's Account Number
    string? Supplier?;
    # Account number of customer
    string? Customer?;
    # Work Breakdown Structure Element (WBS Element)
    string? WBSElement?;
    string? LastChangeUser?;
    # Last Changed On
    string? LastChangeDate?;
    string? CountedByUser?;
    # Date of Last Count
    string? PhysicalInventoryLastCountDate?;
    string? AdjustmentPostingMadeByUser?;
    # Posting Date in the Document
    string? PostingDate?;
    # Item is Counted
    boolean? PhysicalInventoryItemIsCounted?;
    # Difference of Item is Posted
    boolean? PhysInvtryDifferenceIsPosted?;
    # Item is Recounted
    boolean? PhysInvtryItemIsRecounted?;
    # Item is Deleted
    boolean? PhysInvtryItemIsDeleted?;
    boolean? IsHandledInAltvUnitOfMsr?;
    string? CycleCountType?;
    boolean? IsValueOnlyMaterial?;
    string? PhysInventoryReferenceNumber?;
    # Number of Material Document
    string? MaterialDocument?;
    string? MaterialDocumentYear?;
    string? MaterialDocumentItem?;
    # Number of Recount Document
    string? PhysInvtryRecountDocument?;
    # Is Zero Count
    boolean? PhysicalInventoryItemIsZero?;
    string? ReasonForPhysInvtryDifference?;
    string? MaterialBaseUnit?;
    # Book Quantity Immediately Prior to Count
    string? BookQtyBfrCountInMatlBaseUnit?;
    string? Quantity?;
    string? UnitOfEntry?;
    string? QuantityInUnitOfEntry?;
    string? Currency?;
    # Value of Difference
    string? DifferenceAmountInCoCodeCrcy?;
    # Externally Entered Value Based on Sales Price
    string? EnteredSlsAmtInCoCodeCrcy?;
    string? SlsPriceAmountInCoCodeCrcy?;
    string? PhysInvtryCtAmtInCoCodeCrcy?;
    string? BookQtyAmountInCoCodeCrcy?;
    # Last Change Timestamp
    string? LastChangeDateTime?;
    A_PhysInventoryDocHeader to_PhysicalInventoryDocument?;
    A_PhysInventoryDocItem_to_SerialNumbers to_SerialNumbers?;
};

public type CreateA_PhysInventoryDocHeader_to_PhysicalInventoryDocumentItem record {
    CreateA_PhysInventoryDocItem[] results?;
};

public type A_PhysInventoryDocItem_to_SerialNumbers record {
    A_SerialNumberPhysInventoryDoc[] results?;
};

public type CreateA_PhysInventoryDocItem record {
    @constraint:String {maxLength: 4}
    string FiscalYear;
    @constraint:String {maxLength: 10}
    string PhysicalInventoryDocument;
    # Physical Inventory Item Number
    @constraint:String {maxLength: 3}
    string PhysicalInventoryDocumentItem;
    string? Plant?;
    string? StorageLocation?;
    # Material Number
    string? Material?;
    # Batch Number
    string? Batch?;
    string? InventorySpecialStockType?;
    # Stock Type (Physical Inventory)
    string? PhysicalInventoryStockType?;
    # Sales Order Number
    string? SalesOrder?;
    # Item Number in Sales Order
    string? SalesOrderItem?;
    # Supplier's Account Number
    string? Supplier?;
    # Account number of customer
    string? Customer?;
    # Work Breakdown Structure Element (WBS Element)
    string? WBSElement?;
    string? LastChangeUser?;
    # Last Changed On
    string? LastChangeDate?;
    string? CountedByUser?;
    # Date of Last Count
    string? PhysicalInventoryLastCountDate?;
    string? AdjustmentPostingMadeByUser?;
    # Posting Date in the Document
    string? PostingDate?;
    # Item is Counted
    boolean? PhysicalInventoryItemIsCounted?;
    # Difference of Item is Posted
    boolean? PhysInvtryDifferenceIsPosted?;
    # Item is Recounted
    boolean? PhysInvtryItemIsRecounted?;
    # Item is Deleted
    boolean? PhysInvtryItemIsDeleted?;
    boolean? IsHandledInAltvUnitOfMsr?;
    string? CycleCountType?;
    boolean? IsValueOnlyMaterial?;
    string? PhysInventoryReferenceNumber?;
    # Number of Material Document
    string? MaterialDocument?;
    string? MaterialDocumentYear?;
    string? MaterialDocumentItem?;
    # Number of Recount Document
    string? PhysInvtryRecountDocument?;
    # Is Zero Count
    boolean? PhysicalInventoryItemIsZero?;
    string? ReasonForPhysInvtryDifference?;
    string? MaterialBaseUnit?;
    # Book Quantity Immediately Prior to Count
    string? BookQtyBfrCountInMatlBaseUnit?;
    string? Quantity?;
    string? UnitOfEntry?;
    string? QuantityInUnitOfEntry?;
    string? Currency?;
    # Value of Difference
    string? DifferenceAmountInCoCodeCrcy?;
    # Externally Entered Value Based on Sales Price
    string? EnteredSlsAmtInCoCodeCrcy?;
    string? SlsPriceAmountInCoCodeCrcy?;
    string? PhysInvtryCtAmtInCoCodeCrcy?;
    string? BookQtyAmountInCoCodeCrcy?;
    # Last Change Timestamp
    string? LastChangeDateTime?;
    CreateA_PhysInventoryDocHeader to_PhysicalInventoryDocument?;
    CreateA_PhysInventoryDocItem_to_SerialNumbers to_SerialNumbers?;
};

public type CreateA_PhysInventoryDocItem_to_SerialNumbers record {
    CreateA_SerialNumberPhysInventoryDoc[] results?;
};

public type A_PhysInventoryDocHeader_to_PhysicalInventoryDocumentItem record {
    A_PhysInventoryDocItem[] results?;
};

public type A_PhysInventoryDocHeaderOrderByOptions ("FiscalYear"|"FiscalYear desc"|"PhysicalInventoryDocument"|"PhysicalInventoryDocument desc"|"InventoryTransactionType"|"InventoryTransactionType desc"|"Plant"|"Plant desc"|"StorageLocation"|"StorageLocation desc"|"InventorySpecialStockType"|"InventorySpecialStockType desc"|"DocumentDate"|"DocumentDate desc"|"PhysInventoryPlannedCountDate"|"PhysInventoryPlannedCountDate desc"|"PhysicalInventoryLastCountDate"|"PhysicalInventoryLastCountDate desc"|"PostingDate"|"PostingDate desc"|"FiscalPeriod"|"FiscalPeriod desc"|"CreatedByUser"|"CreatedByUser desc"|"PostingIsBlockedForPhysInvtry"|"PostingIsBlockedForPhysInvtry desc"|"PhysicalInventoryCountStatus"|"PhysicalInventoryCountStatus desc"|"PhysInvtryAdjustmentPostingSts"|"PhysInvtryAdjustmentPostingSts desc"|"PhysInvtryDeletionStatus"|"PhysInvtryDeletionStatus desc"|"PhysInvtryDocHasQtySnapshot"|"PhysInvtryDocHasQtySnapshot desc"|"PhysicalInventoryGroupType"|"PhysicalInventoryGroupType desc"|"PhysicalInventoryGroup"|"PhysicalInventoryGroup desc"|"PhysicalInventoryNumber"|"PhysicalInventoryNumber desc"|"PhysInventoryReferenceNumber"|"PhysInventoryReferenceNumber desc"|"PhysicalInventoryDocumentDesc"|"PhysicalInventoryDocumentDesc desc"|"PhysicalInventoryType"|"PhysicalInventoryType desc"|"LastChangeDateTime"|"LastChangeDateTime desc")[];

public type A_SerialNumberPhysInventoryDocOrderByOptions ("Equipment"|"Equipment desc"|"FiscalYear"|"FiscalYear desc"|"PhysicalInventoryDocument"|"PhysicalInventoryDocument desc"|"PhysicalInventoryDocumentItem"|"PhysicalInventoryDocumentItem desc"|"SerialNumberPhysicalInvtryType"|"SerialNumberPhysicalInvtryType desc"|"Material"|"Material desc"|"SerialNumber"|"SerialNumber desc")[];

public type A_PhysInventoryDocHeaderSelectOptions ("FiscalYear"|"PhysicalInventoryDocument"|"InventoryTransactionType"|"Plant"|"StorageLocation"|"InventorySpecialStockType"|"DocumentDate"|"PhysInventoryPlannedCountDate"|"PhysicalInventoryLastCountDate"|"PostingDate"|"FiscalPeriod"|"CreatedByUser"|"PostingIsBlockedForPhysInvtry"|"PhysicalInventoryCountStatus"|"PhysInvtryAdjustmentPostingSts"|"PhysInvtryDeletionStatus"|"PhysInvtryDocHasQtySnapshot"|"PhysicalInventoryGroupType"|"PhysicalInventoryGroup"|"PhysicalInventoryNumber"|"PhysInventoryReferenceNumber"|"PhysicalInventoryDocumentDesc"|"PhysicalInventoryType"|"LastChangeDateTime"|"to_PhysicalInventoryDocumentItem")[];

public type CollectionOfA_PhysInventoryDocHeaderWrapper record {
    CollectionOfA_PhysInventoryDocHeader d?;
};

public type CollectionOfA_SerialNumberPhysInventoryDoc record {
    count __count?;
    A_SerialNumberPhysInventoryDoc[] results?;
};
