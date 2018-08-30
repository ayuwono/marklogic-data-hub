xquery version "1.0-ml";

import module namespace sec="http://marklogic.com/xdmp/security"
at "/MarkLogic/security.xqy";

declare variable $modules-db-name := xdmp:database("data-hub-staging-MODULES");

declare function local:check-then-remove-amp($namespace, $local-name, $document-uri, $database-name) {
  if(sec:amp-exists($namespace, $local-name, $document-uri, $database-name)) then (
    sec:remove-amp($namespace, $local-name, $document-uri, $database-name)
  ) else ()
};

local:check-then-remove-amp("", "addResponseHeader", "/data-hub/4/rest-api/lib/endpoint-util.sjs", $modules-db-name),
local:check-then-remove-amp("http://marklogic.com/rest-api/lib/db-util", "access-config", "/data-hub/4/rest-api/lib/db-util.xqy", $modules-db-name),
local:check-then-remove-amp("http://marklogic.com/rest-api/lib/db-util", "update-config", "/data-hub/4/rest-api/lib/db-util.xqy", $modules-db-name),
local:check-then-remove-amp("http://marklogic.com/rest-api/lib/db-util", "rest-modules-database", "/data-hub/4/rest-api/lib/db-util.xqy", $modules-db-name),
local:check-then-remove-amp("http://marklogic.com/rest-api/lib/db-util", "do-set-transaction-time-limit", "/data-hub/4/rest-api/lib/db-util.xqy", $modules-db-name),
local:check-then-remove-amp("http://marklogic.com/rest-api/lib/endpoint-util", "add-cookie", "/data-hub/4/rest-api/lib/endpoint-util.xqy", $modules-db-name),
local:check-then-remove-amp("http://marklogic.com/rest-api/lib/endpoint-util", "add-response-header", "/data-hub/4/rest-api/lib/endpoint-util.xqy", $modules-db-name),
local:check-then-remove-amp("http://marklogic.com/rest-api/lib/endpoint-util", "default-page-with-transform", "/data-hub/4/rest-api/lib/endpoint-util.xqy", $modules-db-name),
local:check-then-remove-amp("http://marklogic.com/rest-api/lib/endpoint-util", "delete-cookie", "/data-hub/4/rest-api/lib/endpoint-util.xqy", $modules-db-name),
local:check-then-remove-amp("http://marklogic.com/rest-api/lib/endpoint-util", "get-mimetypes", "/data-hub/4/rest-api/lib/endpoint-util.xqy", $modules-db-name),
local:check-then-remove-amp("http://marklogic.com/rest-api/lib/endpoint-util", "get-server-field", "/data-hub/4/rest-api/lib/endpoint-util.xqy", $modules-db-name),
local:check-then-remove-amp("http://marklogic.com/rest-api/lib/endpoint-util", "invoke-module", "/data-hub/4/rest-api/lib/endpoint-util.xqy", $modules-db-name),
local:check-then-remove-amp("http://marklogic.com/rest-api/lib/endpoint-util", "set-server-field", "/data-hub/4/rest-api/lib/endpoint-util.xqy", $modules-db-name),
local:check-then-remove-amp("http://marklogic.com/rest-api/lib/endpoint-util", "xslt-invoke", "/data-hub/4/rest-api/lib/endpoint-util.xqy", $modules-db-name),
local:check-then-remove-amp("http://marklogic.com/rest-api/lib/endpoint-util", "lookup-role-ids", "/data-hub/4/rest-api/lib/endpoint-util.xqy", $modules-db-name),
local:check-then-remove-amp("http://marklogic.com/rest-api/models/document-model-common", "read-collections", "/data-hub/4/rest-api/models/document-model-common.xqy", $modules-db-name),
local:check-then-remove-amp("http://marklogic.com/rest-api/models/document-model-common", "read-permissions", "/data-hub/4/rest-api/models/document-model-common.xqy", $modules-db-name),
local:check-then-remove-amp("http://marklogic.com/rest-api/models/document-model-common", "read-properties", "/data-hub/4/rest-api/models/document-model-common.xqy", $modules-db-name),
local:check-then-remove-amp("http://marklogic.com/rest-api/models/document-model-common", "read-quality", "/data-hub/4/rest-api/models/document-model-common.xqy", $modules-db-name),
local:check-then-remove-amp("http://marklogic.com/rest-api/models/document-model-common", "lookup-role-names", "/data-hub/4/rest-api/models/document-model-common.xqy", $modules-db-name),
local:check-then-remove-amp("http://marklogic.com/rest-api/models/document-model-query", "get", "/data-hub/4/rest-api/models/document-model-query.xqy", $modules-db-name),
local:check-then-remove-amp("http://marklogic.com/rest-api/models/document-model-query-get", "get", "/data-hub/4/rest-api/models/document-model-query-get.xqy", $modules-db-name),
local:check-then-remove-amp("http://marklogic.com/rest-api/models/document-model-query-head", "head", "/data-hub/4/rest-api/models/document-model-query-head.xqy", $modules-db-name),
local:check-then-remove-amp("http://marklogic.com/rest-api/models/document-model-query", "read-content", "/data-hub/4/rest-api/models/document-model-query.xqy", $modules-db-name),
local:check-then-remove-amp("http://marklogic.com/rest-api/models/document-model-query", "check-document-exists", "/data-hub/4/rest-api/models/document-model-query.xqy", $modules-db-name),
local:check-then-remove-amp("http://marklogic.com/rest-api/models/document-model-update", "put", "/data-hub/4/rest-api/models/document-model-update.xqy", $modules-db-name),
local:check-then-remove-amp("http://marklogic.com/rest-api/models/document-model-update-put", "put", "/data-hub/4/rest-api/models/document-model-update-put.xqy", $modules-db-name),
local:check-then-remove-amp("http://marklogic.com/rest-api/models/document-model-update-delete", "delete", "/data-hub/4/rest-api/models/document-model-update-delete.xqy", $modules-db-name),
local:check-then-remove-amp("http://marklogic.com/rest-api/models/document-model-update", "patch", "/data-hub/4/rest-api/models/document-model-update.xqy", $modules-db-name),
local:check-then-remove-amp("http://marklogic.com/rest-api/models/document-model-update", "delete", "/data-hub/4/rest-api/models/document-model-update.xqy", $modules-db-name),
local:check-then-remove-amp("http://marklogic.com/rest-api/models/document-model-update", "apply-content-patch", "/data-hub/4/rest-api/models/document-model-update.xqy", $modules-db-name),
local:check-then-remove-amp("http://marklogic.com/rest-api/models/document-model-update", "apply-metadata-patch", "/data-hub/4/rest-api/models/document-model-update.xqy", $modules-db-name),
local:check-then-remove-amp("http://marklogic.com/rest-api/models/document-model-update", "delete-document", "/data-hub/4/rest-api/models/document-model-update.xqy", $modules-db-name),
local:check-then-remove-amp("http://marklogic.com/rest-api/models/document-model-update", "write-content", "/data-hub/4/rest-api/models/document-model-update.xqy", $modules-db-name),
local:check-then-remove-amp("http://marklogic.com/rest-api/models/document-model-update", "load-content", "/data-hub/4/rest-api/models/document-model-update.xqy", $modules-db-name),
local:check-then-remove-amp("http://marklogic.com/rest-api/models/document-model-update", "write-collections", "/data-hub/4/rest-api/models/document-model-update.xqy", $modules-db-name),
local:check-then-remove-amp("http://marklogic.com/rest-api/models/document-model-update", "write-permissions", "/data-hub/4/rest-api/models/document-model-update.xqy", $modules-db-name),
local:check-then-remove-amp("http://marklogic.com/rest-api/models/document-model-update", "write-properties", "/data-hub/4/rest-api/models/document-model-update.xqy", $modules-db-name),
local:check-then-remove-amp("http://marklogic.com/rest-api/models/document-model-update", "write-quality", "/data-hub/4/rest-api/models/document-model-update.xqy", $modules-db-name),
local:check-then-remove-amp("http://marklogic.com/rest-api/models/document-model-update", "replace-role-permissions", "/data-hub/4/rest-api/models/document-model-update.xqy", $modules-db-name),
local:check-then-remove-amp("http://marklogic.com/rest-api/models/document-model-update", "replace-named-properties", "/data-hub/4/rest-api/models/document-model-update.xqy", $modules-db-name),
local:check-then-remove-amp("http://marklogic.com/rest-api/models/document-model-update", "remove-collections", "/data-hub/4/rest-api/models/document-model-update.xqy", $modules-db-name),
local:check-then-remove-amp("http://marklogic.com/rest-api/models/document-model-update", "reset-permissions", "/data-hub/4/rest-api/models/document-model-update.xqy", $modules-db-name),
local:check-then-remove-amp("http://marklogic.com/rest-api/models/document-model-update", "remove-properties", "/data-hub/4/rest-api/models/document-model-update.xqy", $modules-db-name),
local:check-then-remove-amp("http://marklogic.com/rest-api/models/document-model-update", "reset-quality", "/data-hub/4/rest-api/models/document-model-update.xqy", $modules-db-name),
local:check-then-remove-amp("http://marklogic.com/rest-api/models/document-model-update", "cpf-config", "/data-hub/4/rest-api/models/document-model-update.xqy", $modules-db-name),

