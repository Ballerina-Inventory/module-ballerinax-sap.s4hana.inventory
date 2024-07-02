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

import ballerina/http;
import ballerinax/sap;

#

#

# You can count items and post differences on both document and item level. The service can be consumed by external systems.
public isolated client class Client {
    final sap:Client clientEp;

    # Gets invoked to initialize the `connector`.
    #
    # + config - The configurations to be used when initializing the `connector` 
    # + serviceUrl - URL of the target service 
    # + return - An error if connector initialization failed 
    public isolated function init(ConnectionConfig config, string hostname, int port = 443) returns error? {
        string serviceUrl = string `https://${hostname}:${port}/sap/opu/odata/sap/API_PHYSICAL_INVENTORY_DOC_SRV`;
        http:ClientConfiguration httpClientConfig = {auth: config.auth, httpVersion: config.httpVersion, timeout: config.timeout, forwarded: config.forwarded, poolConfig: config.poolConfig, compression: config.compression, circuitBreaker: config.circuitBreaker, retryConfig: config.retryConfig, validation: config.validation};
        do {
            if config.http1Settings is ClientHttp1Settings {
                ClientHttp1Settings settings = check config.http1Settings.ensureType(ClientHttp1Settings);
                httpClientConfig.http1Settings = {...settings};
            }
            if config.http2Settings is http:ClientHttp2Settings {
                httpClientConfig.http2Settings = check config.http2Settings.ensureType(http:ClientHttp2Settings);
            }
            if config.cache is http:CacheConfig {
                httpClientConfig.cache = check config.cache.ensureType(http:CacheConfig);
            }
            if config.responseLimits is http:ResponseLimitConfigs {
                httpClientConfig.responseLimits = check config.responseLimits.ensureType(http:ResponseLimitConfigs);
            }
            if config.secureSocket is http:ClientSecureSocket {
                httpClientConfig.secureSocket = check config.secureSocket.ensureType(http:ClientSecureSocket);
            }
            if config.proxy is http:ProxyConfig {
                httpClientConfig.proxy = check config.proxy.ensureType(http:ProxyConfig);
            }
        }
        sap:Client httpEp = check new (serviceUrl, httpClientConfig);
        self.clientEp = httpEp;
        return;
    }

    # Creates a physical inventory document
    #
    # + headers - Headers to be sent with the request 
    # + payload - New entity 
    # + return - Created entity 
    remote isolated function createA_PhysInventoryDocHeader(CreateA_PhysInventoryDocHeader payload, map<string|string[]> headers = {}) returns A_PhysInventoryDocHeader_1|error {
        string resourcePath = string `/A_PhysInventoryDocHeader`;
        http:Request request = new;
        json jsonBody = payload.toJson();
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    # Initiates a recount for the physical inventory document
    #
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - Success 
    remote isolated function createInitiateRecount(map<string|string[]> headers = {}, *CreateInitiateRecountQueries queries) returns A_PhysInventoryDocHeader_1|error {
        string resourcePath = string `/InitiateRecount`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        return self.clientEp->post(resourcePath, request, headers);
    }

    # Initiates a recount for the specific physical inventory document
    #
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - Success 
    remote isolated function createInitiateRecountOnItem(map<string|string[]> headers = {}, *CreateInitiateRecountOnItemQueries queries) returns A_PhysInventoryDocItem_1|error {
        string resourcePath = string `/InitiateRecountOnItem`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        return self.clientEp->post(resourcePath, request, headers);
    }

    # Creates the material document for the differences
    #
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - Success 
    remote isolated function createPostDifferences(map<string|string[]> headers = {}, *CreatePostDifferencesQueries queries) returns A_PhysInventoryDocHeader_1|error {
        string resourcePath = string `/PostDifferences`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        return self.clientEp->post(resourcePath, request, headers);
    }

    # Creates the material document for the differences for a specific physical inventory document item
    #
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - Success 
    remote isolated function createPostDifferencesOnItem(map<string|string[]> headers = {}, *CreatePostDifferencesOnItemQueries queries) returns A_PhysInventoryDocItem_1|error {
        string resourcePath = string `/PostDifferencesOnItem`;
        resourcePath = resourcePath + check getPathForQueryParam(queries);
        http:Request request = new;
        return self.clientEp->post(resourcePath, request, headers);
    }

    # Reads information for a specific physical inventory document
    #
    # + FiscalYear - Fiscal Year
    # + PhysicalInventoryDocument - Physical Inventory Document
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - Retrieved entity 
    remote isolated function getA_PhysInventoryDocHeader(string FiscalYear, string PhysicalInventoryDocument, map<string|string[]> headers = {}, *GetA_PhysInventoryDocHeaderQueries queries) returns A_PhysInventoryDocHeaderWrapper|error {
        string resourcePath = string `/A_PhysInventoryDocHeader(FiscalYear='${getEncodedUri(FiscalYear)}',PhysicalInventoryDocument='${getEncodedUri(PhysicalInventoryDocument)}')`;
        map<Encoding> queryParamEncoding = {"$select": {style: FORM, explode: false}, "$expand": {style: FORM, explode: false}};
        resourcePath = resourcePath + check getPathForQueryParam(queries, queryParamEncoding);
        return self.clientEp->get(resourcePath, headers);
    }

    # Reads information on physical inventory document item level for a specific physical inventory document item
    #
    # + FiscalYear - Fiscal Year
    # + PhysicalInventoryDocument - Physical Inventory Document
    # + PhysicalInventoryDocumentItem - Physical Inventory Item Number
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - Retrieved entity 
    remote isolated function getA_PhysInventoryDocItem(string FiscalYear, string PhysicalInventoryDocument, string PhysicalInventoryDocumentItem, map<string|string[]> headers = {}, *GetA_PhysInventoryDocItemQueries queries) returns A_PhysInventoryDocItemWrapper|error {
        string resourcePath = string `/A_PhysInventoryDocItem(FiscalYear='${getEncodedUri(FiscalYear)}',PhysicalInventoryDocument='${getEncodedUri(PhysicalInventoryDocument)}',PhysicalInventoryDocumentItem='${getEncodedUri(PhysicalInventoryDocumentItem)}')`;
        map<Encoding> queryParamEncoding = {"$select": {style: FORM, explode: false}, "$expand": {style: FORM, explode: false}};
        resourcePath = resourcePath + check getPathForQueryParam(queries, queryParamEncoding);
        return self.clientEp->get(resourcePath, headers);
    }

    # Reads information of serial number on physical inventory document item level for a specific physical inventory document, item and year
    #
    # + Equipment - Equipment Number
    # + FiscalYear - Fiscal Year
    # + PhysicalInventoryDocument - Physical Inventory Document
    # + PhysicalInventoryDocumentItem - Line Number
    # + SerialNumberPhysicalInvtryType - Serial Number Physical Inventory Type
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - Retrieved entity 
    remote isolated function getA_SerialNumberPhysInventoryDoc(string Equipment, string FiscalYear, string PhysicalInventoryDocument, string PhysicalInventoryDocumentItem, string SerialNumberPhysicalInvtryType, map<string|string[]> headers = {}, *GetA_SerialNumberPhysInventoryDocQueries queries) returns A_SerialNumberPhysInventoryDocWrapper|error {
        string resourcePath = string `/A_SerialNumberPhysInventoryDoc(Equipment='${getEncodedUri(Equipment)}',FiscalYear='${getEncodedUri(FiscalYear)}',PhysicalInventoryDocument='${getEncodedUri(PhysicalInventoryDocument)}',PhysicalInventoryDocumentItem='${getEncodedUri(PhysicalInventoryDocumentItem)}',SerialNumberPhysicalInvtryType='${getEncodedUri(SerialNumberPhysicalInvtryType)}')`;
        map<Encoding> queryParamEncoding = {"$select": {style: FORM, explode: false}};
        resourcePath = resourcePath + check getPathForQueryParam(queries, queryParamEncoding);
        return self.clientEp->get(resourcePath, headers);
    }

    # Reads information on physical inventory document item and header level for a specific physical inventory document item
    #
    # + FiscalYear - Fiscal Year
    # + PhysicalInventoryDocument - Physical Inventory Document
    # + PhysicalInventoryDocumentItem - Physical Inventory Item Number
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - Retrieved entity 
    remote isolated function getPhysicalInventoryDocumentOfA_PhysInventoryDocItem(string FiscalYear, string PhysicalInventoryDocument, string PhysicalInventoryDocumentItem, map<string|string[]> headers = {}, *GetPhysicalInventoryDocumentOfA_PhysInventoryDocItemQueries queries) returns A_PhysInventoryDocHeaderWrapper|error {
        string resourcePath = string `/A_PhysInventoryDocItem(FiscalYear='${getEncodedUri(FiscalYear)}',PhysicalInventoryDocument='${getEncodedUri(PhysicalInventoryDocument)}',PhysicalInventoryDocumentItem='${getEncodedUri(PhysicalInventoryDocumentItem)}')/to_PhysicalInventoryDocument`;
        map<Encoding> queryParamEncoding = {"$select": {style: FORM, explode: false}, "$expand": {style: FORM, explode: false}};
        resourcePath = resourcePath + check getPathForQueryParam(queries, queryParamEncoding);
        return self.clientEp->get(resourcePath, headers);
    }

    # Reads information on physical inventory document header level
    #
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - Retrieved entities 
    remote isolated function listA_PhysInventoryDocHeaders(map<string|string[]> headers = {}, *ListA_PhysInventoryDocHeadersQueries queries) returns CollectionOfA_PhysInventoryDocHeaderWrapper|error {
        string resourcePath = string `/A_PhysInventoryDocHeader`;
        map<Encoding> queryParamEncoding = {"$orderby": {style: FORM, explode: false}, "$select": {style: FORM, explode: false}, "$expand": {style: FORM, explode: false}};
        resourcePath = resourcePath + check getPathForQueryParam(queries, queryParamEncoding);
        return self.clientEp->get(resourcePath, headers);
    }

    # Reads information on physical inventory items level
    #
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - Retrieved entities 
    remote isolated function listA_PhysInventoryDocItems(map<string|string[]> headers = {}, *ListA_PhysInventoryDocItemsQueries queries) returns CollectionOfA_PhysInventoryDocItemWrapper|error {
        string resourcePath = string `/A_PhysInventoryDocItem`;
        map<Encoding> queryParamEncoding = {"$orderby": {style: FORM, explode: false}, "$select": {style: FORM, explode: false}, "$expand": {style: FORM, explode: false}};
        resourcePath = resourcePath + check getPathForQueryParam(queries, queryParamEncoding);
        return self.clientEp->get(resourcePath, headers);
    }

    # Reads information of serial numbers on physical inventory document items level
    #
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - Retrieved entities 
    remote isolated function listA_SerialNumberPhysInventoryDocs(map<string|string[]> headers = {}, *ListA_SerialNumberPhysInventoryDocsQueries queries) returns CollectionOfA_SerialNumberPhysInventoryDocWrapper|error {
        string resourcePath = string `/A_SerialNumberPhysInventoryDoc`;
        map<Encoding> queryParamEncoding = {"$orderby": {style: FORM, explode: false}, "$select": {style: FORM, explode: false}};
        resourcePath = resourcePath + check getPathForQueryParam(queries, queryParamEncoding);
        return self.clientEp->get(resourcePath, headers);
    }

    # Reads information for a specific physical inventory document header and physical inventory document items
    #
    # + FiscalYear - Fiscal Year
    # + PhysicalInventoryDocument - Physical Inventory Document
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - Retrieved entities 
    remote isolated function listPhysicalInventoryDocumentItemsOfA_PhysInventoryDocHeader(string FiscalYear, string PhysicalInventoryDocument, map<string|string[]> headers = {}, *ListPhysicalInventoryDocumentItemsOfA_PhysInventoryDocHeaderQueries queries) returns CollectionOfA_PhysInventoryDocItemWrapper|error {
        string resourcePath = string `/A_PhysInventoryDocHeader(FiscalYear='${getEncodedUri(FiscalYear)}',PhysicalInventoryDocument='${getEncodedUri(PhysicalInventoryDocument)}')/to_PhysicalInventoryDocumentItem`;
        map<Encoding> queryParamEncoding = {"$orderby": {style: FORM, explode: false}, "$select": {style: FORM, explode: false}, "$expand": {style: FORM, explode: false}};
        resourcePath = resourcePath + check getPathForQueryParam(queries, queryParamEncoding);
        return self.clientEp->get(resourcePath, headers);
    }

    # Reads information on serial numbers for a specific physical inventory document item
    #
    # + FiscalYear - Fiscal Year
    # + PhysicalInventoryDocument - Physical Inventory Document
    # + PhysicalInventoryDocumentItem - Physical Inventory Item Number
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - Retrieved entities 
    remote isolated function listSerialNumberssOfA_PhysInventoryDocItem(string FiscalYear, string PhysicalInventoryDocument, string PhysicalInventoryDocumentItem, map<string|string[]> headers = {}, *ListSerialNumberssOfA_PhysInventoryDocItemQueries queries) returns CollectionOfA_SerialNumberPhysInventoryDocWrapper|error {
        string resourcePath = string `/A_PhysInventoryDocItem(FiscalYear='${getEncodedUri(FiscalYear)}',PhysicalInventoryDocument='${getEncodedUri(PhysicalInventoryDocument)}',PhysicalInventoryDocumentItem='${getEncodedUri(PhysicalInventoryDocumentItem)}')/to_SerialNumbers`;
        map<Encoding> queryParamEncoding = {"$orderby": {style: FORM, explode: false}, "$select": {style: FORM, explode: false}};
        resourcePath = resourcePath + check getPathForQueryParam(queries, queryParamEncoding);
        return self.clientEp->get(resourcePath, headers);
    }

    # Change a specific physical inventory document item
    #
    # + FiscalYear - Fiscal Year
    # + PhysicalInventoryDocument - Physical Inventory Document
    # + PhysicalInventoryDocumentItem - Physical Inventory Item Number
    # + headers - Headers to be sent with the request 
    # + payload - New property values 
    # + return - Success 
    remote isolated function patchA_PhysInventoryDocItem(string FiscalYear, string PhysicalInventoryDocument, string PhysicalInventoryDocumentItem, Modified\ A_PhysInventoryDocItemType payload, map<string|string[]> headers = {}) returns http:Response|error {
        string resourcePath = string `/A_PhysInventoryDocItem(FiscalYear='${getEncodedUri(FiscalYear)}',PhysicalInventoryDocument='${getEncodedUri(PhysicalInventoryDocument)}',PhysicalInventoryDocumentItem='${getEncodedUri(PhysicalInventoryDocumentItem)}')`;
        http:Request request = new;
        json jsonBody = payload.toJson();
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # Set a counted serial number for a specific physical inventory document item
    #
    # + Equipment - Equipment Number
    # + FiscalYear - Fiscal Year
    # + PhysicalInventoryDocument - Physical Inventory Document
    # + PhysicalInventoryDocumentItem - Line Number
    # + SerialNumberPhysicalInvtryType - Serial Number Physical Inventory Type
    # + headers - Headers to be sent with the request 
    # + payload - New property values 
    # + return - Success 
    remote isolated function patchA_SerialNumberPhysInventoryDoc(string Equipment, string FiscalYear, string PhysicalInventoryDocument, string PhysicalInventoryDocumentItem, string SerialNumberPhysicalInvtryType, Modified\ A_SerialNumberPhysInventoryDocType payload, map<string|string[]> headers = {}) returns http:Response|error {
        string resourcePath = string `/A_SerialNumberPhysInventoryDoc(Equipment='${getEncodedUri(Equipment)}',FiscalYear='${getEncodedUri(FiscalYear)}',PhysicalInventoryDocument='${getEncodedUri(PhysicalInventoryDocument)}',PhysicalInventoryDocumentItem='${getEncodedUri(PhysicalInventoryDocumentItem)}',SerialNumberPhysicalInvtryType='${getEncodedUri(SerialNumberPhysicalInvtryType)}')`;
        http:Request request = new;
        json jsonBody = payload.toJson();
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # Send a group of requests
    #
    # + headers - Headers to be sent with the request 
    # + request - Batch request 
    # + return - Batch response 
    remote isolated function performBatchOperation(http:Request request, map<string|string[]> headers = {}) returns http:Response|error {
        string resourcePath = string `/$batch`;
        // TODO: Update the request as needed;
        return self.clientEp->post(resourcePath, request, headers);
    }
}
