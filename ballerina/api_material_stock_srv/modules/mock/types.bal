// AUTO-GENERATED FILE. DO NOT MODIFY.
// This file is auto-generated by the Ballerina OpenAPI tool.

// Copyright (c) 2024, WSO2 LLC. (http://www.wso2.org).
//
// WSO2 LLC. licenses this file to you under the Apache License,
// Version 2.0 (the "License"); you may not use this file except
// in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied.  See the License for the
// specific language governing permissions and limitations
// under the License.

import ballerina/constraint;
import ballerina/http;

public type A_MaterialSerialNumber_to_MatlStkInAcctMod record {
    A_MatlStkInAcctMod[] results?;
};

public type A_MatlStkInAcctModOrderByOptions ("Material"|"Material desc"|"Plant"|"Plant desc"|"StorageLocation"|"StorageLocation desc"|"Batch"|"Batch desc"|"Supplier"|"Supplier desc"|"Customer"|"Customer desc"|"WBSElementInternalID"|"WBSElementInternalID desc"|"SDDocument"|"SDDocument desc"|"SDDocumentItem"|"SDDocumentItem desc"|"InventorySpecialStockType"|"InventorySpecialStockType desc"|"InventoryStockType"|"InventoryStockType desc"|"WBSElementExternalID"|"WBSElementExternalID desc"|"MaterialBaseUnit"|"MaterialBaseUnit desc"|"MatlWrhsStkQtyInMatlBaseUnit"|"MatlWrhsStkQtyInMatlBaseUnit desc")[];

public type A_MaterialSerialNumber record {
    # Material Number
    @constraint:String {maxLength: 40}
    string Material?;
    @constraint:String {maxLength: 18}
    string SerialNumber?;
    string? Plant?;
    string? StorageLocation?;
    # Special Stock Indicator
    string? InventorySpecialStockType?;
    # Batch Number
    string? Batch?;
    # Stock Type of Goods Movement (Primary Posting)
    string? InventoryStockType?;
    # Equipment Number
    string? Equipment?;
    # Special stock customer account number
    string? Customer?;
    # Account number of the vendor
    string? Supplier?;
    # Sales Order Number
    string? SDDocument?;
    # Item Number in Sales Order
    string? SDDocumentItem?;
    # Work Breakdown Structure Element (WBS Element)
    string? WBSElementInternalID?;
    # Work Breakdown Structure Element (WBS Element) Edited
    string? WBSElementExternalID?;
    A_MaterialSerialNumber_to_MatlStkInAcctMod to_MatlStkInAcctMod?;
};

public type AcceptedAnydata record {|
    *http:Accepted;
    anydata body;
    map<string|string[]> headers;
|};

public type A_MaterialStockOrderByOptions ("Material"|"Material desc"|"MaterialBaseUnit"|"MaterialBaseUnit desc")[];

public type A_MaterialSerialNumberExpandOptions ("to_MatlStkInAcctMod")[];

# The number of entities in the collection. Available when using the [$inlinecount](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=67) query option.
public type count string;

public type A_MatlStkInAcctModSelectOptions ("Material"|"Plant"|"StorageLocation"|"Batch"|"Supplier"|"Customer"|"WBSElementInternalID"|"SDDocument"|"SDDocumentItem"|"InventorySpecialStockType"|"InventoryStockType"|"WBSElementExternalID"|"MaterialBaseUnit"|"MatlWrhsStkQtyInMatlBaseUnit"|"to_MaterialSerialNumber"|"to_MaterialStock")[];

public type A_MaterialSerialNumberOrderByOptions ("Material"|"Material desc"|"SerialNumber"|"SerialNumber desc"|"Plant"|"Plant desc"|"StorageLocation"|"StorageLocation desc"|"InventorySpecialStockType"|"InventorySpecialStockType desc"|"Batch"|"Batch desc"|"InventoryStockType"|"InventoryStockType desc"|"Equipment"|"Equipment desc"|"Customer"|"Customer desc"|"Supplier"|"Supplier desc"|"SDDocument"|"SDDocument desc"|"SDDocumentItem"|"SDDocumentItem desc"|"WBSElementInternalID"|"WBSElementInternalID desc"|"WBSElementExternalID"|"WBSElementExternalID desc")[];

public type A_MaterialStock record {
    # Material Number
    @constraint:String {maxLength: 40}
    string Material?;
    string? MaterialBaseUnit?;
    A_MaterialSerialNumber_to_MatlStkInAcctMod to_MatlStkInAcctMod?;
};

public type CollectionOfA_MatlStkInAcctMod record {
    count __count?;
    A_MatlStkInAcctMod[] results?;
};

public type A_MaterialStockExpandOptions ("to_MatlStkInAcctMod")[];

public type A_MatlStkInAcctMod record {
    # Material in Respect of Which Stock is Managed
    @constraint:String {maxLength: 40}
    string Material?;
    @constraint:String {maxLength: 4}
    string Plant?;
    @constraint:String {maxLength: 4}
    string StorageLocation?;
    # Batch Number (Stock Identifier)
    @constraint:String {maxLength: 10}
    string Batch?;
    # Supplier for Special Stock
    @constraint:String {maxLength: 10}
    string Supplier?;
    # Customer for Special Stock
    @constraint:String {maxLength: 10}
    string Customer?;
    # Valuated Sales Order Stock WBS Element
    @constraint:String {maxLength: 24}
    string WBSElementInternalID?;
    # Sales order number of valuated sales order stock
    @constraint:String {maxLength: 10}
    string SDDocument?;
    # Sales Order Item of Valuated Sales Order Stock
    @constraint:String {maxLength: 6}
    string SDDocumentItem?;
    @constraint:String {maxLength: 1}
    string InventorySpecialStockType?;
    # Stock Type of Goods Movement (Stock Identifier)
    @constraint:String {maxLength: 2}
    string InventoryStockType?;
    # Work Breakdown Structure Element (WBS Element) Edited
    string? WBSElementExternalID?;
    string? MaterialBaseUnit?;
    string? MatlWrhsStkQtyInMatlBaseUnit?;
    A_MatlStkInAcctMod_to_MaterialSerialNumber to_MaterialSerialNumber?;
    A_MaterialStock to_MaterialStock?;
};

public type CollectionOfA_MatlStkInAcctModWrapper record {
    CollectionOfA_MatlStkInAcctMod d?;
};

public type CollectionOfA_MaterialStock record {
    count __count?;
    A_MaterialStock[] results?;
};

public type CollectionOfA_MaterialSerialNumber record {
    count __count?;
    A_MaterialSerialNumber[] results?;
};

public type CollectionOfA_MaterialSerialNumberWrapper record {
    CollectionOfA_MaterialSerialNumber d?;
};

public type CollectionOfA_MaterialStockWrapper record {
    CollectionOfA_MaterialStock d?;
};

public type A_MaterialSerialNumberSelectOptions ("Material"|"SerialNumber"|"Plant"|"StorageLocation"|"InventorySpecialStockType"|"Batch"|"InventoryStockType"|"Equipment"|"Customer"|"Supplier"|"SDDocument"|"SDDocumentItem"|"WBSElementInternalID"|"WBSElementExternalID"|"to_MatlStkInAcctMod")[];

public type A_MatlStkInAcctMod_to_MaterialSerialNumber record {
    A_MaterialSerialNumber[] results?;
};

public type A_MatlStkInAcctModExpandOptions ("to_MaterialSerialNumber"|"to_MaterialStock")[];

public type A_MaterialStockSelectOptions ("Material"|"MaterialBaseUnit"|"to_MatlStkInAcctMod")[];