local:check-then-remove-amp("http://marklogic.com/rest-api/models/config-query", "put", "/MarkLogic/rest-api/models/config-query-model.xqy", $modules-db-name),
local:check-then-remove-amp("http://marklogic.com/rest-api/models/config-query", "post", "/MarkLogic/rest-api/models/config-query-model.xqy", $modules-db-name),
local:check-then-remove-amp("http://marklogic.com/rest-api/models/config-query", "put-child", "/MarkLogic/rest-api/models/config-query-model.xqy", $modules-db-name),
local:check-then-remove-amp("http://marklogic.com/rest-api/models/config-query", "post-child", "/MarkLogic/rest-api/models/config-query-model.xqy", $modules-db-name),
local:check-then-remove-amp("http://marklogic.com/rest-api/models/config-query", "get", "/MarkLogic/rest-api/models/config-query-model.xqy", $modules-db-name),
local:check-then-remove-amp("http://marklogic.com/rest-api/models/config-query", "get-child", "/MarkLogic/rest-api/models/config-query-model.xqy", $modules-db-name),
local:check-then-remove-amp("http://marklogic.com/rest-api/models/config-query", "get-options", "/MarkLogic/rest-api/models/config-query-model.xqy", $modules-db-name),
local:check-then-remove-amp("http://marklogic.com/rest-api/lib/search-util", "search-to-json", "/MarkLogic/rest-api/lib/search-util.xqy", $modules-db-name),
local:check-then-remove-amp("http://marklogic.com/rest-api/lib/search-util", "search-from-json", "/MarkLogic/rest-api/lib/search-util.xqy", $modules-db-name),

