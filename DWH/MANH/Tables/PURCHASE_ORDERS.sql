﻿CREATE TABLE [MANH].[PURCHASE_ORDERS] (
    [PURCHASE_ORDERS_ID]             BIGINT          NOT NULL,
    [TC_COMPANY_ID]                  INT             NOT NULL,
    [BUSINESS_PARTNER_ID]            NVARCHAR (10)   NULL,
    [CREATION_TYPE]                  SMALLINT        NOT NULL,
    [PURCHASE_ORDERS_TYPE]           SMALLINT        NOT NULL,
    [PURCHASE_ORDERS_STATUS]         SMALLINT        NOT NULL,
    [TC_PURCHASE_ORDERS_ID]          NVARCHAR (50)   NOT NULL,
    [TC_PURCHASE_ORDERS_ID_U]        NVARCHAR (50)   NOT NULL,
    [PARENT_PURCHASE_ORDERS_ID]      BIGINT          NULL,
    [MO_AUTO_CREATE_METHOD]          SMALLINT        NOT NULL,
    [O_FACILITY_ID]                  INT             NULL,
    [O_FACILITY_ALIAS_ID]            NVARCHAR (16)   NULL,
    [O_DOCK_ID]                      NVARCHAR (8)    NULL,
    [O_NAME]                         NVARCHAR (50)   NULL,
    [O_ADDRESS_1]                    NVARCHAR (75)   NULL,
    [O_ADDRESS_2]                    NVARCHAR (75)   NULL,
    [O_ADDRESS_3]                    NVARCHAR (75)   NULL,
    [O_CITY]                         NVARCHAR (40)   NULL,
    [O_STATE_PROV]                   NVARCHAR (3)    NULL,
    [O_POSTAL_CODE]                  NVARCHAR (10)   NULL,
    [O_COUNTY]                       NVARCHAR (40)   NULL,
    [O_COUNTRY_CODE]                 NVARCHAR (2)    NULL,
    [D_FACILITY_ID]                  INT             NULL,
    [D_FACILITY_ALIAS_ID]            NVARCHAR (16)   NULL,
    [D_DOCK_ID]                      NVARCHAR (8)    NULL,
    [D_NAME]                         NVARCHAR (50)   NULL,
    [D_LAST_NAME]                    NVARCHAR (40)   NULL,
    [D_ADDRESS_1]                    NVARCHAR (75)   NULL,
    [D_ADDRESS_2]                    NVARCHAR (75)   NULL,
    [D_ADDRESS_3]                    NVARCHAR (75)   NULL,
    [D_CITY]                         NVARCHAR (40)   NULL,
    [D_STATE_PROV]                   NVARCHAR (3)    NULL,
    [D_POSTAL_CODE]                  NVARCHAR (10)   NULL,
    [D_COUNTY]                       NVARCHAR (40)   NULL,
    [D_COUNTRY_CODE]                 NVARCHAR (2)    NULL,
    [D_PHONE_NUMBER]                 NVARCHAR (32)   NULL,
    [D_FAX_NUMBER]                   NVARCHAR (20)   NULL,
    [D_EMAIL]                        NVARCHAR (60)   NULL,
    [BILL_FACILITY_ID]               INT             NULL,
    [BILL_FACILITY_ALIAS_ID]         NVARCHAR (16)   NULL,
    [BILL_TO_WHSE]                   NVARCHAR (3)    NULL,
    [BILL_TO_NAME]                   NVARCHAR (40)   NULL,
    [BILL_TO_LAST_NAME]              NVARCHAR (40)   NULL,
    [BILL_TO_ADDRESS_1]              NVARCHAR (78)   NULL,
    [BILL_TO_ADDRESS_2]              NVARCHAR (75)   NULL,
    [BILL_TO_ADDRESS_3]              NVARCHAR (75)   NULL,
    [BILL_TO_CITY]                   NVARCHAR (40)   NULL,
    [BILL_TO_STATE_PROV]             NVARCHAR (3)    NULL,
    [BILL_TO_COUNTY]                 NVARCHAR (40)   NULL,
    [BILL_TO_POSTAL_CODE]            NVARCHAR (10)   NULL,
    [BILL_TO_COUNTRY_CODE]           NVARCHAR (2)    NULL,
    [BILL_TO_PHONE_NUMBER]           NVARCHAR (32)   NULL,
    [BILL_TO_FAX_NUMBER]             NVARCHAR (20)   NULL,
    [BILL_TO_EMAIL]                  NVARCHAR (60)   NULL,
    [BILL_ACCOUNT_NBR]               NVARCHAR (10)   NULL,
    [ORG_SHIP_VIA_FACILITY_ALIAS_ID] NVARCHAR (16)   NULL,
    [ORG_SHIP_VIA_FACILITY_ID]       INT             NULL,
    [DES_SHIP_VIA_FACILITY_ALIAS_ID] NVARCHAR (16)   NULL,
    [DES_SHIP_VIA_FACILITY_ID]       INT             NULL,
    [PICKUP_TZ]                      SMALLINT        NOT NULL,
    [DELIVERY_TZ]                    SMALLINT        NOT NULL,
    [PICKUP_START_DTTM]              DATETIME2 (7)   NULL,
    [PICKUP_END_DTTM]                DATETIME2 (7)   NULL,
    [DELIVERY_START_DTTM]            DATETIME2 (7)   NULL,
    [DELIVERY_END_DTTM]              DATETIME2 (7)   NULL,
    [REQUESTED_DLVR_DTTM]            DATETIME2 (7)   NULL,
    [MUST_DLVR_DTTM]                 DATETIME2 (7)   NULL,
    [PROMISED_DLVR_DTTM]             DATETIME2 (7)   NULL,
    [DUE_DT]                         DATETIME2 (7)   NULL,
    [CANCEL_DT]                      DATETIME2 (7)   NULL,
    [PURCHASE_ORDERS_DATE_DTTM]      DATETIME2 (7)   NULL,
    [RELEASE_DTTM]                   DATETIME2 (7)   NULL,
    [FIRST_RCPT_DTTM]                DATETIME2 (7)   NULL,
    [LAST_RCPT_DTTM]                 DATETIME2 (7)   NULL,
    [BILLING_METHOD]                 SMALLINT        NULL,
    [PAYMENT_MODE]                   SMALLINT        NULL,
    [MV_CURRENCY_CODE]               NVARCHAR (3)    NULL,
    [MONETARY_VALUE]                 NUMERIC (19, 4) NULL,
    [CURRENCY_CODE]                  NVARCHAR (3)    NOT NULL,
    [ORIG_BUDG_COST]                 NUMERIC (13, 4) NULL,
    [BUDG_COST_CURRENCY_CODE]        NVARCHAR (3)    NULL,
    [BUDG_COST]                      NUMERIC (13, 4) NULL,
    [TAX_CHARGES]                    NUMERIC (13, 4) NULL,
    [MISC_CHARGES]                   NUMERIC (13, 4) NULL,
    [INCOTERM_ID]                    BIGINT          NULL,
    [INCOTERM_FACILITY_ID]           INT             NULL,
    [INCOTERM_FACILITY_ALIAS_ID]     NVARCHAR (16)   NULL,
    [INCOTERM_LOC_AVA_DTTM]          DATETIME2 (7)   NULL,
    [INCOTERM_LOC_AVA_TIME_ZONE_ID]  SMALLINT        NULL,
    [IS_CANCELLED]                   SMALLINT        NOT NULL,
    [IS_IMPORTED]                    SMALLINT        NOT NULL,
    [UPDATE_SENT]                    SMALLINT        NOT NULL,
    [IS_HAZMAT]                      SMALLINT        NOT NULL,
    [IS_PERISHABLE]                  SMALLINT        NOT NULL,
    [IS_INFO_ONLY]                   SMALLINT        NOT NULL,
    [HAS_IMPORT_ERROR]               SMALLINT        NOT NULL,
    [HAS_SOFT_CHECK_ERRORS]          SMALLINT        NOT NULL,
    [HAS_NOTES]                      SMALLINT        NOT NULL,
    [HAS_ALERTS]                     SMALLINT        NOT NULL,
    [IS_PURCHASE_ORDERS_RECONCILED]  SMALLINT        NOT NULL,
    [DELIVERY_REQ]                   NVARCHAR (3)    NOT NULL,
    [IS_ACCEPTANCE_REQUIRED]         SMALLINT        NOT NULL,
    [ARE_LEGAL_TERMS_REQUIRED]       SMALLINT        NOT NULL,
    [IS_READY_TO_SHIP]               SMALLINT        NULL,
    [IS_CUSTOMER_PICKUP]             SMALLINT        NOT NULL,
    [IS_DIRECT_ALLOWED]              SMALLINT        NOT NULL,
    [IS_PARTIALLY_PLANNED]           SMALLINT        NOT NULL,
    [IS_PL_MANUALLY_SET]             SMALLINT        NOT NULL,
    [IS_LOCKED]                      SMALLINT        NOT NULL,
    [IS_PURCHASE_ORDERS_CONFIRMED]   SMALLINT        NOT NULL,
    [HAS_ROUTING_REQUEST]            SMALLINT        NOT NULL,
    [HAS_EM_NOTIFY_FLAG]             SMALLINT        NOT NULL,
    [IS_PUTAWAY]                     SMALLINT        NULL,
    [ALLOW_PARTIAL_SHIPPING]         SMALLINT        NOT NULL,
    [ALLOW_ZONE_SKIPPING]            SMALLINT        NOT NULL,
    [SNGL_UNIT_FLAG]                 SMALLINT        NOT NULL,
    [PRE_PACK_FLAG]                  SMALLINT        NOT NULL,
    [PNH_FLAG]                       SMALLINT        NOT NULL,
    [ON_HOLD]                        SMALLINT        NOT NULL,
    [QUAL_CHK_HOLD_UPON_RCPT]        NVARCHAR (1)    NULL,
    [UN_NUMBER_ID]                   BIGINT          NULL,
    [BILL_OF_LADING_NUMBER]          NVARCHAR (30)   NULL,
    [TRANS_RESP_CODE]                NVARCHAR (3)    NULL,
    [PRIORITY_TYPE]                  SMALLINT        NULL,
    [PURCHASE_ORDERS_WEIGHT]         NUMERIC (13, 4) NULL,
    [PRO_NUMBER]                     NVARCHAR (30)   NULL,
    [PRIORITY]                       SMALLINT        NULL,
    [EVENT_IND_TYPEID]               BIGINT          NOT NULL,
    [COMMODITY_CODE_ID]              BIGINT          NULL,
    [CARRIER_ID]                     BIGINT          NULL,
    [PRODUCT_CLASS_ID]               INT             NULL,
    [PROTECTION_LEVEL_ID]            INT             NULL,
    [DSG_CARRIER_ID]                 BIGINT          NULL,
    [DSG_MOT_ID]                     BIGINT          NULL,
    [DSG_SERVICE_LEVEL_ID]           BIGINT          NULL,
    [DECLINE_REASON_ID]              INT             NULL,
    [CHANNEL_TYPE]                   SMALLINT        NULL,
    [PRIMARY_CONTACT_NUMBER]         NVARCHAR (32)   NULL,
    [MERCHANDIZING_DEPARTMENT_ID]    BIGINT          NULL,
    [BUYER_CODE]                     NVARCHAR (3)    NULL,
    [REP_NAME]                       NVARCHAR (30)   NULL,
    [REGION_ID]                      INT             NULL,
    [INBOUND_REGION_ID]              INT             NULL,
    [OUTBOUND_REGION_ID]             INT             NULL,
    [PLAN_SHPMT_NBR]                 NVARCHAR (20)   NULL,
    [MISC_INSTR_CODE_1]              NVARCHAR (2)    NULL,
    [MISC_INSTR_CODE_2]              NVARCHAR (2)    NULL,
    [ASN_SHPMT_TYPE]                 NVARCHAR (4)    NULL,
    [PROD_SCHED_REF_NUMBER]          NVARCHAR (32)   NULL,
    [DELAY_TYPE]                     SMALLINT        NULL,
    [CUSTOMER_CODE]                  NVARCHAR (60)   NULL,
    [CUSTOMER_FIRSTNAME]             NVARCHAR (40)   NULL,
    [CUSTOMER_LASTNAME]              NVARCHAR (40)   NULL,
    [CUSTOMER_ID]                    BIGINT          NULL,
    [EST_OUTBD_LPN]                  BIGINT          NULL,
    [EST_PALLET_BRIDGED]             BIGINT          NULL,
    [MAJOR_PKT_GRP_ATTR]             NVARCHAR (50)   NULL,
    [MARK_FOR]                       NVARCHAR (25)   NULL,
    [ONHOLD_EVENT_ID]                BIGINT          NULL,
    [UNHOLD_EVENT_ID]                BIGINT          NULL,
    [OUTBD_LPN_EPC_TYPE]             SMALLINT        NULL,
    [PACK_SLIP_PRT_CNT]              SMALLINT        NULL,
    [PKT_CONSOL_PROF]                NVARCHAR (3)    NULL,
    [PKT_PROFILE_ID]                 NVARCHAR (10)   NULL,
    [PLT_CONTNT_LABEL_TYPE]          NVARCHAR (9)    NULL,
    [PLT_CUBNG_INDIC]                SMALLINT        NULL,
    [PRE_STIKR_CODE]                 NVARCHAR (15)   NULL,
    [SHIP_GROUP_ID]                  SMALLINT        NULL,
    [STORE_NBR]                      NVARCHAR (10)   NULL,
    [STORE_TYPE]                     NVARCHAR (3)    NULL,
    [SWC_NBR_SEQ]                    INT             NULL,
    [CREATED_SOURCE_TYPE]            SMALLINT        NOT NULL,
    [CREATED_SOURCE]                 NVARCHAR (25)   NULL,
    [CREATED_DTTM]                   DATETIME2 (7)   NOT NULL,
    [LAST_UPDATED_SOURCE_TYPE]       SMALLINT        NOT NULL,
    [LAST_UPDATED_SOURCE]            NVARCHAR (25)   NULL,
    [LAST_UPDATED_DTTM]              DATETIME2 (7)   NOT NULL,
    [BATCH_ID]                       BIGINT          NULL,
    [DROPOFF_PICKUP]                 NVARCHAR (5)    NULL,
    [IS_CLOSED]                      SMALLINT        NOT NULL,
    [MFG_PLNT]                       NVARCHAR (3)    NULL,
    [ORG_SHIP_FACILITY_ID]           INT             NULL,
    [OUTBD_LPN_ASN_REQD]             SMALLINT        NOT NULL,
    [OUTBD_LPN_CUBNG_INDIC]          SMALLINT        NULL,
    [OUTBD_LPN_LABEL_TYPE]           NVARCHAR (3)    NULL,
    [PACKAGING]                      NVARCHAR (15)   NULL,
    [RTN_MISC_NBR]                   NVARCHAR (20)   NULL,
    [COMMIMTED_DLVR_DTTM]            DATETIME2 (7)   NULL,
    [GRAND_TOTAL]                    NUMERIC (13, 4) NULL,
    [DSG_CARRIER_CODE]               NVARCHAR (8)    NULL,
    [TOTAL_DLRS_DISC]                NUMERIC (19, 4) NULL,
    [FRT_CLASS]                      NVARCHAR (5)    NULL,
    [PLAN_ID]                        NVARCHAR (11)   NULL,
    [WORK_ORD_NBR]                   NVARCHAR (12)   NULL,
    [MANUFACTURING_ORDER_NBR]        NVARCHAR (12)   NULL,
    [DC_ORDER_NUMBER]                NVARCHAR (10)   NULL,
    [CUT_NBR]                        NVARCHAR (12)   NULL,
    [EXT_PURCHASE_ORDERS_ID]         NVARCHAR (50)   NULL,
    [HIBERNATE_VERSION]              BIGINT          NULL,
    [ORDER_CATEGORY]                 SMALLINT        NULL,
    [DELIVERY_CHANNEL_ID]            SMALLINT        NULL,
    [D_CONTACT_NAME]                 NVARCHAR (50)   NULL,
    [BILL_TO_CONTACT_NAME]           NVARCHAR (50)   NULL,
    [CHANNEL_ID]                     BIGINT          NULL,
    [DEPARTMENT_ID]                  INT             NULL,
    [DOM_STORE_TYPE]                 BIGINT          NULL,
    [FULFILL_MODE]                   SMALLINT        NULL,
    [CONS_RUN_ID]                    BIGINT          NULL,
    [LAST_RUN_ID]                    BIGINT          NULL,
    [ACCEPTED_DTTM]                  DATETIME2 (7)   NULL,
    [IS_DO_CREATED]                  SMALLINT        NOT NULL,
    [WEIGHT_UOM_ID_BASE]             INT             NULL,
    [ENTERED_BY]                     NVARCHAR (40)   NULL,
    [ENTRY_TYPE]                     NVARCHAR (40)   NULL,
    [ENTRY_CODE]                     NVARCHAR (40)   NULL,
    [CUSTOMER_USER_ID]               NVARCHAR (40)   NULL,
    [CUSTOMER_EMAIL]                 NVARCHAR (60)   NULL,
    [CUSTOMER_PHONE]                 NVARCHAR (32)   NULL,
    [CUSTOMER_TYPE]                  NVARCHAR (20)   NULL,
    [PAYMENT_STATUS]                 SMALLINT        NULL,
    [REASON_ID]                      INT             NULL,
    [ADDR_VALID]                     NVARCHAR (1)    NULL,
    [ORG_APPT_EXISTS]                SMALLINT        NOT NULL,
    [DEST_APPT_EXISTS]               SMALLINT        NOT NULL,
    [MINIMIZE_SHIPMENTS]             SMALLINT        NULL,
    [ORDER_RECEIVED]                 SMALLINT        NOT NULL,
    [REF_FIELD_1]                    NVARCHAR (25)   NULL,
    [REF_FIELD_2]                    NVARCHAR (25)   NULL,
    [REF_FIELD_3]                    NVARCHAR (25)   NULL,
    [Eff_Date]                       DATE            NOT NULL,
    [End_Date]                       DATE            NULL,
    [ActInd]                         CHAR (1)        NULL,
    [IsDeleted]                      CHAR (1)        NULL,
    [BatchID]                        BIGINT          NULL,
    [ProcessLogID]                   BIGINT          NULL,
    [BOL_TYPE]                       NVARCHAR (4)    NULL,
    [COMPLETED_EXTERNALLY]           INT             NULL,
    [CONTNT_LABEL_TYPE]              NVARCHAR (3)    NULL,
    [DIRECTION]                      CHAR (1)        NULL,
    [DSG_VOYAGE_FLIGHT]              NVARCHAR (50)   NULL,
    [ENTRY_CODE_FACILITY_ID]         INT             NULL,
    [FREIGHT_REVENUE]                NUMERIC (13, 4) NULL,
    [FREIGHT_REVENUE_CURRENCY_CODE]  NVARCHAR (3)    NULL,
    [LPN_LABEL_TYPE]                 NVARCHAR (3)    NULL,
    [MANIF_TYPE]                     NVARCHAR (30)   NULL,
    [NBR_OF_CONTNT_LABEL]            INT             NULL,
    [NBR_OF_LABEL]                   INT             NULL,
    [NBR_OF_PAKNG_SLIPS]             INT             NULL,
    [ORDER_CONFIRMATION_DATE]        DATETIME2 (7)   NULL,
    [O_EMAIL]                        NVARCHAR (256)  NULL,
    [O_FAX_NUMBER]                   NVARCHAR (30)   NULL,
    [O_PHONE_NUMBER]                 NVARCHAR (32)   NULL,
    [PACK_SLIP_TYPE]                 NVARCHAR (2)    NULL,
    [PALLET_CONTENT_LABEL_TYPE]      NVARCHAR (9)    NULL,
    [PRINT_CANADIAN_CUST_INVC_FLAG]  NVARCHAR (1)    NULL,
    [PRINT_COO]                      NVARCHAR (1)    NULL,
    [PRINT_DOCK_RCPT_FLAG]           NVARCHAR (1)    NULL,
    [PRINT_INV]                      NVARCHAR (1)    NULL,
    [PRINT_NAFTA_COO_FLAG]           NVARCHAR (1)    NULL,
    [PRINT_OCEAN_BOL_FLAG]           NVARCHAR (1)    NULL,
    [PRINT_PKG_LIST_FLAG]            NVARCHAR (1)    NULL,
    [PRINT_SED]                      NVARCHAR (1)    NULL,
    [PRINT_SHPR_LTR_OF_INSTR_FLAG]   NVARCHAR (1)    NULL,
    [REASON_CODES_GROUP_ID]          INT             NULL,
    [RETURN_REFERENCE_NUMBER]        NVARCHAR (50)   NULL,
    [RMA_STATUS]                     INT             NULL,
    [SHIPPING_CHANNEL]               NVARCHAR (15)   NULL,
    [TAX_ID]                         NVARCHAR (20)   NULL,
    [TRANS_PLAN_DIRECTION]           NVARCHAR (1)    NULL,
    CONSTRAINT [PK_MANH_PURCHASE_ORDERS] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [PURCHASE_ORDERS_ID] ASC) ON [DWH_MANH]
) ON [DWH_MANH];