local:check-then-remove-amp("http://marklogic.com/rest-api/forestinfo", "get-forest-info", "/data-hub/4/rest-api/models/forest-info-model.xqy", $modules-db-name),
local:check-then-remove-amp("http://marklogic.com/rest-api/models/search-model-update", "delete", "/data-hub/4/rest-api/models/search-model-update.xqy", $modules-db-name),
local:check-then-remove-amp("http://marklogic.com/rest-api/models/search-model-update", "clear", "/data-hub/4/rest-api/models/search-model-update.xqy", $modules-db-name),
local:check-then-remove-amp("http://marklogic.com/rest-api/lib/extensions-util", "do-directory-delete", "/data-hub/4/rest-api/lib/extensions-util.xqy", $modules-db-name),
local:check-then-remove-amp("http://marklogic.com/rest-api/lib/extensions-util", "do-document-delete", "/data-hub/4/rest-api/lib/extensions-util.xqy", $modules-db-name),
local:check-then-remove-amp("http://marklogic.com/rest-api/lib/extensions-util", "do-document-insert", "/data-hub/4/rest-api/lib/extensions-util.xqy", $modules-db-name),
local:check-then-remove-amp("http://marklogic.com/rest-api/lib/extensions-util", "do-eval", "/data-hub/4/rest-api/lib/extensions-util.xqy", $modules-db-name),
local:check-then-remove-amp("http://marklogic.com/rest-api/lib/extensions-util", "do-js-eval", "/data-hub/4/rest-api/lib/extensions-util.xqy", $modules-db-name),
local:check-then-remove-amp("http://marklogic.com/rest-api/lib/extensions-util", "do-list-extension-metadata", "/data-hub/4/rest-api/lib/extensions-util.xqy", $modules-db-name),
local:check-then-remove-amp("http://marklogic.com/rest-api/lib/extensions-util", "execute-transform", "/data-hub/4/rest-api/lib/extensions-util.xqy", $modules-db-name),
local:check-then-remove-amp("http://marklogic.com/rest-api/lib/extensions-util", "invoke-service", "/data-hub/4/rest-api/lib/extensions-util.xqy", $modules-db-name)
