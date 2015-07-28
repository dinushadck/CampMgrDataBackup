--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: CSDB_Actions; Type: TABLE; Schema: public; Owner: duo; Tablespace: 
--

CREATE TABLE "CSDB_Actions" (
    id integer NOT NULL,
    "Name" character varying(255),
    "Action" character varying(255),
    "OnEvent" character varying(255),
    "Data" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "CSDBAutoAttendantId" integer,
    "ActionsId" integer
);


ALTER TABLE public."CSDB_Actions" OWNER TO duo;

--
-- Name: CSDB_Actions_id_seq; Type: SEQUENCE; Schema: public; Owner: duo
--

CREATE SEQUENCE "CSDB_Actions_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."CSDB_Actions_id_seq" OWNER TO duo;

--
-- Name: CSDB_Actions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: duo
--

ALTER SEQUENCE "CSDB_Actions_id_seq" OWNED BY "CSDB_Actions".id;


--
-- Name: CSDB_AppDevelopers; Type: TABLE; Schema: public; Owner: duo; Tablespace: 
--

CREATE TABLE "CSDB_AppDevelopers" (
    id integer NOT NULL,
    "Username" character varying(255),
    "Password" character varying(255),
    "Email" character varying(255),
    "Phone" character varying(255),
    "CompanyId" integer,
    "TenantId" integer,
    "ObjClass" character varying(255),
    "ObjType" character varying(255),
    "ObjCategory" character varying(255),
    "RegDate" character varying(255),
    "RefId" integer,
    "Availability" boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."CSDB_AppDevelopers" OWNER TO duo;

--
-- Name: CSDB_AppDevelopers_id_seq; Type: SEQUENCE; Schema: public; Owner: duo
--

CREATE SEQUENCE "CSDB_AppDevelopers_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."CSDB_AppDevelopers_id_seq" OWNER TO duo;

--
-- Name: CSDB_AppDevelopers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: duo
--

ALTER SEQUENCE "CSDB_AppDevelopers_id_seq" OWNED BY "CSDB_AppDevelopers".id;


--
-- Name: CSDB_Applications; Type: TABLE; Schema: public; Owner: duo; Tablespace: 
--

CREATE TABLE "CSDB_Applications" (
    id integer NOT NULL,
    "AppName" character varying(255),
    "Description" character varying(255),
    "Url" character varying(255),
    "ObjClass" character varying(255),
    "ObjType" character varying(255),
    "ObjCategory" character varying(255),
    "CompanyId" integer,
    "TenantId" integer,
    "Availability" boolean,
    "OtherData" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "MasterApplicationId" integer,
    "AppDeveloperId" integer
);


ALTER TABLE public."CSDB_Applications" OWNER TO duo;

--
-- Name: CSDB_Applications_id_seq; Type: SEQUENCE; Schema: public; Owner: duo
--

CREATE SEQUENCE "CSDB_Applications_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."CSDB_Applications_id_seq" OWNER TO duo;

--
-- Name: CSDB_Applications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: duo
--

ALTER SEQUENCE "CSDB_Applications_id_seq" OWNED BY "CSDB_Applications".id;


--
-- Name: CSDB_Appointments; Type: TABLE; Schema: public; Owner: duo; Tablespace: 
--

CREATE TABLE "CSDB_Appointments" (
    id integer NOT NULL,
    "AppointmentName" character varying(255),
    "Action" character varying(255),
    "ExtraData" character varying(255),
    "StartDate" character varying(255),
    "EndDate" character varying(255),
    "StartTime" timestamp with time zone,
    "EndTime" timestamp with time zone,
    "DaysOfWeek" character varying(255),
    "ObjClass" character varying(255),
    "ObjType" character varying(255),
    "ObjCategory" character varying(255),
    "CompanyId" integer,
    "TenantId" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "ScheduleId" integer
);


ALTER TABLE public."CSDB_Appointments" OWNER TO duo;

--
-- Name: CSDB_Appointments_id_seq; Type: SEQUENCE; Schema: public; Owner: duo
--

CREATE SEQUENCE "CSDB_Appointments_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."CSDB_Appointments_id_seq" OWNER TO duo;

--
-- Name: CSDB_Appointments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: duo
--

ALTER SEQUENCE "CSDB_Appointments_id_seq" OWNED BY "CSDB_Appointments".id;


--
-- Name: CSDB_AttachedServices; Type: TABLE; Schema: public; Owner: duo; Tablespace: 
--

CREATE TABLE "CSDB_AttachedServices" (
    id integer NOT NULL,
    "AttServiceName" character varying(255),
    "Description" character varying(255),
    "ObjClass" character varying(255),
    "ObjType" character varying(255),
    "ObjCategory" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."CSDB_AttachedServices" OWNER TO duo;

--
-- Name: CSDB_AttachedServices_id_seq; Type: SEQUENCE; Schema: public; Owner: duo
--

CREATE SEQUENCE "CSDB_AttachedServices_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."CSDB_AttachedServices_id_seq" OWNER TO duo;

--
-- Name: CSDB_AttachedServices_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: duo
--

ALTER SEQUENCE "CSDB_AttachedServices_id_seq" OWNED BY "CSDB_AttachedServices".id;


--
-- Name: CSDB_AutoAttendants; Type: TABLE; Schema: public; Owner: duo; Tablespace: 
--

CREATE TABLE "CSDB_AutoAttendants" (
    id integer NOT NULL,
    "Name" character varying(255),
    "Code" character varying(255),
    "Extention" character varying(255),
    "DayGreeting" character varying(255),
    "NightGreeting" character varying(255),
    "InvalidDigitSound" character varying(255),
    "MenuSound" character varying(255),
    "Tries" integer,
    "TimeOut" integer,
    "EnableExtention" boolean,
    "ExtentionLength" integer,
    "Company" integer,
    "Tenant" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."CSDB_AutoAttendants" OWNER TO duo;

--
-- Name: CSDB_AutoAttendants_id_seq; Type: SEQUENCE; Schema: public; Owner: duo
--

CREATE SEQUENCE "CSDB_AutoAttendants_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."CSDB_AutoAttendants_id_seq" OWNER TO duo;

--
-- Name: CSDB_AutoAttendants_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: duo
--

ALTER SEQUENCE "CSDB_AutoAttendants_id_seq" OWNED BY "CSDB_AutoAttendants".id;


--
-- Name: CSDB_BaseAttachJunction; Type: TABLE; Schema: public; Owner: duo; Tablespace: 
--

CREATE TABLE "CSDB_BaseAttachJunction" (
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "CSDBAttachedServiceId" integer NOT NULL,
    "CSDBBaseServiceId" integer NOT NULL
);


ALTER TABLE public."CSDB_BaseAttachJunction" OWNER TO duo;

--
-- Name: CSDB_BaseExtendedJunction; Type: TABLE; Schema: public; Owner: duo; Tablespace: 
--

CREATE TABLE "CSDB_BaseExtendedJunction" (
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "CSDBExtendedServiceId" integer NOT NULL,
    "CSDBBaseServiceId" integer NOT NULL
);


ALTER TABLE public."CSDB_BaseExtendedJunction" OWNER TO duo;

--
-- Name: CSDB_BaseServices; Type: TABLE; Schema: public; Owner: duo; Tablespace: 
--

CREATE TABLE "CSDB_BaseServices" (
    id integer NOT NULL,
    "ServiceName" character varying(255),
    "Description" character varying(255),
    "ServiceVersion" character varying(255),
    "ServiceVersionStatus" character varying(255),
    "SourceUrl" character varying(255),
    "DockerUrl" character varying(255),
    "ObjClass" character varying(255),
    "ObjType" character varying(255),
    "ObjCategory" character varying(255),
    "CompanyId" integer,
    "TenantId" integer,
    "NoOfPorts" integer,
    "PortType" character varying(255),
    "ServiceProtocol" character varying(255),
    "Importance" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."CSDB_BaseServices" OWNER TO duo;

--
-- Name: CSDB_BaseServices_id_seq; Type: SEQUENCE; Schema: public; Owner: duo
--

CREATE SEQUENCE "CSDB_BaseServices_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."CSDB_BaseServices_id_seq" OWNER TO duo;

--
-- Name: CSDB_BaseServices_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: duo
--

ALTER SEQUENCE "CSDB_BaseServices_id_seq" OWNED BY "CSDB_BaseServices".id;


--
-- Name: CSDB_CallCDRs; Type: TABLE; Schema: public; Owner: duo; Tablespace: 
--

CREATE TABLE "CSDB_CallCDRs" (
    "Uuid" character varying(255) NOT NULL,
    "CallUuid" character varying(255),
    "BridgeUuid" character varying(255),
    "SipFromUser" character varying(255),
    "SipToUser" character varying(255),
    "HangupCause" character varying(255),
    "Direction" character varying(255),
    "SwitchName" character varying(255),
    "CallerContext" character varying(255),
    "IsAnswered" boolean,
    "CreatedTime" timestamp with time zone,
    "AnsweredTime" timestamp with time zone,
    "BridgedTime" timestamp with time zone,
    "HangupTime" timestamp with time zone,
    "Duration" integer,
    "BillSec" integer,
    "HoldSec" integer,
    "ProgressSec" integer,
    "AnswerSec" integer,
    "WaitSec" integer,
    "ProgressMediaSec" integer,
    "FlowBillSec" integer,
    "ObjClass" character varying(255),
    "ObjType" character varying(255),
    "ObjCategory" character varying(255),
    "AppId" integer,
    "CompanyId" integer,
    "TenantId" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."CSDB_CallCDRs" OWNER TO duo;

--
-- Name: CSDB_CallRules; Type: TABLE; Schema: public; Owner: duo; Tablespace: 
--

CREATE TABLE "CSDB_CallRules" (
    id integer NOT NULL,
    "CallRuleDescription" character varying(255),
    "ObjClass" character varying(255),
    "ObjType" character varying(255),
    "ObjCategory" character varying(255),
    "Enable" boolean,
    "CompanyId" integer,
    "TenantId" integer,
    "DNIS" character varying(255),
    "ANI" character varying(255),
    "DNISRegEx" character varying(255),
    "ANIRegEx" character varying(255),
    "RegExPattern" character varying(255),
    "ANIRegExPattern" character varying(255),
    "TrunkId" integer,
    "TrunkNumber" character varying(255),
    "ExtraData" character varying(255),
    "Priority" integer,
    "ContextRegEx" character varying(255),
    "Context" character varying(255),
    "Direction" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "ScheduleId" integer,
    "TranslationId" integer,
    "ANITranslationId" integer,
    "AppId" integer,
    "PhoneNumId" integer
);


ALTER TABLE public."CSDB_CallRules" OWNER TO duo;

--
-- Name: CSDB_CallRules_id_seq; Type: SEQUENCE; Schema: public; Owner: duo
--

CREATE SEQUENCE "CSDB_CallRules_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."CSDB_CallRules_id_seq" OWNER TO duo;

--
-- Name: CSDB_CallRules_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: duo
--

ALTER SEQUENCE "CSDB_CallRules_id_seq" OWNED BY "CSDB_CallRules".id;


--
-- Name: CSDB_CallServers; Type: TABLE; Schema: public; Owner: duo; Tablespace: 
--

CREATE TABLE "CSDB_CallServers" (
    id integer NOT NULL,
    "Name" character varying(255),
    "Activate" boolean,
    "Code" integer,
    "CompanyId" integer,
    "TenantId" integer,
    "Class" character varying(255),
    "Type" character varying(255),
    "Category" character varying(255),
    "InternalMainIP" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "ClusterId" integer
);


ALTER TABLE public."CSDB_CallServers" OWNER TO duo;

--
-- Name: CSDB_CallServers_id_seq; Type: SEQUENCE; Schema: public; Owner: duo
--

CREATE SEQUENCE "CSDB_CallServers_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."CSDB_CallServers_id_seq" OWNER TO duo;

--
-- Name: CSDB_CallServers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: duo
--

ALTER SEQUENCE "CSDB_CallServers_id_seq" OWNED BY "CSDB_CallServers".id;


--
-- Name: CSDB_CampaignPhones; Type: TABLE; Schema: public; Owner: duo; Tablespace: 
--

CREATE TABLE "CSDB_CampaignPhones" (
    id integer NOT NULL,
    "Phone" character varying(255),
    "CampaignId" character varying(255),
    "Enable" boolean,
    "Class" character varying(255),
    "Type" character varying(255),
    "Category" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."CSDB_CampaignPhones" OWNER TO duo;

--
-- Name: CSDB_CampaignPhones_id_seq; Type: SEQUENCE; Schema: public; Owner: duo
--

CREATE SEQUENCE "CSDB_CampaignPhones_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."CSDB_CampaignPhones_id_seq" OWNER TO duo;

--
-- Name: CSDB_CampaignPhones_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: duo
--

ALTER SEQUENCE "CSDB_CampaignPhones_id_seq" OWNED BY "CSDB_CampaignPhones".id;


--
-- Name: CSDB_Campaigns; Type: TABLE; Schema: public; Owner: duo; Tablespace: 
--

CREATE TABLE "CSDB_Campaigns" (
    id integer NOT NULL,
    "CampaignName" character varying(255),
    "CampaignNumber" character varying(255),
    "ConcurrentLimit" integer,
    "Max" integer,
    "Min" integer,
    "CompanyId" integer,
    "TenantId" integer,
    "Class" character varying(255),
    "Type" character varying(255),
    "Category" character varying(255),
    "StartTime" timestamp with time zone,
    "EndTime" timestamp with time zone,
    "Enable" boolean,
    "ScheduleId" character varying(255),
    "Limit" integer,
    "LastUpdate" character varying(255),
    "CSID" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."CSDB_Campaigns" OWNER TO duo;

--
-- Name: CSDB_Campaigns_id_seq; Type: SEQUENCE; Schema: public; Owner: duo
--

CREATE SEQUENCE "CSDB_Campaigns_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."CSDB_Campaigns_id_seq" OWNER TO duo;

--
-- Name: CSDB_Campaigns_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: duo
--

ALTER SEQUENCE "CSDB_Campaigns_id_seq" OWNED BY "CSDB_Campaigns".id;


--
-- Name: CSDB_CloudEndUsers; Type: TABLE; Schema: public; Owner: duo; Tablespace: 
--

CREATE TABLE "CSDB_CloudEndUsers" (
    id integer NOT NULL,
    "CompanyId" integer,
    "TenantId" integer,
    "Domain" character varying(255),
    "SIPConnectivityProvision" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "ClusterId" integer,
    "NetworkId" integer,
    "SipNetworkProfileId" integer
);


ALTER TABLE public."CSDB_CloudEndUsers" OWNER TO duo;

--
-- Name: CSDB_CloudEndUsers_id_seq; Type: SEQUENCE; Schema: public; Owner: duo
--

CREATE SEQUENCE "CSDB_CloudEndUsers_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."CSDB_CloudEndUsers_id_seq" OWNER TO duo;

--
-- Name: CSDB_CloudEndUsers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: duo
--

ALTER SEQUENCE "CSDB_CloudEndUsers_id_seq" OWNED BY "CSDB_CloudEndUsers".id;


--
-- Name: CSDB_Clusters; Type: TABLE; Schema: public; Owner: duo; Tablespace: 
--

CREATE TABLE "CSDB_Clusters" (
    id integer NOT NULL,
    "Name" character varying(255),
    "Activate" boolean,
    "Code" integer,
    "CompanyId" integer,
    "TenantId" integer,
    "CloudModel" integer,
    "Class" character varying(255),
    "Type" character varying(255),
    "Category" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "LoadBalancerId" integer,
    "ParentCloudId" integer
);


ALTER TABLE public."CSDB_Clusters" OWNER TO duo;

--
-- Name: CSDB_Clusters_id_seq; Type: SEQUENCE; Schema: public; Owner: duo
--

CREATE SEQUENCE "CSDB_Clusters_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."CSDB_Clusters_id_seq" OWNER TO duo;

--
-- Name: CSDB_Clusters_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: duo
--

ALTER SEQUENCE "CSDB_Clusters_id_seq" OWNED BY "CSDB_Clusters".id;


--
-- Name: CSDB_ConferenceUsers; Type: TABLE; Schema: public; Owner: duo; Tablespace: 
--

CREATE TABLE "CSDB_ConferenceUsers" (
    id integer NOT NULL,
    "ActiveTalker" boolean,
    "Def" boolean,
    "Mute" boolean,
    "Mod" boolean,
    "ObjClass" character varying(255),
    "ObjType" character varying(255),
    "ObjCategory" character varying(255),
    "CurrentDef" boolean,
    "CurrentMute" boolean,
    "CurrentMod" boolean,
    "Destination" character varying(255),
    "JoinType" character varying(255),
    "UserStatus" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "ConferenceId" character varying(255),
    "SipUACEndpointId" integer
);


ALTER TABLE public."CSDB_ConferenceUsers" OWNER TO duo;

--
-- Name: CSDB_ConferenceUsers_id_seq; Type: SEQUENCE; Schema: public; Owner: duo
--

CREATE SEQUENCE "CSDB_ConferenceUsers_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."CSDB_ConferenceUsers_id_seq" OWNER TO duo;

--
-- Name: CSDB_ConferenceUsers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: duo
--

ALTER SEQUENCE "CSDB_ConferenceUsers_id_seq" OWNED BY "CSDB_ConferenceUsers".id;


--
-- Name: CSDB_Conferences; Type: TABLE; Schema: public; Owner: duo; Tablespace: 
--

CREATE TABLE "CSDB_Conferences" (
    "ConferenceName" character varying(255) NOT NULL,
    "Description" character varying(255),
    "CompanyId" integer,
    "TenantId" integer,
    "ObjClass" character varying(255),
    "ObjType" character varying(255),
    "ObjCategory" character varying(255),
    "Pin" character varying(255),
    "AllowAnonymousUser" boolean,
    "StartTime" timestamp with time zone,
    "EndTime" timestamp with time zone,
    "Domain" character varying(255),
    "IsLocked" boolean,
    "MaxUser" integer,
    "CurrentUsers" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "CloudEndUserId" integer,
    "ExtensionId" integer
);


ALTER TABLE public."CSDB_Conferences" OWNER TO duo;

--
-- Name: CSDB_Contexts; Type: TABLE; Schema: public; Owner: duo; Tablespace: 
--

CREATE TABLE "CSDB_Contexts" (
    "Context" character varying(255) NOT NULL,
    "Description" character varying(255),
    "ContextCat" character varying(255),
    "CompanyId" integer,
    "TenantId" integer,
    "ObjClass" character varying(255),
    "ObjType" character varying(255),
    "ObjCategory" character varying(255),
    "AddUser" character varying(255),
    "UpdateUser" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."CSDB_Contexts" OWNER TO duo;

--
-- Name: CSDB_DVPEvents; Type: TABLE; Schema: public; Owner: duo; Tablespace: 
--

CREATE TABLE "CSDB_DVPEvents" (
    id integer NOT NULL,
    "SessionId" character varying(255),
    "EventName" character varying(255),
    "CompanyId" integer,
    "TenantId" integer,
    "EventClass" character varying(255),
    "EventType" character varying(255),
    "EventCategory" character varying(255),
    "EventTime" timestamp with time zone,
    "EventData" character varying(255),
    "EventParams" character varying(10000),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."CSDB_DVPEvents" OWNER TO duo;

--
-- Name: CSDB_DVPEvents_id_seq; Type: SEQUENCE; Schema: public; Owner: duo
--

CREATE SEQUENCE "CSDB_DVPEvents_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."CSDB_DVPEvents_id_seq" OWNER TO duo;

--
-- Name: CSDB_DVPEvents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: duo
--

ALTER SEQUENCE "CSDB_DVPEvents_id_seq" OWNED BY "CSDB_DVPEvents".id;


--
-- Name: CSDB_DialedCampaignPhones; Type: TABLE; Schema: public; Owner: duo; Tablespace: 
--

CREATE TABLE "CSDB_DialedCampaignPhones" (
    id integer NOT NULL,
    "Phone" character varying(255),
    "CampaignId" integer,
    "DisconnectReason" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."CSDB_DialedCampaignPhones" OWNER TO duo;

--
-- Name: CSDB_DialedCampaignPhones_id_seq; Type: SEQUENCE; Schema: public; Owner: duo
--

CREATE SEQUENCE "CSDB_DialedCampaignPhones_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."CSDB_DialedCampaignPhones_id_seq" OWNER TO duo;

--
-- Name: CSDB_DialedCampaignPhones_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: duo
--

ALTER SEQUENCE "CSDB_DialedCampaignPhones_id_seq" OWNED BY "CSDB_DialedCampaignPhones".id;


--
-- Name: CSDB_DidNumbers; Type: TABLE; Schema: public; Owner: duo; Tablespace: 
--

CREATE TABLE "CSDB_DidNumbers" (
    id integer NOT NULL,
    "DidNumber" character varying(255),
    "DidActive" boolean,
    "CompanyId" integer,
    "TenantId" integer,
    "ObjClass" character varying(255),
    "ObjType" character varying(255),
    "ObjCategory" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "ExtensionId" integer
);


ALTER TABLE public."CSDB_DidNumbers" OWNER TO duo;

--
-- Name: CSDB_DidNumbers_id_seq; Type: SEQUENCE; Schema: public; Owner: duo
--

CREATE SEQUENCE "CSDB_DidNumbers_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."CSDB_DidNumbers_id_seq" OWNER TO duo;

--
-- Name: CSDB_DidNumbers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: duo
--

ALTER SEQUENCE "CSDB_DidNumbers_id_seq" OWNED BY "CSDB_DidNumbers".id;


--
-- Name: CSDB_EmergencyNumbers; Type: TABLE; Schema: public; Owner: duo; Tablespace: 
--

CREATE TABLE "CSDB_EmergencyNumbers" (
    id integer NOT NULL,
    "EmergencyNum" character varying(255),
    "CompanyId" integer,
    "TenantId" integer,
    "ObjClass" character varying(255),
    "ObjType" character varying(255),
    "ObjCategory" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."CSDB_EmergencyNumbers" OWNER TO duo;

--
-- Name: CSDB_EmergencyNumbers_id_seq; Type: SEQUENCE; Schema: public; Owner: duo
--

CREATE SEQUENCE "CSDB_EmergencyNumbers_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."CSDB_EmergencyNumbers_id_seq" OWNER TO duo;

--
-- Name: CSDB_EmergencyNumbers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: duo
--

ALTER SEQUENCE "CSDB_EmergencyNumbers_id_seq" OWNED BY "CSDB_EmergencyNumbers".id;


--
-- Name: CSDB_ExtendedAttachJunction; Type: TABLE; Schema: public; Owner: duo; Tablespace: 
--

CREATE TABLE "CSDB_ExtendedAttachJunction" (
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "CSDBAttachedServiceId" integer NOT NULL,
    "CSDBExtendedServiceId" integer NOT NULL
);


ALTER TABLE public."CSDB_ExtendedAttachJunction" OWNER TO duo;

--
-- Name: CSDB_ExtendedServices; Type: TABLE; Schema: public; Owner: duo; Tablespace: 
--

CREATE TABLE "CSDB_ExtendedServices" (
    id integer NOT NULL,
    "ServiceName" character varying(255),
    "Description" character varying(255),
    "ServiceVersion" character varying(255),
    "ServiceVersionStatus" character varying(255),
    "SourceUrl" character varying(255),
    "DockerUrl" character varying(255),
    "ObjClass" character varying(255),
    "ObjType" character varying(255),
    "ObjCategory" character varying(255),
    "CompanyId" integer,
    "TenantId" integer,
    "NoOfPorts" integer,
    "PortType" character varying(255),
    "ServiceProtocol" character varying(255),
    "Importance" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."CSDB_ExtendedServices" OWNER TO duo;

--
-- Name: CSDB_ExtendedServices_id_seq; Type: SEQUENCE; Schema: public; Owner: duo
--

CREATE SEQUENCE "CSDB_ExtendedServices_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."CSDB_ExtendedServices_id_seq" OWNER TO duo;

--
-- Name: CSDB_ExtendedServices_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: duo
--

ALTER SEQUENCE "CSDB_ExtendedServices_id_seq" OWNED BY "CSDB_ExtendedServices".id;


--
-- Name: CSDB_Extensions; Type: TABLE; Schema: public; Owner: duo; Tablespace: 
--

CREATE TABLE "CSDB_Extensions" (
    id integer NOT NULL,
    "Extension" character varying(255),
    "ExtensionName" character varying(255),
    "Enabled" boolean,
    "ExtraData" character varying(255),
    "ExtRefId" character varying(255),
    "CompanyId" integer,
    "TenantId" integer,
    "ObjClass" character varying(255),
    "ObjType" character varying(255),
    "ObjCategory" character varying(255),
    "DodNumber" character varying(255),
    "DodActive" boolean,
    "AddUser" character varying(255),
    "UpdateUser" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."CSDB_Extensions" OWNER TO duo;

--
-- Name: CSDB_Extensions_id_seq; Type: SEQUENCE; Schema: public; Owner: duo
--

CREATE SEQUENCE "CSDB_Extensions_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."CSDB_Extensions_id_seq" OWNER TO duo;

--
-- Name: CSDB_Extensions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: duo
--

ALTER SEQUENCE "CSDB_Extensions_id_seq" OWNED BY "CSDB_Extensions".id;


--
-- Name: CSDB_FeatureCodes; Type: TABLE; Schema: public; Owner: duo; Tablespace: 
--

CREATE TABLE "CSDB_FeatureCodes" (
    id integer NOT NULL,
    "PickUp" character varying(255),
    "Intercept" character varying(255),
    "Park" character varying(255),
    "VoiceMail" character varying(255),
    "Barge" character varying(255),
    "CompanyId" integer,
    "TenantId" integer,
    "ObjClass" character varying(255),
    "ObjType" character varying(255),
    "ObjCategory" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."CSDB_FeatureCodes" OWNER TO duo;

--
-- Name: CSDB_FeatureCodes_id_seq; Type: SEQUENCE; Schema: public; Owner: duo
--

CREATE SEQUENCE "CSDB_FeatureCodes_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."CSDB_FeatureCodes_id_seq" OWNER TO duo;

--
-- Name: CSDB_FeatureCodes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: duo
--

ALTER SEQUENCE "CSDB_FeatureCodes_id_seq" OWNED BY "CSDB_FeatureCodes".id;


--
-- Name: CSDB_FileDownloads; Type: TABLE; Schema: public; Owner: duo; Tablespace: 
--

CREATE TABLE "CSDB_FileDownloads" (
    id integer NOT NULL,
    "DownloadId" character varying(255),
    "ObjClass" character varying(255),
    "ObjType" character varying(255),
    "ObjCategory" character varying(255),
    "Filename" character varying(255),
    "DownloadTimestamp" character varying(255),
    "CompanyId" integer,
    "TenantId" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."CSDB_FileDownloads" OWNER TO duo;

--
-- Name: CSDB_FileDownloads_id_seq; Type: SEQUENCE; Schema: public; Owner: duo
--

CREATE SEQUENCE "CSDB_FileDownloads_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."CSDB_FileDownloads_id_seq" OWNER TO duo;

--
-- Name: CSDB_FileDownloads_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: duo
--

ALTER SEQUENCE "CSDB_FileDownloads_id_seq" OWNED BY "CSDB_FileDownloads".id;


--
-- Name: CSDB_FileUploads; Type: TABLE; Schema: public; Owner: duo; Tablespace: 
--

CREATE TABLE "CSDB_FileUploads" (
    "UniqueId" character varying(255) NOT NULL,
    "FileStructure" character varying(255),
    "ObjClass" character varying(255),
    "ObjType" character varying(255),
    "ObjCategory" character varying(255),
    "URL" character varying(255),
    "UploadTimestamp" character varying(255),
    "Filename" character varying(255),
    "Version" integer,
    "DisplayName" character varying(255),
    "CompanyId" integer,
    "TenantId" integer,
    "RefId" character varying(255),
    "Status" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "ApplicationId" integer
);


ALTER TABLE public."CSDB_FileUploads" OWNER TO duo;

--
-- Name: CSDB_FollowMes; Type: TABLE; Schema: public; Owner: duo; Tablespace: 
--

CREATE TABLE "CSDB_FollowMes" (
    id integer NOT NULL,
    "DestinationNumber" character varying(255),
    "RingTimeout" integer,
    "Priority" integer,
    "CompanyId" integer,
    "TenantId" integer,
    "ObjClass" character varying(255),
    "ObjType" character varying(255),
    "ObjCategory" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "PBXUserUuid" character varying(255),
    "DestinationUserUuid" character varying(255)
);


ALTER TABLE public."CSDB_FollowMes" OWNER TO duo;

--
-- Name: CSDB_FollowMes_id_seq; Type: SEQUENCE; Schema: public; Owner: duo
--

CREATE SEQUENCE "CSDB_FollowMes_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."CSDB_FollowMes_id_seq" OWNER TO duo;

--
-- Name: CSDB_FollowMes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: duo
--

ALTER SEQUENCE "CSDB_FollowMes_id_seq" OWNED BY "CSDB_FollowMes".id;


--
-- Name: CSDB_Forwardings; Type: TABLE; Schema: public; Owner: duo; Tablespace: 
--

CREATE TABLE "CSDB_Forwardings" (
    id integer NOT NULL,
    "DestinationNumber" character varying(255),
    "RingTimeout" integer,
    "CompanyId" integer,
    "TenantId" integer,
    "ObjClass" character varying(255),
    "ObjType" character varying(255),
    "ObjCategory" character varying(255),
    "DisconnectReason" character varying(255),
    "IsActive" boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "PBXUserUuid" character varying(255),
    "DestinationUserUuid" character varying(255)
);


ALTER TABLE public."CSDB_Forwardings" OWNER TO duo;

--
-- Name: CSDB_Forwardings_id_seq; Type: SEQUENCE; Schema: public; Owner: duo
--

CREATE SEQUENCE "CSDB_Forwardings_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."CSDB_Forwardings_id_seq" OWNER TO duo;

--
-- Name: CSDB_Forwardings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: duo
--

ALTER SEQUENCE "CSDB_Forwardings_id_seq" OWNED BY "CSDB_Forwardings".id;


--
-- Name: CSDB_IPAddresses; Type: TABLE; Schema: public; Owner: duo; Tablespace: 
--

CREATE TABLE "CSDB_IPAddresses" (
    id integer NOT NULL,
    "MainIp" character varying(255),
    "IP" character varying(255),
    "IsAllocated" boolean DEFAULT false NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "CallServerId" integer
);


ALTER TABLE public."CSDB_IPAddresses" OWNER TO duo;

--
-- Name: CSDB_IPAddresses_id_seq; Type: SEQUENCE; Schema: public; Owner: duo
--

CREATE SEQUENCE "CSDB_IPAddresses_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."CSDB_IPAddresses_id_seq" OWNER TO duo;

--
-- Name: CSDB_IPAddresses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: duo
--

ALTER SEQUENCE "CSDB_IPAddresses_id_seq" OWNED BY "CSDB_IPAddresses".id;


--
-- Name: CSDB_ImageDependance; Type: TABLE; Schema: public; Owner: duo; Tablespace: 
--

CREATE TABLE "CSDB_ImageDependance" (
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "DependentID" integer NOT NULL,
    "CSDBImageId" integer NOT NULL
);


ALTER TABLE public."CSDB_ImageDependance" OWNER TO duo;

--
-- Name: CSDB_Images; Type: TABLE; Schema: public; Owner: duo; Tablespace: 
--

CREATE TABLE "CSDB_Images" (
    id integer NOT NULL,
    "Name" character varying(255),
    "Description" character varying(255),
    "Version" character varying(255),
    "VersionStatus" character varying(255),
    "SourceUrl" character varying(255),
    "DockerUrl" character varying(255),
    "Class" character varying(255),
    "Type" character varying(255),
    "Category" character varying(255),
    "Cmd" character varying(255),
    "Importance" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."CSDB_Images" OWNER TO duo;

--
-- Name: CSDB_Images_id_seq; Type: SEQUENCE; Schema: public; Owner: duo
--

CREATE SEQUENCE "CSDB_Images_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."CSDB_Images_id_seq" OWNER TO duo;

--
-- Name: CSDB_Images_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: duo
--

ALTER SEQUENCE "CSDB_Images_id_seq" OWNED BY "CSDB_Images".id;


--
-- Name: CSDB_LimitInfos; Type: TABLE; Schema: public; Owner: duo; Tablespace: 
--

CREATE TABLE "CSDB_LimitInfos" (
    "LimitId" character varying(255) NOT NULL,
    "LimitDescription" character varying(255),
    "ObjClass" character varying(255),
    "ObjType" character varying(255),
    "ObjCategory" character varying(255),
    "MaxCount" integer,
    "Enable" boolean,
    "CompanyId" integer,
    "TenantId" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."CSDB_LimitInfos" OWNER TO duo;

--
-- Name: CSDB_LoadBalancers; Type: TABLE; Schema: public; Owner: duo; Tablespace: 
--

CREATE TABLE "CSDB_LoadBalancers" (
    id integer NOT NULL,
    "Type" character varying(255),
    "MainIP" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."CSDB_LoadBalancers" OWNER TO duo;

--
-- Name: CSDB_LoadBalancers_id_seq; Type: SEQUENCE; Schema: public; Owner: duo
--

CREATE SEQUENCE "CSDB_LoadBalancers_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."CSDB_LoadBalancers_id_seq" OWNER TO duo;

--
-- Name: CSDB_LoadBalancers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: duo
--

ALTER SEQUENCE "CSDB_LoadBalancers_id_seq" OWNED BY "CSDB_LoadBalancers".id;


--
-- Name: CSDB_Networks; Type: TABLE; Schema: public; Owner: duo; Tablespace: 
--

CREATE TABLE "CSDB_Networks" (
    id integer NOT NULL,
    "Type" character varying(255),
    "Owner" integer,
    "Network" character varying(255),
    "Mask" integer,
    "NATIP" character varying(255),
    "CompanyId" integer,
    "TenantId" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "ClusterId" integer
);


ALTER TABLE public."CSDB_Networks" OWNER TO duo;

--
-- Name: CSDB_Networks_id_seq; Type: SEQUENCE; Schema: public; Owner: duo
--

CREATE SEQUENCE "CSDB_Networks_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."CSDB_Networks_id_seq" OWNER TO duo;

--
-- Name: CSDB_Networks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: duo
--

ALTER SEQUENCE "CSDB_Networks_id_seq" OWNED BY "CSDB_Networks".id;


--
-- Name: CSDB_PBXMasterData; Type: TABLE; Schema: public; Owner: duo; Tablespace: 
--

CREATE TABLE "CSDB_PBXMasterData" (
    id integer NOT NULL,
    "BypassMedia" boolean,
    "IgnoreEarlyMedia" boolean,
    "VoicemailEnabled" boolean,
    "CompanyId" integer,
    "TenantId" integer,
    "ObjClass" character varying(255),
    "ObjType" character varying(255),
    "ObjCategory" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."CSDB_PBXMasterData" OWNER TO duo;

--
-- Name: CSDB_PBXMasterData_id_seq; Type: SEQUENCE; Schema: public; Owner: duo
--

CREATE SEQUENCE "CSDB_PBXMasterData_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."CSDB_PBXMasterData_id_seq" OWNER TO duo;

--
-- Name: CSDB_PBXMasterData_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: duo
--

ALTER SEQUENCE "CSDB_PBXMasterData_id_seq" OWNED BY "CSDB_PBXMasterData".id;


--
-- Name: CSDB_PBXUserTemplates; Type: TABLE; Schema: public; Owner: duo; Tablespace: 
--

CREATE TABLE "CSDB_PBXUserTemplates" (
    id integer NOT NULL,
    "CallDivertNumber" character varying(255),
    "CallDivertUser" character varying(255),
    "CompanyId" integer,
    "TenantId" integer,
    "ObjClass" character varying(255),
    "ObjType" character varying(255),
    "ObjCategory" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."CSDB_PBXUserTemplates" OWNER TO duo;

--
-- Name: CSDB_PBXUserTemplates_id_seq; Type: SEQUENCE; Schema: public; Owner: duo
--

CREATE SEQUENCE "CSDB_PBXUserTemplates_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."CSDB_PBXUserTemplates_id_seq" OWNER TO duo;

--
-- Name: CSDB_PBXUserTemplates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: duo
--

ALTER SEQUENCE "CSDB_PBXUserTemplates_id_seq" OWNED BY "CSDB_PBXUserTemplates".id;


--
-- Name: CSDB_PBXUsers; Type: TABLE; Schema: public; Owner: duo; Tablespace: 
--

CREATE TABLE "CSDB_PBXUsers" (
    "UserUuid" character varying(255) NOT NULL,
    "BypassMedia" boolean,
    "IgnoreEarlyMedia" boolean,
    "VoicemailEnabled" boolean,
    "Pin" character varying(255),
    "UserStatus" character varying(255),
    "AdvancedRouteMethod" character varying(255),
    "FollowMeMechanism" character varying(255),
    "AllowOutbound" boolean,
    "AllowedNumbers" character varying(255),
    "RingTimeout" integer,
    "ScheduleId" integer,
    "CompanyId" integer,
    "TenantId" integer,
    "ObjClass" character varying(255),
    "ObjType" character varying(255),
    "ObjCategory" character varying(255),
    "PersonalGreetingEnabled" boolean,
    "DayGreetingFile" character varying(255),
    "NightGreetingFile" character varying(255),
    "TimeZone" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "PBXUserTemplateId" integer
);


ALTER TABLE public."CSDB_PBXUsers" OWNER TO duo;

--
-- Name: CSDB_PhoneNumbers; Type: TABLE; Schema: public; Owner: duo; Tablespace: 
--

CREATE TABLE "CSDB_PhoneNumbers" (
    id integer NOT NULL,
    "PhoneNumber" character varying(255),
    "ObjClass" character varying(255),
    "ObjType" character varying(255),
    "ObjCategory" character varying(255),
    "Enable" boolean,
    "CompanyId" integer,
    "TenantId" integer,
    "FaxType" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "ScheduleId" integer,
    "TrunkId" integer,
    "InboundLimitId" character varying(255),
    "OutboundLimitId" character varying(255),
    "BothLimitId" character varying(255)
);


ALTER TABLE public."CSDB_PhoneNumbers" OWNER TO duo;

--
-- Name: CSDB_PhoneNumbers_id_seq; Type: SEQUENCE; Schema: public; Owner: duo
--

CREATE SEQUENCE "CSDB_PhoneNumbers_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."CSDB_PhoneNumbers_id_seq" OWNER TO duo;

--
-- Name: CSDB_PhoneNumbers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: duo
--

ALTER SEQUENCE "CSDB_PhoneNumbers_id_seq" OWNED BY "CSDB_PhoneNumbers".id;


--
-- Name: CSDB_Resources; Type: TABLE; Schema: public; Owner: duo; Tablespace: 
--

CREATE TABLE "CSDB_Resources" (
    id integer NOT NULL,
    "Name" character varying(255),
    "Description" character varying(255),
    "DockerUrl" character varying(255),
    "Class" character varying(255),
    "Type" character varying(255),
    "Category" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."CSDB_Resources" OWNER TO duo;

--
-- Name: CSDB_Resources_id_seq; Type: SEQUENCE; Schema: public; Owner: duo
--

CREATE SEQUENCE "CSDB_Resources_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."CSDB_Resources_id_seq" OWNER TO duo;

--
-- Name: CSDB_Resources_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: duo
--

ALTER SEQUENCE "CSDB_Resources_id_seq" OWNED BY "CSDB_Resources".id;


--
-- Name: CSDB_Schedules; Type: TABLE; Schema: public; Owner: duo; Tablespace: 
--

CREATE TABLE "CSDB_Schedules" (
    id integer NOT NULL,
    "ScheduleName" character varying(255),
    "Action" character varying(255),
    "ExtraData" character varying(255),
    "ObjClass" character varying(255),
    "ObjType" character varying(255),
    "ObjCategory" character varying(255),
    "CompanyId" integer,
    "TenantId" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."CSDB_Schedules" OWNER TO duo;

--
-- Name: CSDB_Schedules_id_seq; Type: SEQUENCE; Schema: public; Owner: duo
--

CREATE SEQUENCE "CSDB_Schedules_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."CSDB_Schedules_id_seq" OWNER TO duo;

--
-- Name: CSDB_Schedules_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: duo
--

ALTER SEQUENCE "CSDB_Schedules_id_seq" OWNED BY "CSDB_Schedules".id;


--
-- Name: CSDB_ServiceDeploymentDistributions; Type: TABLE; Schema: public; Owner: duo; Tablespace: 
--

CREATE TABLE "CSDB_ServiceDeploymentDistributions" (
    id integer NOT NULL,
    "ServiceName" character varying(255),
    "ServiceInstanceName" character varying(255),
    "ServiceVersion" character varying(255),
    "HostEnvironment" character varying(255),
    "HostIp" character varying(255),
    "GuestIp" character varying(255),
    "GuestPortInfo" character varying(255),
    "ObjClass" character varying(255),
    "ObjType" character varying(255),
    "ObjCategory" character varying(255),
    "CompanyId" integer,
    "TenantId" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."CSDB_ServiceDeploymentDistributions" OWNER TO duo;

--
-- Name: CSDB_ServiceDeploymentDistributions_id_seq; Type: SEQUENCE; Schema: public; Owner: duo
--

CREATE SEQUENCE "CSDB_ServiceDeploymentDistributions_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."CSDB_ServiceDeploymentDistributions_id_seq" OWNER TO duo;

--
-- Name: CSDB_ServiceDeploymentDistributions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: duo
--

ALTER SEQUENCE "CSDB_ServiceDeploymentDistributions_id_seq" OWNED BY "CSDB_ServiceDeploymentDistributions".id;


--
-- Name: CSDB_Services; Type: TABLE; Schema: public; Owner: duo; Tablespace: 
--

CREATE TABLE "CSDB_Services" (
    id integer NOT NULL,
    "Name" character varying(255),
    "Description" character varying(255),
    "Class" character varying(255),
    "Type" character varying(255),
    "Category" character varying(255),
    "CompanyId" integer,
    "TenantId" integer,
    "MultiPorts" boolean,
    "Direction" character varying(255),
    "Protocol" character varying(255),
    "DefaultStartPort" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "ServicesId" integer,
    "CSDBImageId" integer
);


ALTER TABLE public."CSDB_Services" OWNER TO duo;

--
-- Name: CSDB_Services_id_seq; Type: SEQUENCE; Schema: public; Owner: duo
--

CREATE SEQUENCE "CSDB_Services_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."CSDB_Services_id_seq" OWNER TO duo;

--
-- Name: CSDB_Services_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: duo
--

ALTER SEQUENCE "CSDB_Services_id_seq" OWNED BY "CSDB_Services".id;


--
-- Name: CSDB_SipNetworkProfiles; Type: TABLE; Schema: public; Owner: duo; Tablespace: 
--

CREATE TABLE "CSDB_SipNetworkProfiles" (
    id integer NOT NULL,
    "MainIp" character varying(255),
    "ProfileName" character varying(255),
    "InternalIp" character varying(255),
    "InternalRtpIp" character varying(255),
    "ExternalIp" character varying(255),
    "ExternalRtpIp" character varying(255),
    "Port" integer,
    "ObjClass" character varying(255),
    "ObjType" character varying(255),
    "ObjCategory" character varying(255),
    "CompanyId" integer,
    "TenantId" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "CallServerId" integer
);


ALTER TABLE public."CSDB_SipNetworkProfiles" OWNER TO duo;

--
-- Name: CSDB_SipNetworkProfiles_id_seq; Type: SEQUENCE; Schema: public; Owner: duo
--

CREATE SEQUENCE "CSDB_SipNetworkProfiles_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."CSDB_SipNetworkProfiles_id_seq" OWNER TO duo;

--
-- Name: CSDB_SipNetworkProfiles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: duo
--

ALTER SEQUENCE "CSDB_SipNetworkProfiles_id_seq" OWNED BY "CSDB_SipNetworkProfiles".id;


--
-- Name: CSDB_SipUACEndpoints; Type: TABLE; Schema: public; Owner: duo; Tablespace: 
--

CREATE TABLE "CSDB_SipUACEndpoints" (
    id integer NOT NULL,
    "SipUserUuid" character varying(255),
    "SipUsername" character varying(255),
    "Password" character varying(255),
    "Enabled" boolean,
    "ExtraData" character varying(255),
    "EmailAddress" character varying(255),
    "GuRefId" character varying(255),
    "CompanyId" integer,
    "TenantId" integer,
    "ObjClass" character varying(255),
    "ObjType" character varying(255),
    "ObjCategory" character varying(255),
    "SipExtension" character varying(255),
    "AddUser" character varying(255),
    "UpdateUser" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "ExtensionId" integer,
    "ContextId" character varying(255),
    "CloudEndUserId" integer
);


ALTER TABLE public."CSDB_SipUACEndpoints" OWNER TO duo;

--
-- Name: CSDB_SipUACEndpoints_id_seq; Type: SEQUENCE; Schema: public; Owner: duo
--

CREATE SEQUENCE "CSDB_SipUACEndpoints_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."CSDB_SipUACEndpoints_id_seq" OWNER TO duo;

--
-- Name: CSDB_SipUACEndpoints_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: duo
--

ALTER SEQUENCE "CSDB_SipUACEndpoints_id_seq" OWNED BY "CSDB_SipUACEndpoints".id;


--
-- Name: CSDB_TemplateImages; Type: TABLE; Schema: public; Owner: duo; Tablespace: 
--

CREATE TABLE "CSDB_TemplateImages" (
    "Type" character varying(255),
    "Priority" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "CSDBTemplateId" integer NOT NULL,
    "CSDBImageId" integer NOT NULL
);


ALTER TABLE public."CSDB_TemplateImages" OWNER TO duo;

--
-- Name: CSDB_Templates; Type: TABLE; Schema: public; Owner: duo; Tablespace: 
--

CREATE TABLE "CSDB_Templates" (
    id integer NOT NULL,
    "Name" character varying(255),
    "Description" character varying(255),
    "Class" character varying(255),
    "Type" character varying(255),
    "Category" character varying(255),
    "CompanyId" integer,
    "TenantId" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."CSDB_Templates" OWNER TO duo;

--
-- Name: CSDB_Templates_id_seq; Type: SEQUENCE; Schema: public; Owner: duo
--

CREATE SEQUENCE "CSDB_Templates_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."CSDB_Templates_id_seq" OWNER TO duo;

--
-- Name: CSDB_Templates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: duo
--

ALTER SEQUENCE "CSDB_Templates_id_seq" OWNED BY "CSDB_Templates".id;


--
-- Name: CSDB_Translations; Type: TABLE; Schema: public; Owner: duo; Tablespace: 
--

CREATE TABLE "CSDB_Translations" (
    id integer NOT NULL,
    "TransName" character varying(255),
    "TransDescription" character varying(255),
    "Enabled" boolean,
    "LAdd" character varying(255),
    "LRemove" integer,
    "RAdd" character varying(255),
    "RRemove" integer,
    "Replace" character varying(255),
    "CompanyId" integer,
    "TenantId" integer,
    "ObjClass" character varying(255),
    "ObjType" character varying(255),
    "ObjCategory" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."CSDB_Translations" OWNER TO duo;

--
-- Name: CSDB_Translations_id_seq; Type: SEQUENCE; Schema: public; Owner: duo
--

CREATE SEQUENCE "CSDB_Translations_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."CSDB_Translations_id_seq" OWNER TO duo;

--
-- Name: CSDB_Translations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: duo
--

ALTER SEQUENCE "CSDB_Translations_id_seq" OWNED BY "CSDB_Translations".id;


--
-- Name: CSDB_TrunkOperators; Type: TABLE; Schema: public; Owner: duo; Tablespace: 
--

CREATE TABLE "CSDB_TrunkOperators" (
    id integer NOT NULL,
    "OperatorName" character varying(255),
    "OperatorCode" character varying(255),
    "ObjClass" character varying(255),
    "ObjType" character varying(255),
    "ObjCategory" character varying(255),
    "CompanyId" integer,
    "TenantId" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."CSDB_TrunkOperators" OWNER TO duo;

--
-- Name: CSDB_TrunkOperators_id_seq; Type: SEQUENCE; Schema: public; Owner: duo
--

CREATE SEQUENCE "CSDB_TrunkOperators_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."CSDB_TrunkOperators_id_seq" OWNER TO duo;

--
-- Name: CSDB_TrunkOperators_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: duo
--

ALTER SEQUENCE "CSDB_TrunkOperators_id_seq" OWNED BY "CSDB_TrunkOperators".id;


--
-- Name: CSDB_Trunks; Type: TABLE; Schema: public; Owner: duo; Tablespace: 
--

CREATE TABLE "CSDB_Trunks" (
    id integer NOT NULL,
    "TrunkCode" character varying(255),
    "TrunkName" character varying(255),
    "ObjClass" character varying(255),
    "ObjType" character varying(255),
    "ObjCategory" character varying(255),
    "IpUrl" character varying(255),
    "Enable" boolean,
    "CompanyId" integer,
    "TenantId" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "ProfileId" integer,
    "LoadBalancerId" integer,
    "TranslationId" integer,
    "TrunkOperatorId" integer
);


ALTER TABLE public."CSDB_Trunks" OWNER TO duo;

--
-- Name: CSDB_Trunks_id_seq; Type: SEQUENCE; Schema: public; Owner: duo
--

CREATE SEQUENCE "CSDB_Trunks_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."CSDB_Trunks_id_seq" OWNER TO duo;

--
-- Name: CSDB_Trunks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: duo
--

ALTER SEQUENCE "CSDB_Trunks_id_seq" OWNED BY "CSDB_Trunks".id;


--
-- Name: CSDB_UserGroups; Type: TABLE; Schema: public; Owner: duo; Tablespace: 
--

CREATE TABLE "CSDB_UserGroups" (
    id integer NOT NULL,
    "GroupName" character varying(255),
    "Domain" character varying(255),
    "ExtraData" character varying(255),
    "ObjClass" character varying(255),
    "ObjType" character varying(255),
    "ObjCategory" character varying(255),
    "CompanyId" integer,
    "TenantId" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "ExtensionId" integer
);


ALTER TABLE public."CSDB_UserGroups" OWNER TO duo;

--
-- Name: CSDB_UserGroups_id_seq; Type: SEQUENCE; Schema: public; Owner: duo
--

CREATE SEQUENCE "CSDB_UserGroups_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."CSDB_UserGroups_id_seq" OWNER TO duo;

--
-- Name: CSDB_UserGroups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: duo
--

ALTER SEQUENCE "CSDB_UserGroups_id_seq" OWNED BY "CSDB_UserGroups".id;


--
-- Name: CSDB_UsrGrpJunction; Type: TABLE; Schema: public; Owner: duo; Tablespace: 
--

CREATE TABLE "CSDB_UsrGrpJunction" (
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "CSDBSipUACEndpointId" integer NOT NULL,
    "CSDBUserGroupId" integer NOT NULL
);


ALTER TABLE public."CSDB_UsrGrpJunction" OWNER TO duo;

--
-- Name: CSDB_Variables; Type: TABLE; Schema: public; Owner: duo; Tablespace: 
--

CREATE TABLE "CSDB_Variables" (
    id integer NOT NULL,
    "Name" character varying(255),
    "Description" character varying(255),
    "DefaultValue" character varying(255),
    "Export" boolean,
    "Type" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "CSDBImageId" integer,
    "SystemVariablesId" integer
);


ALTER TABLE public."CSDB_Variables" OWNER TO duo;

--
-- Name: CSDB_Variables_id_seq; Type: SEQUENCE; Schema: public; Owner: duo
--

CREATE SEQUENCE "CSDB_Variables_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."CSDB_Variables_id_seq" OWNER TO duo;

--
-- Name: CSDB_Variables_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: duo
--

ALTER SEQUENCE "CSDB_Variables_id_seq" OWNED BY "CSDB_Variables".id;


--
-- Name: CSDB_Volumes; Type: TABLE; Schema: public; Owner: duo; Tablespace: 
--

CREATE TABLE "CSDB_Volumes" (
    id integer NOT NULL,
    "Name" character varying(255),
    "Description" character varying(255),
    "Default" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "CSDBImageId" integer,
    "SystemVolumesId" integer
);


ALTER TABLE public."CSDB_Volumes" OWNER TO duo;

--
-- Name: CSDB_Volumes_id_seq; Type: SEQUENCE; Schema: public; Owner: duo
--

CREATE SEQUENCE "CSDB_Volumes_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."CSDB_Volumes_id_seq" OWNER TO duo;

--
-- Name: CSDB_Volumes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: duo
--

ALTER SEQUENCE "CSDB_Volumes_id_seq" OWNED BY "CSDB_Volumes".id;


--
-- Name: DB_CAMP_CallbackInfos; Type: TABLE; Schema: public; Owner: duo; Tablespace: 
--

CREATE TABLE "DB_CAMP_CallbackInfos" (
    "CampaignId" integer,
    "ContactId" character varying(255),
    "CamScheduleId" integer,
    "Status" boolean,
    "CallBackId" integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."DB_CAMP_CallbackInfos" OWNER TO duo;

--
-- Name: DB_CAMP_CallbackInfos_CallBackId_seq; Type: SEQUENCE; Schema: public; Owner: duo
--

CREATE SEQUENCE "DB_CAMP_CallbackInfos_CallBackId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."DB_CAMP_CallbackInfos_CallBackId_seq" OWNER TO duo;

--
-- Name: DB_CAMP_CallbackInfos_CallBackId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: duo
--

ALTER SEQUENCE "DB_CAMP_CallbackInfos_CallBackId_seq" OWNED BY "DB_CAMP_CallbackInfos"."CallBackId";


--
-- Name: DB_CAMP_CampContactCategories; Type: TABLE; Schema: public; Owner: duo; Tablespace: 
--

CREATE TABLE "DB_CAMP_CampContactCategories" (
    "CategoryName" character varying(255),
    "TenantId" integer,
    "CompanyId" integer,
    "CategoryID" integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."DB_CAMP_CampContactCategories" OWNER TO duo;

--
-- Name: DB_CAMP_CampContactCategories_CategoryID_seq; Type: SEQUENCE; Schema: public; Owner: duo
--

CREATE SEQUENCE "DB_CAMP_CampContactCategories_CategoryID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."DB_CAMP_CampContactCategories_CategoryID_seq" OWNER TO duo;

--
-- Name: DB_CAMP_CampContactCategories_CategoryID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: duo
--

ALTER SEQUENCE "DB_CAMP_CampContactCategories_CategoryID_seq" OWNED BY "DB_CAMP_CampContactCategories"."CategoryID";


--
-- Name: DB_CAMP_CampDialoutInfos; Type: TABLE; Schema: public; Owner: duo; Tablespace: 
--

CREATE TABLE "DB_CAMP_CampDialoutInfos" (
    "CampaignId" character varying(255),
    "CompanyId" character varying(255),
    "TenantId" character varying(255),
    "DialerId" character varying(255),
    "DialerStatus" character varying(255),
    "Dialtime" character varying(255),
    "Reason" character varying(255),
    "SessionId" character varying(255),
    "TryCount" character varying(255),
    "DialoutId" integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."DB_CAMP_CampDialoutInfos" OWNER TO duo;

--
-- Name: DB_CAMP_CampDialoutInfos_DialoutId_seq; Type: SEQUENCE; Schema: public; Owner: duo
--

CREATE SEQUENCE "DB_CAMP_CampDialoutInfos_DialoutId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."DB_CAMP_CampDialoutInfos_DialoutId_seq" OWNER TO duo;

--
-- Name: DB_CAMP_CampDialoutInfos_DialoutId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: duo
--

ALTER SEQUENCE "DB_CAMP_CampDialoutInfos_DialoutId_seq" OWNED BY "DB_CAMP_CampDialoutInfos"."DialoutId";


--
-- Name: DB_CAMP_CampaignInfos; Type: TABLE; Schema: public; Owner: duo; Tablespace: 
--

CREATE TABLE "DB_CAMP_CampaignInfos" (
    "CampaignName" character varying(255),
    "CampaignMode" character varying(255),
    "CampaignChannel" character varying(255),
    "DialoutMechanism" character varying(255),
    "TenantId" integer,
    "CompanyId" integer,
    "Class" character varying(255),
    "Type" character varying(255),
    "Category" character varying(255),
    "Extensions" character varying(255),
    "OperationalStatus" character varying(255),
    "Status" boolean,
    "CampaignId" integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."DB_CAMP_CampaignInfos" OWNER TO duo;

--
-- Name: DB_CAMP_CampaignInfos_CampaignId_seq; Type: SEQUENCE; Schema: public; Owner: duo
--

CREATE SEQUENCE "DB_CAMP_CampaignInfos_CampaignId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."DB_CAMP_CampaignInfos_CampaignId_seq" OWNER TO duo;

--
-- Name: DB_CAMP_CampaignInfos_CampaignId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: duo
--

ALTER SEQUENCE "DB_CAMP_CampaignInfos_CampaignId_seq" OWNED BY "DB_CAMP_CampaignInfos"."CampaignId";


--
-- Name: DB_CAMP_Configurations; Type: TABLE; Schema: public; Owner: duo; Tablespace: 
--

CREATE TABLE "DB_CAMP_Configurations" (
    "CampaignId" integer,
    "ChannelConcurrency" integer,
    "AllowCallBack" boolean,
    "MaxCallBackCount" integer,
    "Caller" character varying(255),
    "Status" boolean,
    "TenantId" integer,
    "CompanyId" integer,
    "StartDate" timestamp with time zone,
    "EndDate" timestamp with time zone,
    "ConfigureId" integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."DB_CAMP_Configurations" OWNER TO duo;

--
-- Name: DB_CAMP_Configurations_ConfigureId_seq; Type: SEQUENCE; Schema: public; Owner: duo
--

CREATE SEQUENCE "DB_CAMP_Configurations_ConfigureId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."DB_CAMP_Configurations_ConfigureId_seq" OWNER TO duo;

--
-- Name: DB_CAMP_Configurations_ConfigureId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: duo
--

ALTER SEQUENCE "DB_CAMP_Configurations_ConfigureId_seq" OWNED BY "DB_CAMP_Configurations"."ConfigureId";


--
-- Name: DB_CAMP_ContactInfos; Type: TABLE; Schema: public; Owner: duo; Tablespace: 
--

CREATE TABLE "DB_CAMP_ContactInfos" (
    "ContactId" character varying(255),
    "CategoryID" integer,
    "Status" boolean,
    "TenantId" integer,
    "CompanyId" integer,
    "CamContactId" integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."DB_CAMP_ContactInfos" OWNER TO duo;

--
-- Name: DB_CAMP_ContactInfos_CamContactId_seq; Type: SEQUENCE; Schema: public; Owner: duo
--

CREATE SEQUENCE "DB_CAMP_ContactInfos_CamContactId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."DB_CAMP_ContactInfos_CamContactId_seq" OWNER TO duo;

--
-- Name: DB_CAMP_ContactInfos_CamContactId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: duo
--

ALTER SEQUENCE "DB_CAMP_ContactInfos_CamContactId_seq" OWNED BY "DB_CAMP_ContactInfos"."CamContactId";


--
-- Name: DB_CAMP_ContactSchedules; Type: TABLE; Schema: public; Owner: duo; Tablespace: 
--

CREATE TABLE "DB_CAMP_ContactSchedules" (
    "CampaignId" integer,
    "CamScheduleId" integer,
    "CamContactId" integer,
    "ContactScheduleId" integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."DB_CAMP_ContactSchedules" OWNER TO duo;

--
-- Name: DB_CAMP_ContactSchedules_ContactScheduleId_seq; Type: SEQUENCE; Schema: public; Owner: duo
--

CREATE SEQUENCE "DB_CAMP_ContactSchedules_ContactScheduleId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."DB_CAMP_ContactSchedules_ContactScheduleId_seq" OWNER TO duo;

--
-- Name: DB_CAMP_ContactSchedules_ContactScheduleId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: duo
--

ALTER SEQUENCE "DB_CAMP_ContactSchedules_ContactScheduleId_seq" OWNED BY "DB_CAMP_ContactSchedules"."ContactScheduleId";


--
-- Name: DB_CAMP_OngoingCampaigns; Type: TABLE; Schema: public; Owner: duo; Tablespace: 
--

CREATE TABLE "DB_CAMP_OngoingCampaigns" (
    id integer NOT NULL,
    "CampaignId" integer,
    "CampaignState" character varying(255),
    "LastResponsTime" timestamp with time zone,
    "DialerId" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."DB_CAMP_OngoingCampaigns" OWNER TO duo;

--
-- Name: DB_CAMP_OngoingCampaigns_id_seq; Type: SEQUENCE; Schema: public; Owner: duo
--

CREATE SEQUENCE "DB_CAMP_OngoingCampaigns_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."DB_CAMP_OngoingCampaigns_id_seq" OWNER TO duo;

--
-- Name: DB_CAMP_OngoingCampaigns_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: duo
--

ALTER SEQUENCE "DB_CAMP_OngoingCampaigns_id_seq" OWNED BY "DB_CAMP_OngoingCampaigns".id;


--
-- Name: DB_CAMP_ScheduleInfos; Type: TABLE; Schema: public; Owner: duo; Tablespace: 
--

CREATE TABLE "DB_CAMP_ScheduleInfos" (
    "CampaignId" integer,
    "ScheduleId" integer,
    "ScheduleType" character varying(255),
    "TenantId" integer,
    "CompanyId" integer,
    "Status" boolean,
    "CamScheduleId" integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."DB_CAMP_ScheduleInfos" OWNER TO duo;

--
-- Name: DB_CAMP_ScheduleInfos_CamScheduleId_seq; Type: SEQUENCE; Schema: public; Owner: duo
--

CREATE SEQUENCE "DB_CAMP_ScheduleInfos_CamScheduleId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."DB_CAMP_ScheduleInfos_CamScheduleId_seq" OWNER TO duo;

--
-- Name: DB_CAMP_ScheduleInfos_CamScheduleId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: duo
--

ALTER SEQUENCE "DB_CAMP_ScheduleInfos_CamScheduleId_seq" OWNED BY "DB_CAMP_ScheduleInfos"."CamScheduleId";


--
-- Name: DidNumbers; Type: TABLE; Schema: public; Owner: duo; Tablespace: 
--

CREATE TABLE "DidNumbers" (
    id integer NOT NULL,
    "DidNumber" character varying(255),
    "DidActive" boolean,
    "CompanyId" integer,
    "TenantId" integer,
    "ObjClass" character varying(255),
    "ObjType" character varying(255),
    "ObjCategory" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."DidNumbers" OWNER TO duo;

--
-- Name: DidNumbers_id_seq; Type: SEQUENCE; Schema: public; Owner: duo
--

CREATE SEQUENCE "DidNumbers_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."DidNumbers_id_seq" OWNER TO duo;

--
-- Name: DidNumbers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: duo
--

ALTER SEQUENCE "DidNumbers_id_seq" OWNED BY "DidNumbers".id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_Actions" ALTER COLUMN id SET DEFAULT nextval('"CSDB_Actions_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_AppDevelopers" ALTER COLUMN id SET DEFAULT nextval('"CSDB_AppDevelopers_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_Applications" ALTER COLUMN id SET DEFAULT nextval('"CSDB_Applications_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_Appointments" ALTER COLUMN id SET DEFAULT nextval('"CSDB_Appointments_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_AttachedServices" ALTER COLUMN id SET DEFAULT nextval('"CSDB_AttachedServices_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_AutoAttendants" ALTER COLUMN id SET DEFAULT nextval('"CSDB_AutoAttendants_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_BaseServices" ALTER COLUMN id SET DEFAULT nextval('"CSDB_BaseServices_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_CallRules" ALTER COLUMN id SET DEFAULT nextval('"CSDB_CallRules_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_CallServers" ALTER COLUMN id SET DEFAULT nextval('"CSDB_CallServers_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_CampaignPhones" ALTER COLUMN id SET DEFAULT nextval('"CSDB_CampaignPhones_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_Campaigns" ALTER COLUMN id SET DEFAULT nextval('"CSDB_Campaigns_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_CloudEndUsers" ALTER COLUMN id SET DEFAULT nextval('"CSDB_CloudEndUsers_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_Clusters" ALTER COLUMN id SET DEFAULT nextval('"CSDB_Clusters_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_ConferenceUsers" ALTER COLUMN id SET DEFAULT nextval('"CSDB_ConferenceUsers_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_DVPEvents" ALTER COLUMN id SET DEFAULT nextval('"CSDB_DVPEvents_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_DialedCampaignPhones" ALTER COLUMN id SET DEFAULT nextval('"CSDB_DialedCampaignPhones_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_DidNumbers" ALTER COLUMN id SET DEFAULT nextval('"CSDB_DidNumbers_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_EmergencyNumbers" ALTER COLUMN id SET DEFAULT nextval('"CSDB_EmergencyNumbers_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_ExtendedServices" ALTER COLUMN id SET DEFAULT nextval('"CSDB_ExtendedServices_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_Extensions" ALTER COLUMN id SET DEFAULT nextval('"CSDB_Extensions_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_FeatureCodes" ALTER COLUMN id SET DEFAULT nextval('"CSDB_FeatureCodes_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_FileDownloads" ALTER COLUMN id SET DEFAULT nextval('"CSDB_FileDownloads_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_FollowMes" ALTER COLUMN id SET DEFAULT nextval('"CSDB_FollowMes_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_Forwardings" ALTER COLUMN id SET DEFAULT nextval('"CSDB_Forwardings_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_IPAddresses" ALTER COLUMN id SET DEFAULT nextval('"CSDB_IPAddresses_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_Images" ALTER COLUMN id SET DEFAULT nextval('"CSDB_Images_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_LoadBalancers" ALTER COLUMN id SET DEFAULT nextval('"CSDB_LoadBalancers_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_Networks" ALTER COLUMN id SET DEFAULT nextval('"CSDB_Networks_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_PBXMasterData" ALTER COLUMN id SET DEFAULT nextval('"CSDB_PBXMasterData_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_PBXUserTemplates" ALTER COLUMN id SET DEFAULT nextval('"CSDB_PBXUserTemplates_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_PhoneNumbers" ALTER COLUMN id SET DEFAULT nextval('"CSDB_PhoneNumbers_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_Resources" ALTER COLUMN id SET DEFAULT nextval('"CSDB_Resources_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_Schedules" ALTER COLUMN id SET DEFAULT nextval('"CSDB_Schedules_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_ServiceDeploymentDistributions" ALTER COLUMN id SET DEFAULT nextval('"CSDB_ServiceDeploymentDistributions_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_Services" ALTER COLUMN id SET DEFAULT nextval('"CSDB_Services_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_SipNetworkProfiles" ALTER COLUMN id SET DEFAULT nextval('"CSDB_SipNetworkProfiles_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_SipUACEndpoints" ALTER COLUMN id SET DEFAULT nextval('"CSDB_SipUACEndpoints_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_Templates" ALTER COLUMN id SET DEFAULT nextval('"CSDB_Templates_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_Translations" ALTER COLUMN id SET DEFAULT nextval('"CSDB_Translations_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_TrunkOperators" ALTER COLUMN id SET DEFAULT nextval('"CSDB_TrunkOperators_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_Trunks" ALTER COLUMN id SET DEFAULT nextval('"CSDB_Trunks_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_UserGroups" ALTER COLUMN id SET DEFAULT nextval('"CSDB_UserGroups_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_Variables" ALTER COLUMN id SET DEFAULT nextval('"CSDB_Variables_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_Volumes" ALTER COLUMN id SET DEFAULT nextval('"CSDB_Volumes_id_seq"'::regclass);


--
-- Name: CallBackId; Type: DEFAULT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "DB_CAMP_CallbackInfos" ALTER COLUMN "CallBackId" SET DEFAULT nextval('"DB_CAMP_CallbackInfos_CallBackId_seq"'::regclass);


--
-- Name: CategoryID; Type: DEFAULT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "DB_CAMP_CampContactCategories" ALTER COLUMN "CategoryID" SET DEFAULT nextval('"DB_CAMP_CampContactCategories_CategoryID_seq"'::regclass);


--
-- Name: DialoutId; Type: DEFAULT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "DB_CAMP_CampDialoutInfos" ALTER COLUMN "DialoutId" SET DEFAULT nextval('"DB_CAMP_CampDialoutInfos_DialoutId_seq"'::regclass);


--
-- Name: CampaignId; Type: DEFAULT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "DB_CAMP_CampaignInfos" ALTER COLUMN "CampaignId" SET DEFAULT nextval('"DB_CAMP_CampaignInfos_CampaignId_seq"'::regclass);


--
-- Name: ConfigureId; Type: DEFAULT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "DB_CAMP_Configurations" ALTER COLUMN "ConfigureId" SET DEFAULT nextval('"DB_CAMP_Configurations_ConfigureId_seq"'::regclass);


--
-- Name: CamContactId; Type: DEFAULT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "DB_CAMP_ContactInfos" ALTER COLUMN "CamContactId" SET DEFAULT nextval('"DB_CAMP_ContactInfos_CamContactId_seq"'::regclass);


--
-- Name: ContactScheduleId; Type: DEFAULT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "DB_CAMP_ContactSchedules" ALTER COLUMN "ContactScheduleId" SET DEFAULT nextval('"DB_CAMP_ContactSchedules_ContactScheduleId_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "DB_CAMP_OngoingCampaigns" ALTER COLUMN id SET DEFAULT nextval('"DB_CAMP_OngoingCampaigns_id_seq"'::regclass);


--
-- Name: CamScheduleId; Type: DEFAULT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "DB_CAMP_ScheduleInfos" ALTER COLUMN "CamScheduleId" SET DEFAULT nextval('"DB_CAMP_ScheduleInfos_CamScheduleId_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "DidNumbers" ALTER COLUMN id SET DEFAULT nextval('"DidNumbers_id_seq"'::regclass);


--
-- Data for Name: CSDB_Actions; Type: TABLE DATA; Schema: public; Owner: duo
--

COPY "CSDB_Actions" (id, "Name", "Action", "OnEvent", "Data", "createdAt", "updatedAt", "CSDBAutoAttendantId", "ActionsId") FROM stdin;
\.


--
-- Name: CSDB_Actions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: duo
--

SELECT pg_catalog.setval('"CSDB_Actions_id_seq"', 1, false);


--
-- Data for Name: CSDB_AppDevelopers; Type: TABLE DATA; Schema: public; Owner: duo
--

COPY "CSDB_AppDevelopers" (id, "Username", "Password", "Email", "Phone", "CompanyId", "TenantId", "ObjClass", "ObjType", "ObjCategory", "RegDate", "RefId", "Availability", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Name: CSDB_AppDevelopers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: duo
--

SELECT pg_catalog.setval('"CSDB_AppDevelopers_id_seq"', 1, false);


--
-- Data for Name: CSDB_Applications; Type: TABLE DATA; Schema: public; Owner: duo
--

COPY "CSDB_Applications" (id, "AppName", "Description", "Url", "ObjClass", "ObjType", "ObjCategory", "CompanyId", "TenantId", "Availability", "OtherData", "createdAt", "updatedAt", "MasterApplicationId", "AppDeveloperId") FROM stdin;
\.


--
-- Name: CSDB_Applications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: duo
--

SELECT pg_catalog.setval('"CSDB_Applications_id_seq"', 1, false);


--
-- Data for Name: CSDB_Appointments; Type: TABLE DATA; Schema: public; Owner: duo
--

COPY "CSDB_Appointments" (id, "AppointmentName", "Action", "ExtraData", "StartDate", "EndDate", "StartTime", "EndTime", "DaysOfWeek", "ObjClass", "ObjType", "ObjCategory", "CompanyId", "TenantId", "createdAt", "updatedAt", "ScheduleId") FROM stdin;
1	TESTSCHEDULE			2015-07-28	2015-12-28	2015-07-28 09:00:28+05:30	2015-12-28 18:00:28+05:30	Friday,Monday,Saturday,Sunday,Thursday,Tuesday,Wednesday	OBJCLZ	OBJTYP	OBJCAT	1	1	2015-07-28 15:16:51.497+05:30	2015-07-28 15:16:51.526+05:30	1
2	asdas			2015-07-28	2015-07-28	2015-07-28 16:10:13+05:30	2015-07-28 16:10:13+05:30	Monday,Thursday,Tuesday,Wednesday	OBJCLZ	OBJTYP	OBJCAT	1	1	2015-07-28 16:10:04.469+05:30	2015-07-28 16:10:04.504+05:30	2
4	test123			2015-07-28	2015-07-28	2015-07-28 16:10:40+05:30	2015-07-28 16:10:40+05:30	Tuesday	OBJCLZ	OBJTYP	OBJCAT	1	1	2015-07-28 16:10:34.042+05:30	2015-07-28 16:10:34.071+05:30	3
3	asdsadsasd			2015-07-28	2015-07-28	2015-07-28 16:10:32+05:30	2015-07-28 16:10:32+05:30	Monday	OBJCLZ	OBJTYP	OBJCAT	1	1	2015-07-28 16:10:34.032+05:30	2015-07-28 16:10:34.081+05:30	3
\.


--
-- Name: CSDB_Appointments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: duo
--

SELECT pg_catalog.setval('"CSDB_Appointments_id_seq"', 4, true);


--
-- Data for Name: CSDB_AttachedServices; Type: TABLE DATA; Schema: public; Owner: duo
--

COPY "CSDB_AttachedServices" (id, "AttServiceName", "Description", "ObjClass", "ObjType", "ObjCategory", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Name: CSDB_AttachedServices_id_seq; Type: SEQUENCE SET; Schema: public; Owner: duo
--

SELECT pg_catalog.setval('"CSDB_AttachedServices_id_seq"', 1, false);


--
-- Data for Name: CSDB_AutoAttendants; Type: TABLE DATA; Schema: public; Owner: duo
--

COPY "CSDB_AutoAttendants" (id, "Name", "Code", "Extention", "DayGreeting", "NightGreeting", "InvalidDigitSound", "MenuSound", "Tries", "TimeOut", "EnableExtention", "ExtentionLength", "Company", "Tenant", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Name: CSDB_AutoAttendants_id_seq; Type: SEQUENCE SET; Schema: public; Owner: duo
--

SELECT pg_catalog.setval('"CSDB_AutoAttendants_id_seq"', 1, false);


--
-- Data for Name: CSDB_BaseAttachJunction; Type: TABLE DATA; Schema: public; Owner: duo
--

COPY "CSDB_BaseAttachJunction" ("createdAt", "updatedAt", "CSDBAttachedServiceId", "CSDBBaseServiceId") FROM stdin;
\.


--
-- Data for Name: CSDB_BaseExtendedJunction; Type: TABLE DATA; Schema: public; Owner: duo
--

COPY "CSDB_BaseExtendedJunction" ("createdAt", "updatedAt", "CSDBExtendedServiceId", "CSDBBaseServiceId") FROM stdin;
\.


--
-- Data for Name: CSDB_BaseServices; Type: TABLE DATA; Schema: public; Owner: duo
--

COPY "CSDB_BaseServices" (id, "ServiceName", "Description", "ServiceVersion", "ServiceVersionStatus", "SourceUrl", "DockerUrl", "ObjClass", "ObjType", "ObjCategory", "CompanyId", "TenantId", "NoOfPorts", "PortType", "ServiceProtocol", "Importance", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Name: CSDB_BaseServices_id_seq; Type: SEQUENCE SET; Schema: public; Owner: duo
--

SELECT pg_catalog.setval('"CSDB_BaseServices_id_seq"', 1, false);


--
-- Data for Name: CSDB_CallCDRs; Type: TABLE DATA; Schema: public; Owner: duo
--

COPY "CSDB_CallCDRs" ("Uuid", "CallUuid", "BridgeUuid", "SipFromUser", "SipToUser", "HangupCause", "Direction", "SwitchName", "CallerContext", "IsAnswered", "CreatedTime", "AnsweredTime", "BridgedTime", "HangupTime", "Duration", "BillSec", "HoldSec", "ProgressSec", "AnswerSec", "WaitSec", "ProgressMediaSec", "FlowBillSec", "ObjClass", "ObjType", "ObjCategory", "AppId", "CompanyId", "TenantId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: CSDB_CallRules; Type: TABLE DATA; Schema: public; Owner: duo
--

COPY "CSDB_CallRules" (id, "CallRuleDescription", "ObjClass", "ObjType", "ObjCategory", "Enable", "CompanyId", "TenantId", "DNIS", "ANI", "DNISRegEx", "ANIRegEx", "RegExPattern", "ANIRegExPattern", "TrunkId", "TrunkNumber", "ExtraData", "Priority", "ContextRegEx", "Context", "Direction", "createdAt", "updatedAt", "ScheduleId", "TranslationId", "ANITranslationId", "AppId", "PhoneNumId") FROM stdin;
\.


--
-- Name: CSDB_CallRules_id_seq; Type: SEQUENCE SET; Schema: public; Owner: duo
--

SELECT pg_catalog.setval('"CSDB_CallRules_id_seq"', 1, false);


--
-- Data for Name: CSDB_CallServers; Type: TABLE DATA; Schema: public; Owner: duo
--

COPY "CSDB_CallServers" (id, "Name", "Activate", "Code", "CompanyId", "TenantId", "Class", "Type", "Category", "InternalMainIP", "createdAt", "updatedAt", "ClusterId") FROM stdin;
\.


--
-- Name: CSDB_CallServers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: duo
--

SELECT pg_catalog.setval('"CSDB_CallServers_id_seq"', 1, false);


--
-- Data for Name: CSDB_CampaignPhones; Type: TABLE DATA; Schema: public; Owner: duo
--

COPY "CSDB_CampaignPhones" (id, "Phone", "CampaignId", "Enable", "Class", "Type", "Category", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Name: CSDB_CampaignPhones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: duo
--

SELECT pg_catalog.setval('"CSDB_CampaignPhones_id_seq"', 1, false);


--
-- Data for Name: CSDB_Campaigns; Type: TABLE DATA; Schema: public; Owner: duo
--

COPY "CSDB_Campaigns" (id, "CampaignName", "CampaignNumber", "ConcurrentLimit", "Max", "Min", "CompanyId", "TenantId", "Class", "Type", "Category", "StartTime", "EndTime", "Enable", "ScheduleId", "Limit", "LastUpdate", "CSID", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Name: CSDB_Campaigns_id_seq; Type: SEQUENCE SET; Schema: public; Owner: duo
--

SELECT pg_catalog.setval('"CSDB_Campaigns_id_seq"', 1, false);


--
-- Data for Name: CSDB_CloudEndUsers; Type: TABLE DATA; Schema: public; Owner: duo
--

COPY "CSDB_CloudEndUsers" (id, "CompanyId", "TenantId", "Domain", "SIPConnectivityProvision", "createdAt", "updatedAt", "ClusterId", "NetworkId", "SipNetworkProfileId") FROM stdin;
\.


--
-- Name: CSDB_CloudEndUsers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: duo
--

SELECT pg_catalog.setval('"CSDB_CloudEndUsers_id_seq"', 1, false);


--
-- Data for Name: CSDB_Clusters; Type: TABLE DATA; Schema: public; Owner: duo
--

COPY "CSDB_Clusters" (id, "Name", "Activate", "Code", "CompanyId", "TenantId", "CloudModel", "Class", "Type", "Category", "createdAt", "updatedAt", "LoadBalancerId", "ParentCloudId") FROM stdin;
\.


--
-- Name: CSDB_Clusters_id_seq; Type: SEQUENCE SET; Schema: public; Owner: duo
--

SELECT pg_catalog.setval('"CSDB_Clusters_id_seq"', 1, false);


--
-- Data for Name: CSDB_ConferenceUsers; Type: TABLE DATA; Schema: public; Owner: duo
--

COPY "CSDB_ConferenceUsers" (id, "ActiveTalker", "Def", "Mute", "Mod", "ObjClass", "ObjType", "ObjCategory", "CurrentDef", "CurrentMute", "CurrentMod", "Destination", "JoinType", "UserStatus", "createdAt", "updatedAt", "ConferenceId", "SipUACEndpointId") FROM stdin;
\.


--
-- Name: CSDB_ConferenceUsers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: duo
--

SELECT pg_catalog.setval('"CSDB_ConferenceUsers_id_seq"', 1, false);


--
-- Data for Name: CSDB_Conferences; Type: TABLE DATA; Schema: public; Owner: duo
--

COPY "CSDB_Conferences" ("ConferenceName", "Description", "CompanyId", "TenantId", "ObjClass", "ObjType", "ObjCategory", "Pin", "AllowAnonymousUser", "StartTime", "EndTime", "Domain", "IsLocked", "MaxUser", "CurrentUsers", "createdAt", "updatedAt", "CloudEndUserId", "ExtensionId") FROM stdin;
\.


--
-- Data for Name: CSDB_Contexts; Type: TABLE DATA; Schema: public; Owner: duo
--

COPY "CSDB_Contexts" ("Context", "Description", "ContextCat", "CompanyId", "TenantId", "ObjClass", "ObjType", "ObjCategory", "AddUser", "UpdateUser", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: CSDB_DVPEvents; Type: TABLE DATA; Schema: public; Owner: duo
--

COPY "CSDB_DVPEvents" (id, "SessionId", "EventName", "CompanyId", "TenantId", "EventClass", "EventType", "EventCategory", "EventTime", "EventData", "EventParams", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Name: CSDB_DVPEvents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: duo
--

SELECT pg_catalog.setval('"CSDB_DVPEvents_id_seq"', 1, false);


--
-- Data for Name: CSDB_DialedCampaignPhones; Type: TABLE DATA; Schema: public; Owner: duo
--

COPY "CSDB_DialedCampaignPhones" (id, "Phone", "CampaignId", "DisconnectReason", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Name: CSDB_DialedCampaignPhones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: duo
--

SELECT pg_catalog.setval('"CSDB_DialedCampaignPhones_id_seq"', 1, false);


--
-- Data for Name: CSDB_DidNumbers; Type: TABLE DATA; Schema: public; Owner: duo
--

COPY "CSDB_DidNumbers" (id, "DidNumber", "DidActive", "CompanyId", "TenantId", "ObjClass", "ObjType", "ObjCategory", "createdAt", "updatedAt", "ExtensionId") FROM stdin;
\.


--
-- Name: CSDB_DidNumbers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: duo
--

SELECT pg_catalog.setval('"CSDB_DidNumbers_id_seq"', 1, false);


--
-- Data for Name: CSDB_EmergencyNumbers; Type: TABLE DATA; Schema: public; Owner: duo
--

COPY "CSDB_EmergencyNumbers" (id, "EmergencyNum", "CompanyId", "TenantId", "ObjClass", "ObjType", "ObjCategory", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Name: CSDB_EmergencyNumbers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: duo
--

SELECT pg_catalog.setval('"CSDB_EmergencyNumbers_id_seq"', 1, false);


--
-- Data for Name: CSDB_ExtendedAttachJunction; Type: TABLE DATA; Schema: public; Owner: duo
--

COPY "CSDB_ExtendedAttachJunction" ("createdAt", "updatedAt", "CSDBAttachedServiceId", "CSDBExtendedServiceId") FROM stdin;
\.


--
-- Data for Name: CSDB_ExtendedServices; Type: TABLE DATA; Schema: public; Owner: duo
--

COPY "CSDB_ExtendedServices" (id, "ServiceName", "Description", "ServiceVersion", "ServiceVersionStatus", "SourceUrl", "DockerUrl", "ObjClass", "ObjType", "ObjCategory", "CompanyId", "TenantId", "NoOfPorts", "PortType", "ServiceProtocol", "Importance", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Name: CSDB_ExtendedServices_id_seq; Type: SEQUENCE SET; Schema: public; Owner: duo
--

SELECT pg_catalog.setval('"CSDB_ExtendedServices_id_seq"', 1, false);


--
-- Data for Name: CSDB_Extensions; Type: TABLE DATA; Schema: public; Owner: duo
--

COPY "CSDB_Extensions" (id, "Extension", "ExtensionName", "Enabled", "ExtraData", "ExtRefId", "CompanyId", "TenantId", "ObjClass", "ObjType", "ObjCategory", "DodNumber", "DodActive", "AddUser", "UpdateUser", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Name: CSDB_Extensions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: duo
--

SELECT pg_catalog.setval('"CSDB_Extensions_id_seq"', 1, false);


--
-- Data for Name: CSDB_FeatureCodes; Type: TABLE DATA; Schema: public; Owner: duo
--

COPY "CSDB_FeatureCodes" (id, "PickUp", "Intercept", "Park", "VoiceMail", "Barge", "CompanyId", "TenantId", "ObjClass", "ObjType", "ObjCategory", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Name: CSDB_FeatureCodes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: duo
--

SELECT pg_catalog.setval('"CSDB_FeatureCodes_id_seq"', 1, false);


--
-- Data for Name: CSDB_FileDownloads; Type: TABLE DATA; Schema: public; Owner: duo
--

COPY "CSDB_FileDownloads" (id, "DownloadId", "ObjClass", "ObjType", "ObjCategory", "Filename", "DownloadTimestamp", "CompanyId", "TenantId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Name: CSDB_FileDownloads_id_seq; Type: SEQUENCE SET; Schema: public; Owner: duo
--

SELECT pg_catalog.setval('"CSDB_FileDownloads_id_seq"', 1, false);


--
-- Data for Name: CSDB_FileUploads; Type: TABLE DATA; Schema: public; Owner: duo
--

COPY "CSDB_FileUploads" ("UniqueId", "FileStructure", "ObjClass", "ObjType", "ObjCategory", "URL", "UploadTimestamp", "Filename", "Version", "DisplayName", "CompanyId", "TenantId", "RefId", "Status", "createdAt", "updatedAt", "ApplicationId") FROM stdin;
\.


--
-- Data for Name: CSDB_FollowMes; Type: TABLE DATA; Schema: public; Owner: duo
--

COPY "CSDB_FollowMes" (id, "DestinationNumber", "RingTimeout", "Priority", "CompanyId", "TenantId", "ObjClass", "ObjType", "ObjCategory", "createdAt", "updatedAt", "PBXUserUuid", "DestinationUserUuid") FROM stdin;
\.


--
-- Name: CSDB_FollowMes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: duo
--

SELECT pg_catalog.setval('"CSDB_FollowMes_id_seq"', 1, false);


--
-- Data for Name: CSDB_Forwardings; Type: TABLE DATA; Schema: public; Owner: duo
--

COPY "CSDB_Forwardings" (id, "DestinationNumber", "RingTimeout", "CompanyId", "TenantId", "ObjClass", "ObjType", "ObjCategory", "DisconnectReason", "IsActive", "createdAt", "updatedAt", "PBXUserUuid", "DestinationUserUuid") FROM stdin;
\.


--
-- Name: CSDB_Forwardings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: duo
--

SELECT pg_catalog.setval('"CSDB_Forwardings_id_seq"', 1, false);


--
-- Data for Name: CSDB_IPAddresses; Type: TABLE DATA; Schema: public; Owner: duo
--

COPY "CSDB_IPAddresses" (id, "MainIp", "IP", "IsAllocated", "createdAt", "updatedAt", "CallServerId") FROM stdin;
\.


--
-- Name: CSDB_IPAddresses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: duo
--

SELECT pg_catalog.setval('"CSDB_IPAddresses_id_seq"', 1, false);


--
-- Data for Name: CSDB_ImageDependance; Type: TABLE DATA; Schema: public; Owner: duo
--

COPY "CSDB_ImageDependance" ("createdAt", "updatedAt", "DependentID", "CSDBImageId") FROM stdin;
\.


--
-- Data for Name: CSDB_Images; Type: TABLE DATA; Schema: public; Owner: duo
--

COPY "CSDB_Images" (id, "Name", "Description", "Version", "VersionStatus", "SourceUrl", "DockerUrl", "Class", "Type", "Category", "Cmd", "Importance", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Name: CSDB_Images_id_seq; Type: SEQUENCE SET; Schema: public; Owner: duo
--

SELECT pg_catalog.setval('"CSDB_Images_id_seq"', 1, false);


--
-- Data for Name: CSDB_LimitInfos; Type: TABLE DATA; Schema: public; Owner: duo
--

COPY "CSDB_LimitInfos" ("LimitId", "LimitDescription", "ObjClass", "ObjType", "ObjCategory", "MaxCount", "Enable", "CompanyId", "TenantId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: CSDB_LoadBalancers; Type: TABLE DATA; Schema: public; Owner: duo
--

COPY "CSDB_LoadBalancers" (id, "Type", "MainIP", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Name: CSDB_LoadBalancers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: duo
--

SELECT pg_catalog.setval('"CSDB_LoadBalancers_id_seq"', 1, false);


--
-- Data for Name: CSDB_Networks; Type: TABLE DATA; Schema: public; Owner: duo
--

COPY "CSDB_Networks" (id, "Type", "Owner", "Network", "Mask", "NATIP", "CompanyId", "TenantId", "createdAt", "updatedAt", "ClusterId") FROM stdin;
\.


--
-- Name: CSDB_Networks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: duo
--

SELECT pg_catalog.setval('"CSDB_Networks_id_seq"', 1, false);


--
-- Data for Name: CSDB_PBXMasterData; Type: TABLE DATA; Schema: public; Owner: duo
--

COPY "CSDB_PBXMasterData" (id, "BypassMedia", "IgnoreEarlyMedia", "VoicemailEnabled", "CompanyId", "TenantId", "ObjClass", "ObjType", "ObjCategory", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Name: CSDB_PBXMasterData_id_seq; Type: SEQUENCE SET; Schema: public; Owner: duo
--

SELECT pg_catalog.setval('"CSDB_PBXMasterData_id_seq"', 1, false);


--
-- Data for Name: CSDB_PBXUserTemplates; Type: TABLE DATA; Schema: public; Owner: duo
--

COPY "CSDB_PBXUserTemplates" (id, "CallDivertNumber", "CallDivertUser", "CompanyId", "TenantId", "ObjClass", "ObjType", "ObjCategory", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Name: CSDB_PBXUserTemplates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: duo
--

SELECT pg_catalog.setval('"CSDB_PBXUserTemplates_id_seq"', 1, false);


--
-- Data for Name: CSDB_PBXUsers; Type: TABLE DATA; Schema: public; Owner: duo
--

COPY "CSDB_PBXUsers" ("UserUuid", "BypassMedia", "IgnoreEarlyMedia", "VoicemailEnabled", "Pin", "UserStatus", "AdvancedRouteMethod", "FollowMeMechanism", "AllowOutbound", "AllowedNumbers", "RingTimeout", "ScheduleId", "CompanyId", "TenantId", "ObjClass", "ObjType", "ObjCategory", "PersonalGreetingEnabled", "DayGreetingFile", "NightGreetingFile", "TimeZone", "createdAt", "updatedAt", "PBXUserTemplateId") FROM stdin;
\.


--
-- Data for Name: CSDB_PhoneNumbers; Type: TABLE DATA; Schema: public; Owner: duo
--

COPY "CSDB_PhoneNumbers" (id, "PhoneNumber", "ObjClass", "ObjType", "ObjCategory", "Enable", "CompanyId", "TenantId", "FaxType", "createdAt", "updatedAt", "ScheduleId", "TrunkId", "InboundLimitId", "OutboundLimitId", "BothLimitId") FROM stdin;
\.


--
-- Name: CSDB_PhoneNumbers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: duo
--

SELECT pg_catalog.setval('"CSDB_PhoneNumbers_id_seq"', 1, false);


--
-- Data for Name: CSDB_Resources; Type: TABLE DATA; Schema: public; Owner: duo
--

COPY "CSDB_Resources" (id, "Name", "Description", "DockerUrl", "Class", "Type", "Category", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Name: CSDB_Resources_id_seq; Type: SEQUENCE SET; Schema: public; Owner: duo
--

SELECT pg_catalog.setval('"CSDB_Resources_id_seq"', 1, false);


--
-- Data for Name: CSDB_Schedules; Type: TABLE DATA; Schema: public; Owner: duo
--

COPY "CSDB_Schedules" (id, "ScheduleName", "Action", "ExtraData", "ObjClass", "ObjType", "ObjCategory", "CompanyId", "TenantId", "createdAt", "updatedAt") FROM stdin;
1	TESTSCHEDULE1			OBJCLZ	OBJTYP	OBJCAT	1	1	2015-07-28 15:16:51.463+05:30	2015-07-28 15:16:51.463+05:30
2	sdadas	dasdassd	asdsad	OBJCLZ	OBJTYP	OBJCAT	1	1	2015-07-28 16:10:04.428+05:30	2015-07-28 16:10:04.428+05:30
3	asddasdasd	asdasd	dasdasd	OBJCLZ	OBJTYP	OBJCAT	1	1	2015-07-28 16:10:33.99+05:30	2015-07-28 16:10:33.99+05:30
\.


--
-- Name: CSDB_Schedules_id_seq; Type: SEQUENCE SET; Schema: public; Owner: duo
--

SELECT pg_catalog.setval('"CSDB_Schedules_id_seq"', 3, true);


--
-- Data for Name: CSDB_ServiceDeploymentDistributions; Type: TABLE DATA; Schema: public; Owner: duo
--

COPY "CSDB_ServiceDeploymentDistributions" (id, "ServiceName", "ServiceInstanceName", "ServiceVersion", "HostEnvironment", "HostIp", "GuestIp", "GuestPortInfo", "ObjClass", "ObjType", "ObjCategory", "CompanyId", "TenantId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Name: CSDB_ServiceDeploymentDistributions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: duo
--

SELECT pg_catalog.setval('"CSDB_ServiceDeploymentDistributions_id_seq"', 1, false);


--
-- Data for Name: CSDB_Services; Type: TABLE DATA; Schema: public; Owner: duo
--

COPY "CSDB_Services" (id, "Name", "Description", "Class", "Type", "Category", "CompanyId", "TenantId", "MultiPorts", "Direction", "Protocol", "DefaultStartPort", "createdAt", "updatedAt", "ServicesId", "CSDBImageId") FROM stdin;
\.


--
-- Name: CSDB_Services_id_seq; Type: SEQUENCE SET; Schema: public; Owner: duo
--

SELECT pg_catalog.setval('"CSDB_Services_id_seq"', 1, false);


--
-- Data for Name: CSDB_SipNetworkProfiles; Type: TABLE DATA; Schema: public; Owner: duo
--

COPY "CSDB_SipNetworkProfiles" (id, "MainIp", "ProfileName", "InternalIp", "InternalRtpIp", "ExternalIp", "ExternalRtpIp", "Port", "ObjClass", "ObjType", "ObjCategory", "CompanyId", "TenantId", "createdAt", "updatedAt", "CallServerId") FROM stdin;
\.


--
-- Name: CSDB_SipNetworkProfiles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: duo
--

SELECT pg_catalog.setval('"CSDB_SipNetworkProfiles_id_seq"', 1, false);


--
-- Data for Name: CSDB_SipUACEndpoints; Type: TABLE DATA; Schema: public; Owner: duo
--

COPY "CSDB_SipUACEndpoints" (id, "SipUserUuid", "SipUsername", "Password", "Enabled", "ExtraData", "EmailAddress", "GuRefId", "CompanyId", "TenantId", "ObjClass", "ObjType", "ObjCategory", "SipExtension", "AddUser", "UpdateUser", "createdAt", "updatedAt", "ExtensionId", "ContextId", "CloudEndUserId") FROM stdin;
\.


--
-- Name: CSDB_SipUACEndpoints_id_seq; Type: SEQUENCE SET; Schema: public; Owner: duo
--

SELECT pg_catalog.setval('"CSDB_SipUACEndpoints_id_seq"', 1, false);


--
-- Data for Name: CSDB_TemplateImages; Type: TABLE DATA; Schema: public; Owner: duo
--

COPY "CSDB_TemplateImages" ("Type", "Priority", "createdAt", "updatedAt", "CSDBTemplateId", "CSDBImageId") FROM stdin;
\.


--
-- Data for Name: CSDB_Templates; Type: TABLE DATA; Schema: public; Owner: duo
--

COPY "CSDB_Templates" (id, "Name", "Description", "Class", "Type", "Category", "CompanyId", "TenantId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Name: CSDB_Templates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: duo
--

SELECT pg_catalog.setval('"CSDB_Templates_id_seq"', 1, false);


--
-- Data for Name: CSDB_Translations; Type: TABLE DATA; Schema: public; Owner: duo
--

COPY "CSDB_Translations" (id, "TransName", "TransDescription", "Enabled", "LAdd", "LRemove", "RAdd", "RRemove", "Replace", "CompanyId", "TenantId", "ObjClass", "ObjType", "ObjCategory", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Name: CSDB_Translations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: duo
--

SELECT pg_catalog.setval('"CSDB_Translations_id_seq"', 1, false);


--
-- Data for Name: CSDB_TrunkOperators; Type: TABLE DATA; Schema: public; Owner: duo
--

COPY "CSDB_TrunkOperators" (id, "OperatorName", "OperatorCode", "ObjClass", "ObjType", "ObjCategory", "CompanyId", "TenantId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Name: CSDB_TrunkOperators_id_seq; Type: SEQUENCE SET; Schema: public; Owner: duo
--

SELECT pg_catalog.setval('"CSDB_TrunkOperators_id_seq"', 1, false);


--
-- Data for Name: CSDB_Trunks; Type: TABLE DATA; Schema: public; Owner: duo
--

COPY "CSDB_Trunks" (id, "TrunkCode", "TrunkName", "ObjClass", "ObjType", "ObjCategory", "IpUrl", "Enable", "CompanyId", "TenantId", "createdAt", "updatedAt", "ProfileId", "LoadBalancerId", "TranslationId", "TrunkOperatorId") FROM stdin;
\.


--
-- Name: CSDB_Trunks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: duo
--

SELECT pg_catalog.setval('"CSDB_Trunks_id_seq"', 1, false);


--
-- Data for Name: CSDB_UserGroups; Type: TABLE DATA; Schema: public; Owner: duo
--

COPY "CSDB_UserGroups" (id, "GroupName", "Domain", "ExtraData", "ObjClass", "ObjType", "ObjCategory", "CompanyId", "TenantId", "createdAt", "updatedAt", "ExtensionId") FROM stdin;
\.


--
-- Name: CSDB_UserGroups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: duo
--

SELECT pg_catalog.setval('"CSDB_UserGroups_id_seq"', 1, false);


--
-- Data for Name: CSDB_UsrGrpJunction; Type: TABLE DATA; Schema: public; Owner: duo
--

COPY "CSDB_UsrGrpJunction" ("createdAt", "updatedAt", "CSDBSipUACEndpointId", "CSDBUserGroupId") FROM stdin;
\.


--
-- Data for Name: CSDB_Variables; Type: TABLE DATA; Schema: public; Owner: duo
--

COPY "CSDB_Variables" (id, "Name", "Description", "DefaultValue", "Export", "Type", "createdAt", "updatedAt", "CSDBImageId", "SystemVariablesId") FROM stdin;
\.


--
-- Name: CSDB_Variables_id_seq; Type: SEQUENCE SET; Schema: public; Owner: duo
--

SELECT pg_catalog.setval('"CSDB_Variables_id_seq"', 1, false);


--
-- Data for Name: CSDB_Volumes; Type: TABLE DATA; Schema: public; Owner: duo
--

COPY "CSDB_Volumes" (id, "Name", "Description", "Default", "createdAt", "updatedAt", "CSDBImageId", "SystemVolumesId") FROM stdin;
\.


--
-- Name: CSDB_Volumes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: duo
--

SELECT pg_catalog.setval('"CSDB_Volumes_id_seq"', 1, false);


--
-- Data for Name: DB_CAMP_CallbackInfos; Type: TABLE DATA; Schema: public; Owner: duo
--

COPY "DB_CAMP_CallbackInfos" ("CampaignId", "ContactId", "CamScheduleId", "Status", "CallBackId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Name: DB_CAMP_CallbackInfos_CallBackId_seq; Type: SEQUENCE SET; Schema: public; Owner: duo
--

SELECT pg_catalog.setval('"DB_CAMP_CallbackInfos_CallBackId_seq"', 1, false);


--
-- Data for Name: DB_CAMP_CampContactCategories; Type: TABLE DATA; Schema: public; Owner: duo
--

COPY "DB_CAMP_CampContactCategories" ("CategoryName", "TenantId", "CompanyId", "CategoryID", "createdAt", "updatedAt") FROM stdin;
TESTCATEGORY	1	1	1	2015-07-28 15:18:03.177+05:30	2015-07-28 15:18:03.177+05:30
\.


--
-- Name: DB_CAMP_CampContactCategories_CategoryID_seq; Type: SEQUENCE SET; Schema: public; Owner: duo
--

SELECT pg_catalog.setval('"DB_CAMP_CampContactCategories_CategoryID_seq"', 1, true);


--
-- Data for Name: DB_CAMP_CampDialoutInfos; Type: TABLE DATA; Schema: public; Owner: duo
--

COPY "DB_CAMP_CampDialoutInfos" ("CampaignId", "CompanyId", "TenantId", "DialerId", "DialerStatus", "Dialtime", "Reason", "SessionId", "TryCount", "DialoutId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Name: DB_CAMP_CampDialoutInfos_DialoutId_seq; Type: SEQUENCE SET; Schema: public; Owner: duo
--

SELECT pg_catalog.setval('"DB_CAMP_CampDialoutInfos_DialoutId_seq"', 1, false);


--
-- Data for Name: DB_CAMP_CampaignInfos; Type: TABLE DATA; Schema: public; Owner: duo
--

COPY "DB_CAMP_CampaignInfos" ("CampaignName", "CampaignMode", "CampaignChannel", "DialoutMechanism", "TenantId", "CompanyId", "Class", "Type", "Category", "Extensions", "OperationalStatus", "Status", "CampaignId", "createdAt", "updatedAt") FROM stdin;
TESTCAMPAIGN	a	b	c	1	1	\N	\N	\N	1001	create	t	1	2015-07-28 15:14:23.616+05:30	2015-07-28 15:14:23.616+05:30
\.


--
-- Name: DB_CAMP_CampaignInfos_CampaignId_seq; Type: SEQUENCE SET; Schema: public; Owner: duo
--

SELECT pg_catalog.setval('"DB_CAMP_CampaignInfos_CampaignId_seq"', 1, true);


--
-- Data for Name: DB_CAMP_Configurations; Type: TABLE DATA; Schema: public; Owner: duo
--

COPY "DB_CAMP_Configurations" ("CampaignId", "ChannelConcurrency", "AllowCallBack", "MaxCallBackCount", "Caller", "Status", "TenantId", "CompanyId", "StartDate", "EndDate", "ConfigureId", "createdAt", "updatedAt") FROM stdin;
1	0	f	2	0117807400	t	1	1	2015-07-15 16:47:14.494+05:30	2015-08-15 16:47:14.494+05:30	1	2015-07-28 15:22:37.026+05:30	2015-07-28 15:22:37.026+05:30
\.


--
-- Name: DB_CAMP_Configurations_ConfigureId_seq; Type: SEQUENCE SET; Schema: public; Owner: duo
--

SELECT pg_catalog.setval('"DB_CAMP_Configurations_ConfigureId_seq"', 1, true);


--
-- Data for Name: DB_CAMP_ContactInfos; Type: TABLE DATA; Schema: public; Owner: duo
--

COPY "DB_CAMP_ContactInfos" ("ContactId", "CategoryID", "Status", "TenantId", "CompanyId", "CamContactId", "createdAt", "updatedAt") FROM stdin;
0784714436	1	t	1	1	1	2015-07-28 15:18:40.092+05:30	2015-07-28 15:18:40.092+05:30
0773816754	1	t	1	1	2	2015-07-28 15:18:40.097+05:30	2015-07-28 15:18:40.097+05:30
0773795992	1	t	1	1	3	2015-07-28 15:18:40.098+05:30	2015-07-28 15:18:40.098+05:30
0773756692	1	t	1	1	4	2015-07-28 15:18:40.099+05:30	2015-07-28 15:18:40.099+05:30
0773687409	1	t	1	1	5	2015-07-28 15:18:40.1+05:30	2015-07-28 15:18:40.1+05:30
\.


--
-- Name: DB_CAMP_ContactInfos_CamContactId_seq; Type: SEQUENCE SET; Schema: public; Owner: duo
--

SELECT pg_catalog.setval('"DB_CAMP_ContactInfos_CamContactId_seq"', 5, true);


--
-- Data for Name: DB_CAMP_ContactSchedules; Type: TABLE DATA; Schema: public; Owner: duo
--

COPY "DB_CAMP_ContactSchedules" ("CampaignId", "CamScheduleId", "CamContactId", "ContactScheduleId", "createdAt", "updatedAt") FROM stdin;
1	1	1	1	2015-07-28 15:18:40.162+05:30	2015-07-28 15:18:40.162+05:30
1	1	4	2	2015-07-28 15:18:40.171+05:30	2015-07-28 15:18:40.171+05:30
1	1	5	3	2015-07-28 15:18:40.187+05:30	2015-07-28 15:18:40.187+05:30
1	1	2	4	2015-07-28 15:18:40.196+05:30	2015-07-28 15:18:40.196+05:30
1	1	3	5	2015-07-28 15:18:40.206+05:30	2015-07-28 15:18:40.206+05:30
\.


--
-- Name: DB_CAMP_ContactSchedules_ContactScheduleId_seq; Type: SEQUENCE SET; Schema: public; Owner: duo
--

SELECT pg_catalog.setval('"DB_CAMP_ContactSchedules_ContactScheduleId_seq"', 5, true);


--
-- Data for Name: DB_CAMP_OngoingCampaigns; Type: TABLE DATA; Schema: public; Owner: duo
--

COPY "DB_CAMP_OngoingCampaigns" (id, "CampaignId", "CampaignState", "LastResponsTime", "DialerId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Name: DB_CAMP_OngoingCampaigns_id_seq; Type: SEQUENCE SET; Schema: public; Owner: duo
--

SELECT pg_catalog.setval('"DB_CAMP_OngoingCampaigns_id_seq"', 1, false);


--
-- Data for Name: DB_CAMP_ScheduleInfos; Type: TABLE DATA; Schema: public; Owner: duo
--

COPY "DB_CAMP_ScheduleInfos" ("CampaignId", "ScheduleId", "ScheduleType", "TenantId", "CompanyId", "Status", "CamScheduleId", "createdAt", "updatedAt") FROM stdin;
1	1	test	1	1	t	1	2015-07-28 15:16:51.6+05:30	2015-07-28 15:16:51.6+05:30
\.


--
-- Name: DB_CAMP_ScheduleInfos_CamScheduleId_seq; Type: SEQUENCE SET; Schema: public; Owner: duo
--

SELECT pg_catalog.setval('"DB_CAMP_ScheduleInfos_CamScheduleId_seq"', 1, true);


--
-- Data for Name: DidNumbers; Type: TABLE DATA; Schema: public; Owner: duo
--

COPY "DidNumbers" (id, "DidNumber", "DidActive", "CompanyId", "TenantId", "ObjClass", "ObjType", "ObjCategory", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Name: DidNumbers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: duo
--

SELECT pg_catalog.setval('"DidNumbers_id_seq"', 1, false);


--
-- Name: CSDB_Actions_pkey; Type: CONSTRAINT; Schema: public; Owner: duo; Tablespace: 
--

ALTER TABLE ONLY "CSDB_Actions"
    ADD CONSTRAINT "CSDB_Actions_pkey" PRIMARY KEY (id);


--
-- Name: CSDB_AppDevelopers_pkey; Type: CONSTRAINT; Schema: public; Owner: duo; Tablespace: 
--

ALTER TABLE ONLY "CSDB_AppDevelopers"
    ADD CONSTRAINT "CSDB_AppDevelopers_pkey" PRIMARY KEY (id);


--
-- Name: CSDB_Applications_pkey; Type: CONSTRAINT; Schema: public; Owner: duo; Tablespace: 
--

ALTER TABLE ONLY "CSDB_Applications"
    ADD CONSTRAINT "CSDB_Applications_pkey" PRIMARY KEY (id);


--
-- Name: CSDB_Appointments_pkey; Type: CONSTRAINT; Schema: public; Owner: duo; Tablespace: 
--

ALTER TABLE ONLY "CSDB_Appointments"
    ADD CONSTRAINT "CSDB_Appointments_pkey" PRIMARY KEY (id);


--
-- Name: CSDB_AttachedServices_pkey; Type: CONSTRAINT; Schema: public; Owner: duo; Tablespace: 
--

ALTER TABLE ONLY "CSDB_AttachedServices"
    ADD CONSTRAINT "CSDB_AttachedServices_pkey" PRIMARY KEY (id);


--
-- Name: CSDB_AutoAttendants_Extention_Company_Tenant_key; Type: CONSTRAINT; Schema: public; Owner: duo; Tablespace: 
--

ALTER TABLE ONLY "CSDB_AutoAttendants"
    ADD CONSTRAINT "CSDB_AutoAttendants_Extention_Company_Tenant_key" UNIQUE ("Extention", "Company", "Tenant");


--
-- Name: CSDB_AutoAttendants_Name_key; Type: CONSTRAINT; Schema: public; Owner: duo; Tablespace: 
--

ALTER TABLE ONLY "CSDB_AutoAttendants"
    ADD CONSTRAINT "CSDB_AutoAttendants_Name_key" UNIQUE ("Name");


--
-- Name: CSDB_AutoAttendants_pkey; Type: CONSTRAINT; Schema: public; Owner: duo; Tablespace: 
--

ALTER TABLE ONLY "CSDB_AutoAttendants"
    ADD CONSTRAINT "CSDB_AutoAttendants_pkey" PRIMARY KEY (id);


--
-- Name: CSDB_BaseAttachJunction_pkey; Type: CONSTRAINT; Schema: public; Owner: duo; Tablespace: 
--

ALTER TABLE ONLY "CSDB_BaseAttachJunction"
    ADD CONSTRAINT "CSDB_BaseAttachJunction_pkey" PRIMARY KEY ("CSDBAttachedServiceId", "CSDBBaseServiceId");


--
-- Name: CSDB_BaseExtendedJunction_pkey; Type: CONSTRAINT; Schema: public; Owner: duo; Tablespace: 
--

ALTER TABLE ONLY "CSDB_BaseExtendedJunction"
    ADD CONSTRAINT "CSDB_BaseExtendedJunction_pkey" PRIMARY KEY ("CSDBExtendedServiceId", "CSDBBaseServiceId");


--
-- Name: CSDB_BaseServices_pkey; Type: CONSTRAINT; Schema: public; Owner: duo; Tablespace: 
--

ALTER TABLE ONLY "CSDB_BaseServices"
    ADD CONSTRAINT "CSDB_BaseServices_pkey" PRIMARY KEY (id);


--
-- Name: CSDB_CallCDRs_pkey; Type: CONSTRAINT; Schema: public; Owner: duo; Tablespace: 
--

ALTER TABLE ONLY "CSDB_CallCDRs"
    ADD CONSTRAINT "CSDB_CallCDRs_pkey" PRIMARY KEY ("Uuid");


--
-- Name: CSDB_CallRules_pkey; Type: CONSTRAINT; Schema: public; Owner: duo; Tablespace: 
--

ALTER TABLE ONLY "CSDB_CallRules"
    ADD CONSTRAINT "CSDB_CallRules_pkey" PRIMARY KEY (id);


--
-- Name: CSDB_CallServers_pkey; Type: CONSTRAINT; Schema: public; Owner: duo; Tablespace: 
--

ALTER TABLE ONLY "CSDB_CallServers"
    ADD CONSTRAINT "CSDB_CallServers_pkey" PRIMARY KEY (id);


--
-- Name: CSDB_CampaignPhones_pkey; Type: CONSTRAINT; Schema: public; Owner: duo; Tablespace: 
--

ALTER TABLE ONLY "CSDB_CampaignPhones"
    ADD CONSTRAINT "CSDB_CampaignPhones_pkey" PRIMARY KEY (id);


--
-- Name: CSDB_Campaigns_pkey; Type: CONSTRAINT; Schema: public; Owner: duo; Tablespace: 
--

ALTER TABLE ONLY "CSDB_Campaigns"
    ADD CONSTRAINT "CSDB_Campaigns_pkey" PRIMARY KEY (id);


--
-- Name: CSDB_CloudEndUsers_pkey; Type: CONSTRAINT; Schema: public; Owner: duo; Tablespace: 
--

ALTER TABLE ONLY "CSDB_CloudEndUsers"
    ADD CONSTRAINT "CSDB_CloudEndUsers_pkey" PRIMARY KEY (id);


--
-- Name: CSDB_Clusters_pkey; Type: CONSTRAINT; Schema: public; Owner: duo; Tablespace: 
--

ALTER TABLE ONLY "CSDB_Clusters"
    ADD CONSTRAINT "CSDB_Clusters_pkey" PRIMARY KEY (id);


--
-- Name: CSDB_ConferenceUsers_pkey; Type: CONSTRAINT; Schema: public; Owner: duo; Tablespace: 
--

ALTER TABLE ONLY "CSDB_ConferenceUsers"
    ADD CONSTRAINT "CSDB_ConferenceUsers_pkey" PRIMARY KEY (id);


--
-- Name: CSDB_Conferences_pkey; Type: CONSTRAINT; Schema: public; Owner: duo; Tablespace: 
--

ALTER TABLE ONLY "CSDB_Conferences"
    ADD CONSTRAINT "CSDB_Conferences_pkey" PRIMARY KEY ("ConferenceName");


--
-- Name: CSDB_Contexts_pkey; Type: CONSTRAINT; Schema: public; Owner: duo; Tablespace: 
--

ALTER TABLE ONLY "CSDB_Contexts"
    ADD CONSTRAINT "CSDB_Contexts_pkey" PRIMARY KEY ("Context");


--
-- Name: CSDB_DVPEvents_pkey; Type: CONSTRAINT; Schema: public; Owner: duo; Tablespace: 
--

ALTER TABLE ONLY "CSDB_DVPEvents"
    ADD CONSTRAINT "CSDB_DVPEvents_pkey" PRIMARY KEY (id);


--
-- Name: CSDB_DialedCampaignPhones_pkey; Type: CONSTRAINT; Schema: public; Owner: duo; Tablespace: 
--

ALTER TABLE ONLY "CSDB_DialedCampaignPhones"
    ADD CONSTRAINT "CSDB_DialedCampaignPhones_pkey" PRIMARY KEY (id);


--
-- Name: CSDB_DidNumbers_pkey; Type: CONSTRAINT; Schema: public; Owner: duo; Tablespace: 
--

ALTER TABLE ONLY "CSDB_DidNumbers"
    ADD CONSTRAINT "CSDB_DidNumbers_pkey" PRIMARY KEY (id);


--
-- Name: CSDB_EmergencyNumbers_pkey; Type: CONSTRAINT; Schema: public; Owner: duo; Tablespace: 
--

ALTER TABLE ONLY "CSDB_EmergencyNumbers"
    ADD CONSTRAINT "CSDB_EmergencyNumbers_pkey" PRIMARY KEY (id);


--
-- Name: CSDB_ExtendedAttachJunction_pkey; Type: CONSTRAINT; Schema: public; Owner: duo; Tablespace: 
--

ALTER TABLE ONLY "CSDB_ExtendedAttachJunction"
    ADD CONSTRAINT "CSDB_ExtendedAttachJunction_pkey" PRIMARY KEY ("CSDBAttachedServiceId", "CSDBExtendedServiceId");


--
-- Name: CSDB_ExtendedServices_pkey; Type: CONSTRAINT; Schema: public; Owner: duo; Tablespace: 
--

ALTER TABLE ONLY "CSDB_ExtendedServices"
    ADD CONSTRAINT "CSDB_ExtendedServices_pkey" PRIMARY KEY (id);


--
-- Name: CSDB_Extensions_pkey; Type: CONSTRAINT; Schema: public; Owner: duo; Tablespace: 
--

ALTER TABLE ONLY "CSDB_Extensions"
    ADD CONSTRAINT "CSDB_Extensions_pkey" PRIMARY KEY (id);


--
-- Name: CSDB_FeatureCodes_pkey; Type: CONSTRAINT; Schema: public; Owner: duo; Tablespace: 
--

ALTER TABLE ONLY "CSDB_FeatureCodes"
    ADD CONSTRAINT "CSDB_FeatureCodes_pkey" PRIMARY KEY (id);


--
-- Name: CSDB_FileDownloads_pkey; Type: CONSTRAINT; Schema: public; Owner: duo; Tablespace: 
--

ALTER TABLE ONLY "CSDB_FileDownloads"
    ADD CONSTRAINT "CSDB_FileDownloads_pkey" PRIMARY KEY (id);


--
-- Name: CSDB_FileUploads_Filename_Version_CompanyId_TenantId_key; Type: CONSTRAINT; Schema: public; Owner: duo; Tablespace: 
--

ALTER TABLE ONLY "CSDB_FileUploads"
    ADD CONSTRAINT "CSDB_FileUploads_Filename_Version_CompanyId_TenantId_key" UNIQUE ("Filename", "Version", "CompanyId", "TenantId");


--
-- Name: CSDB_FileUploads_pkey; Type: CONSTRAINT; Schema: public; Owner: duo; Tablespace: 
--

ALTER TABLE ONLY "CSDB_FileUploads"
    ADD CONSTRAINT "CSDB_FileUploads_pkey" PRIMARY KEY ("UniqueId");


--
-- Name: CSDB_FollowMes_pkey; Type: CONSTRAINT; Schema: public; Owner: duo; Tablespace: 
--

ALTER TABLE ONLY "CSDB_FollowMes"
    ADD CONSTRAINT "CSDB_FollowMes_pkey" PRIMARY KEY (id);


--
-- Name: CSDB_Forwardings_pkey; Type: CONSTRAINT; Schema: public; Owner: duo; Tablespace: 
--

ALTER TABLE ONLY "CSDB_Forwardings"
    ADD CONSTRAINT "CSDB_Forwardings_pkey" PRIMARY KEY (id);


--
-- Name: CSDB_IPAddresses_IP_key; Type: CONSTRAINT; Schema: public; Owner: duo; Tablespace: 
--

ALTER TABLE ONLY "CSDB_IPAddresses"
    ADD CONSTRAINT "CSDB_IPAddresses_IP_key" UNIQUE ("IP");


--
-- Name: CSDB_IPAddresses_pkey; Type: CONSTRAINT; Schema: public; Owner: duo; Tablespace: 
--

ALTER TABLE ONLY "CSDB_IPAddresses"
    ADD CONSTRAINT "CSDB_IPAddresses_pkey" PRIMARY KEY (id);


--
-- Name: CSDB_ImageDependance_pkey; Type: CONSTRAINT; Schema: public; Owner: duo; Tablespace: 
--

ALTER TABLE ONLY "CSDB_ImageDependance"
    ADD CONSTRAINT "CSDB_ImageDependance_pkey" PRIMARY KEY ("DependentID", "CSDBImageId");


--
-- Name: CSDB_Images_Name_key; Type: CONSTRAINT; Schema: public; Owner: duo; Tablespace: 
--

ALTER TABLE ONLY "CSDB_Images"
    ADD CONSTRAINT "CSDB_Images_Name_key" UNIQUE ("Name");


--
-- Name: CSDB_Images_pkey; Type: CONSTRAINT; Schema: public; Owner: duo; Tablespace: 
--

ALTER TABLE ONLY "CSDB_Images"
    ADD CONSTRAINT "CSDB_Images_pkey" PRIMARY KEY (id);


--
-- Name: CSDB_LimitInfos_pkey; Type: CONSTRAINT; Schema: public; Owner: duo; Tablespace: 
--

ALTER TABLE ONLY "CSDB_LimitInfos"
    ADD CONSTRAINT "CSDB_LimitInfos_pkey" PRIMARY KEY ("LimitId");


--
-- Name: CSDB_LoadBalancers_pkey; Type: CONSTRAINT; Schema: public; Owner: duo; Tablespace: 
--

ALTER TABLE ONLY "CSDB_LoadBalancers"
    ADD CONSTRAINT "CSDB_LoadBalancers_pkey" PRIMARY KEY (id);


--
-- Name: CSDB_Networks_pkey; Type: CONSTRAINT; Schema: public; Owner: duo; Tablespace: 
--

ALTER TABLE ONLY "CSDB_Networks"
    ADD CONSTRAINT "CSDB_Networks_pkey" PRIMARY KEY (id);


--
-- Name: CSDB_PBXMasterData_pkey; Type: CONSTRAINT; Schema: public; Owner: duo; Tablespace: 
--

ALTER TABLE ONLY "CSDB_PBXMasterData"
    ADD CONSTRAINT "CSDB_PBXMasterData_pkey" PRIMARY KEY (id);


--
-- Name: CSDB_PBXUserTemplates_pkey; Type: CONSTRAINT; Schema: public; Owner: duo; Tablespace: 
--

ALTER TABLE ONLY "CSDB_PBXUserTemplates"
    ADD CONSTRAINT "CSDB_PBXUserTemplates_pkey" PRIMARY KEY (id);


--
-- Name: CSDB_PBXUsers_pkey; Type: CONSTRAINT; Schema: public; Owner: duo; Tablespace: 
--

ALTER TABLE ONLY "CSDB_PBXUsers"
    ADD CONSTRAINT "CSDB_PBXUsers_pkey" PRIMARY KEY ("UserUuid");


--
-- Name: CSDB_PhoneNumbers_pkey; Type: CONSTRAINT; Schema: public; Owner: duo; Tablespace: 
--

ALTER TABLE ONLY "CSDB_PhoneNumbers"
    ADD CONSTRAINT "CSDB_PhoneNumbers_pkey" PRIMARY KEY (id);


--
-- Name: CSDB_Resources_pkey; Type: CONSTRAINT; Schema: public; Owner: duo; Tablespace: 
--

ALTER TABLE ONLY "CSDB_Resources"
    ADD CONSTRAINT "CSDB_Resources_pkey" PRIMARY KEY (id);


--
-- Name: CSDB_Schedules_pkey; Type: CONSTRAINT; Schema: public; Owner: duo; Tablespace: 
--

ALTER TABLE ONLY "CSDB_Schedules"
    ADD CONSTRAINT "CSDB_Schedules_pkey" PRIMARY KEY (id);


--
-- Name: CSDB_ServiceDeploymentDistributions_pkey; Type: CONSTRAINT; Schema: public; Owner: duo; Tablespace: 
--

ALTER TABLE ONLY "CSDB_ServiceDeploymentDistributions"
    ADD CONSTRAINT "CSDB_ServiceDeploymentDistributions_pkey" PRIMARY KEY (id);


--
-- Name: CSDB_Services_pkey; Type: CONSTRAINT; Schema: public; Owner: duo; Tablespace: 
--

ALTER TABLE ONLY "CSDB_Services"
    ADD CONSTRAINT "CSDB_Services_pkey" PRIMARY KEY (id);


--
-- Name: CSDB_SipNetworkProfiles_InternalIp_Port_key; Type: CONSTRAINT; Schema: public; Owner: duo; Tablespace: 
--

ALTER TABLE ONLY "CSDB_SipNetworkProfiles"
    ADD CONSTRAINT "CSDB_SipNetworkProfiles_InternalIp_Port_key" UNIQUE ("InternalIp", "Port");


--
-- Name: CSDB_SipNetworkProfiles_pkey; Type: CONSTRAINT; Schema: public; Owner: duo; Tablespace: 
--

ALTER TABLE ONLY "CSDB_SipNetworkProfiles"
    ADD CONSTRAINT "CSDB_SipNetworkProfiles_pkey" PRIMARY KEY (id);


--
-- Name: CSDB_SipUACEndpoints_pkey; Type: CONSTRAINT; Schema: public; Owner: duo; Tablespace: 
--

ALTER TABLE ONLY "CSDB_SipUACEndpoints"
    ADD CONSTRAINT "CSDB_SipUACEndpoints_pkey" PRIMARY KEY (id);


--
-- Name: CSDB_TemplateImages_pkey; Type: CONSTRAINT; Schema: public; Owner: duo; Tablespace: 
--

ALTER TABLE ONLY "CSDB_TemplateImages"
    ADD CONSTRAINT "CSDB_TemplateImages_pkey" PRIMARY KEY ("CSDBTemplateId", "CSDBImageId");


--
-- Name: CSDB_Templates_Name_key; Type: CONSTRAINT; Schema: public; Owner: duo; Tablespace: 
--

ALTER TABLE ONLY "CSDB_Templates"
    ADD CONSTRAINT "CSDB_Templates_Name_key" UNIQUE ("Name");


--
-- Name: CSDB_Templates_pkey; Type: CONSTRAINT; Schema: public; Owner: duo; Tablespace: 
--

ALTER TABLE ONLY "CSDB_Templates"
    ADD CONSTRAINT "CSDB_Templates_pkey" PRIMARY KEY (id);


--
-- Name: CSDB_Translations_pkey; Type: CONSTRAINT; Schema: public; Owner: duo; Tablespace: 
--

ALTER TABLE ONLY "CSDB_Translations"
    ADD CONSTRAINT "CSDB_Translations_pkey" PRIMARY KEY (id);


--
-- Name: CSDB_TrunkOperators_pkey; Type: CONSTRAINT; Schema: public; Owner: duo; Tablespace: 
--

ALTER TABLE ONLY "CSDB_TrunkOperators"
    ADD CONSTRAINT "CSDB_TrunkOperators_pkey" PRIMARY KEY (id);


--
-- Name: CSDB_Trunks_pkey; Type: CONSTRAINT; Schema: public; Owner: duo; Tablespace: 
--

ALTER TABLE ONLY "CSDB_Trunks"
    ADD CONSTRAINT "CSDB_Trunks_pkey" PRIMARY KEY (id);


--
-- Name: CSDB_UserGroups_pkey; Type: CONSTRAINT; Schema: public; Owner: duo; Tablespace: 
--

ALTER TABLE ONLY "CSDB_UserGroups"
    ADD CONSTRAINT "CSDB_UserGroups_pkey" PRIMARY KEY (id);


--
-- Name: CSDB_UsrGrpJunction_pkey; Type: CONSTRAINT; Schema: public; Owner: duo; Tablespace: 
--

ALTER TABLE ONLY "CSDB_UsrGrpJunction"
    ADD CONSTRAINT "CSDB_UsrGrpJunction_pkey" PRIMARY KEY ("CSDBSipUACEndpointId", "CSDBUserGroupId");


--
-- Name: CSDB_Variables_pkey; Type: CONSTRAINT; Schema: public; Owner: duo; Tablespace: 
--

ALTER TABLE ONLY "CSDB_Variables"
    ADD CONSTRAINT "CSDB_Variables_pkey" PRIMARY KEY (id);


--
-- Name: CSDB_Volumes_pkey; Type: CONSTRAINT; Schema: public; Owner: duo; Tablespace: 
--

ALTER TABLE ONLY "CSDB_Volumes"
    ADD CONSTRAINT "CSDB_Volumes_pkey" PRIMARY KEY (id);


--
-- Name: DB_CAMP_CallbackInfos_pkey; Type: CONSTRAINT; Schema: public; Owner: duo; Tablespace: 
--

ALTER TABLE ONLY "DB_CAMP_CallbackInfos"
    ADD CONSTRAINT "DB_CAMP_CallbackInfos_pkey" PRIMARY KEY ("CallBackId");


--
-- Name: DB_CAMP_CampContactCategories_pkey; Type: CONSTRAINT; Schema: public; Owner: duo; Tablespace: 
--

ALTER TABLE ONLY "DB_CAMP_CampContactCategories"
    ADD CONSTRAINT "DB_CAMP_CampContactCategories_pkey" PRIMARY KEY ("CategoryID");


--
-- Name: DB_CAMP_CampDialoutInfos_pkey; Type: CONSTRAINT; Schema: public; Owner: duo; Tablespace: 
--

ALTER TABLE ONLY "DB_CAMP_CampDialoutInfos"
    ADD CONSTRAINT "DB_CAMP_CampDialoutInfos_pkey" PRIMARY KEY ("DialoutId");


--
-- Name: DB_CAMP_CampaignInfos_pkey; Type: CONSTRAINT; Schema: public; Owner: duo; Tablespace: 
--

ALTER TABLE ONLY "DB_CAMP_CampaignInfos"
    ADD CONSTRAINT "DB_CAMP_CampaignInfos_pkey" PRIMARY KEY ("CampaignId");


--
-- Name: DB_CAMP_Configurations_pkey; Type: CONSTRAINT; Schema: public; Owner: duo; Tablespace: 
--

ALTER TABLE ONLY "DB_CAMP_Configurations"
    ADD CONSTRAINT "DB_CAMP_Configurations_pkey" PRIMARY KEY ("ConfigureId");


--
-- Name: DB_CAMP_ContactInfos_ContactId_CategoryID_TenantId_CompanyI_key; Type: CONSTRAINT; Schema: public; Owner: duo; Tablespace: 
--

ALTER TABLE ONLY "DB_CAMP_ContactInfos"
    ADD CONSTRAINT "DB_CAMP_ContactInfos_ContactId_CategoryID_TenantId_CompanyI_key" UNIQUE ("ContactId", "CategoryID", "TenantId", "CompanyId");


--
-- Name: DB_CAMP_ContactInfos_pkey; Type: CONSTRAINT; Schema: public; Owner: duo; Tablespace: 
--

ALTER TABLE ONLY "DB_CAMP_ContactInfos"
    ADD CONSTRAINT "DB_CAMP_ContactInfos_pkey" PRIMARY KEY ("CamContactId");


--
-- Name: DB_CAMP_ContactSchedules_pkey; Type: CONSTRAINT; Schema: public; Owner: duo; Tablespace: 
--

ALTER TABLE ONLY "DB_CAMP_ContactSchedules"
    ADD CONSTRAINT "DB_CAMP_ContactSchedules_pkey" PRIMARY KEY ("ContactScheduleId");


--
-- Name: DB_CAMP_OngoingCampaigns_pkey; Type: CONSTRAINT; Schema: public; Owner: duo; Tablespace: 
--

ALTER TABLE ONLY "DB_CAMP_OngoingCampaigns"
    ADD CONSTRAINT "DB_CAMP_OngoingCampaigns_pkey" PRIMARY KEY (id);


--
-- Name: DB_CAMP_ScheduleInfos_pkey; Type: CONSTRAINT; Schema: public; Owner: duo; Tablespace: 
--

ALTER TABLE ONLY "DB_CAMP_ScheduleInfos"
    ADD CONSTRAINT "DB_CAMP_ScheduleInfos_pkey" PRIMARY KEY ("CamScheduleId");


--
-- Name: DidNumbers_pkey; Type: CONSTRAINT; Schema: public; Owner: duo; Tablespace: 
--

ALTER TABLE ONLY "DidNumbers"
    ADD CONSTRAINT "DidNumbers_pkey" PRIMARY KEY (id);


--
-- Name: CSDB_Actions_ActionsId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_Actions"
    ADD CONSTRAINT "CSDB_Actions_ActionsId_fkey" FOREIGN KEY ("ActionsId") REFERENCES "CSDB_AutoAttendants"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: CSDB_Actions_CSDBAutoAttendantId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_Actions"
    ADD CONSTRAINT "CSDB_Actions_CSDBAutoAttendantId_fkey" FOREIGN KEY ("CSDBAutoAttendantId") REFERENCES "CSDB_AutoAttendants"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: CSDB_Applications_AppDeveloperId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_Applications"
    ADD CONSTRAINT "CSDB_Applications_AppDeveloperId_fkey" FOREIGN KEY ("AppDeveloperId") REFERENCES "CSDB_AppDevelopers"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: CSDB_Applications_MasterApplicationId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_Applications"
    ADD CONSTRAINT "CSDB_Applications_MasterApplicationId_fkey" FOREIGN KEY ("MasterApplicationId") REFERENCES "CSDB_Applications"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: CSDB_Appointments_ScheduleId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_Appointments"
    ADD CONSTRAINT "CSDB_Appointments_ScheduleId_fkey" FOREIGN KEY ("ScheduleId") REFERENCES "CSDB_Schedules"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: CSDB_BaseAttachJunction_CSDBAttachedServiceId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_BaseAttachJunction"
    ADD CONSTRAINT "CSDB_BaseAttachJunction_CSDBAttachedServiceId_fkey" FOREIGN KEY ("CSDBAttachedServiceId") REFERENCES "CSDB_AttachedServices"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: CSDB_BaseAttachJunction_CSDBBaseServiceId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_BaseAttachJunction"
    ADD CONSTRAINT "CSDB_BaseAttachJunction_CSDBBaseServiceId_fkey" FOREIGN KEY ("CSDBBaseServiceId") REFERENCES "CSDB_BaseServices"(id);


--
-- Name: CSDB_BaseExtendedJunction_CSDBBaseServiceId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_BaseExtendedJunction"
    ADD CONSTRAINT "CSDB_BaseExtendedJunction_CSDBBaseServiceId_fkey" FOREIGN KEY ("CSDBBaseServiceId") REFERENCES "CSDB_BaseServices"(id);


--
-- Name: CSDB_BaseExtendedJunction_CSDBExtendedServiceId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_BaseExtendedJunction"
    ADD CONSTRAINT "CSDB_BaseExtendedJunction_CSDBExtendedServiceId_fkey" FOREIGN KEY ("CSDBExtendedServiceId") REFERENCES "CSDB_ExtendedServices"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: CSDB_CallRules_ANITranslationId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_CallRules"
    ADD CONSTRAINT "CSDB_CallRules_ANITranslationId_fkey" FOREIGN KEY ("ANITranslationId") REFERENCES "CSDB_Translations"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: CSDB_CallRules_AppId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_CallRules"
    ADD CONSTRAINT "CSDB_CallRules_AppId_fkey" FOREIGN KEY ("AppId") REFERENCES "CSDB_Applications"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: CSDB_CallRules_PhoneNumId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_CallRules"
    ADD CONSTRAINT "CSDB_CallRules_PhoneNumId_fkey" FOREIGN KEY ("PhoneNumId") REFERENCES "CSDB_PhoneNumbers"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: CSDB_CallRules_ScheduleId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_CallRules"
    ADD CONSTRAINT "CSDB_CallRules_ScheduleId_fkey" FOREIGN KEY ("ScheduleId") REFERENCES "CSDB_Schedules"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: CSDB_CallRules_TranslationId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_CallRules"
    ADD CONSTRAINT "CSDB_CallRules_TranslationId_fkey" FOREIGN KEY ("TranslationId") REFERENCES "CSDB_Translations"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: CSDB_CallServers_ClusterId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_CallServers"
    ADD CONSTRAINT "CSDB_CallServers_ClusterId_fkey" FOREIGN KEY ("ClusterId") REFERENCES "CSDB_Clusters"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: CSDB_CloudEndUsers_ClusterId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_CloudEndUsers"
    ADD CONSTRAINT "CSDB_CloudEndUsers_ClusterId_fkey" FOREIGN KEY ("ClusterId") REFERENCES "CSDB_Clusters"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: CSDB_CloudEndUsers_NetworkId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_CloudEndUsers"
    ADD CONSTRAINT "CSDB_CloudEndUsers_NetworkId_fkey" FOREIGN KEY ("NetworkId") REFERENCES "CSDB_Networks"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: CSDB_CloudEndUsers_SipNetworkProfileId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_CloudEndUsers"
    ADD CONSTRAINT "CSDB_CloudEndUsers_SipNetworkProfileId_fkey" FOREIGN KEY ("SipNetworkProfileId") REFERENCES "CSDB_SipNetworkProfiles"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: CSDB_Clusters_LoadBalancerId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_Clusters"
    ADD CONSTRAINT "CSDB_Clusters_LoadBalancerId_fkey" FOREIGN KEY ("LoadBalancerId") REFERENCES "CSDB_LoadBalancers"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: CSDB_Clusters_ParentCloudId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_Clusters"
    ADD CONSTRAINT "CSDB_Clusters_ParentCloudId_fkey" FOREIGN KEY ("ParentCloudId") REFERENCES "CSDB_Clusters"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: CSDB_ConferenceUsers_ConferenceId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_ConferenceUsers"
    ADD CONSTRAINT "CSDB_ConferenceUsers_ConferenceId_fkey" FOREIGN KEY ("ConferenceId") REFERENCES "CSDB_Conferences"("ConferenceName") ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: CSDB_ConferenceUsers_SipUACEndpointId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_ConferenceUsers"
    ADD CONSTRAINT "CSDB_ConferenceUsers_SipUACEndpointId_fkey" FOREIGN KEY ("SipUACEndpointId") REFERENCES "CSDB_SipUACEndpoints"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: CSDB_Conferences_CloudEndUserId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_Conferences"
    ADD CONSTRAINT "CSDB_Conferences_CloudEndUserId_fkey" FOREIGN KEY ("CloudEndUserId") REFERENCES "CSDB_CloudEndUsers"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: CSDB_Conferences_ExtensionId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_Conferences"
    ADD CONSTRAINT "CSDB_Conferences_ExtensionId_fkey" FOREIGN KEY ("ExtensionId") REFERENCES "CSDB_Extensions"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: CSDB_DidNumbers_ExtensionId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_DidNumbers"
    ADD CONSTRAINT "CSDB_DidNumbers_ExtensionId_fkey" FOREIGN KEY ("ExtensionId") REFERENCES "CSDB_Extensions"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: CSDB_ExtendedAttachJunction_CSDBAttachedServiceId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_ExtendedAttachJunction"
    ADD CONSTRAINT "CSDB_ExtendedAttachJunction_CSDBAttachedServiceId_fkey" FOREIGN KEY ("CSDBAttachedServiceId") REFERENCES "CSDB_AttachedServices"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: CSDB_ExtendedAttachJunction_CSDBExtendedServiceId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_ExtendedAttachJunction"
    ADD CONSTRAINT "CSDB_ExtendedAttachJunction_CSDBExtendedServiceId_fkey" FOREIGN KEY ("CSDBExtendedServiceId") REFERENCES "CSDB_ExtendedServices"(id);


--
-- Name: CSDB_FileUploads_ApplicationId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_FileUploads"
    ADD CONSTRAINT "CSDB_FileUploads_ApplicationId_fkey" FOREIGN KEY ("ApplicationId") REFERENCES "CSDB_Applications"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: CSDB_FollowMes_DestinationUserUuid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_FollowMes"
    ADD CONSTRAINT "CSDB_FollowMes_DestinationUserUuid_fkey" FOREIGN KEY ("DestinationUserUuid") REFERENCES "CSDB_PBXUsers"("UserUuid") ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: CSDB_FollowMes_PBXUserUuid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_FollowMes"
    ADD CONSTRAINT "CSDB_FollowMes_PBXUserUuid_fkey" FOREIGN KEY ("PBXUserUuid") REFERENCES "CSDB_PBXUsers"("UserUuid") ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: CSDB_Forwardings_DestinationUserUuid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_Forwardings"
    ADD CONSTRAINT "CSDB_Forwardings_DestinationUserUuid_fkey" FOREIGN KEY ("DestinationUserUuid") REFERENCES "CSDB_PBXUsers"("UserUuid") ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: CSDB_Forwardings_PBXUserUuid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_Forwardings"
    ADD CONSTRAINT "CSDB_Forwardings_PBXUserUuid_fkey" FOREIGN KEY ("PBXUserUuid") REFERENCES "CSDB_PBXUsers"("UserUuid") ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: CSDB_IPAddresses_CallServerId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_IPAddresses"
    ADD CONSTRAINT "CSDB_IPAddresses_CallServerId_fkey" FOREIGN KEY ("CallServerId") REFERENCES "CSDB_CallServers"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: CSDB_ImageDependance_CSDBImageId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_ImageDependance"
    ADD CONSTRAINT "CSDB_ImageDependance_CSDBImageId_fkey" FOREIGN KEY ("CSDBImageId") REFERENCES "CSDB_Images"(id);


--
-- Name: CSDB_ImageDependance_DependentID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_ImageDependance"
    ADD CONSTRAINT "CSDB_ImageDependance_DependentID_fkey" FOREIGN KEY ("DependentID") REFERENCES "CSDB_Images"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: CSDB_Networks_ClusterId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_Networks"
    ADD CONSTRAINT "CSDB_Networks_ClusterId_fkey" FOREIGN KEY ("ClusterId") REFERENCES "CSDB_Clusters"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: CSDB_PBXUsers_PBXUserTemplateId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_PBXUsers"
    ADD CONSTRAINT "CSDB_PBXUsers_PBXUserTemplateId_fkey" FOREIGN KEY ("PBXUserTemplateId") REFERENCES "CSDB_PBXUserTemplates"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: CSDB_PhoneNumbers_BothLimitId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_PhoneNumbers"
    ADD CONSTRAINT "CSDB_PhoneNumbers_BothLimitId_fkey" FOREIGN KEY ("BothLimitId") REFERENCES "CSDB_LimitInfos"("LimitId") ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: CSDB_PhoneNumbers_InboundLimitId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_PhoneNumbers"
    ADD CONSTRAINT "CSDB_PhoneNumbers_InboundLimitId_fkey" FOREIGN KEY ("InboundLimitId") REFERENCES "CSDB_LimitInfos"("LimitId") ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: CSDB_PhoneNumbers_OutboundLimitId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_PhoneNumbers"
    ADD CONSTRAINT "CSDB_PhoneNumbers_OutboundLimitId_fkey" FOREIGN KEY ("OutboundLimitId") REFERENCES "CSDB_LimitInfos"("LimitId") ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: CSDB_PhoneNumbers_ScheduleId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_PhoneNumbers"
    ADD CONSTRAINT "CSDB_PhoneNumbers_ScheduleId_fkey" FOREIGN KEY ("ScheduleId") REFERENCES "CSDB_Schedules"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: CSDB_PhoneNumbers_TrunkId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_PhoneNumbers"
    ADD CONSTRAINT "CSDB_PhoneNumbers_TrunkId_fkey" FOREIGN KEY ("TrunkId") REFERENCES "CSDB_Trunks"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: CSDB_Services_CSDBImageId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_Services"
    ADD CONSTRAINT "CSDB_Services_CSDBImageId_fkey" FOREIGN KEY ("CSDBImageId") REFERENCES "CSDB_Images"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: CSDB_Services_ServicesId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_Services"
    ADD CONSTRAINT "CSDB_Services_ServicesId_fkey" FOREIGN KEY ("ServicesId") REFERENCES "CSDB_Images"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: CSDB_SipNetworkProfiles_CallServerId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_SipNetworkProfiles"
    ADD CONSTRAINT "CSDB_SipNetworkProfiles_CallServerId_fkey" FOREIGN KEY ("CallServerId") REFERENCES "CSDB_CallServers"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: CSDB_SipUACEndpoints_CloudEndUserId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_SipUACEndpoints"
    ADD CONSTRAINT "CSDB_SipUACEndpoints_CloudEndUserId_fkey" FOREIGN KEY ("CloudEndUserId") REFERENCES "CSDB_CloudEndUsers"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: CSDB_SipUACEndpoints_ContextId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_SipUACEndpoints"
    ADD CONSTRAINT "CSDB_SipUACEndpoints_ContextId_fkey" FOREIGN KEY ("ContextId") REFERENCES "CSDB_Contexts"("Context") ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: CSDB_SipUACEndpoints_ExtensionId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_SipUACEndpoints"
    ADD CONSTRAINT "CSDB_SipUACEndpoints_ExtensionId_fkey" FOREIGN KEY ("ExtensionId") REFERENCES "CSDB_Extensions"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: CSDB_TemplateImages_CSDBImageId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_TemplateImages"
    ADD CONSTRAINT "CSDB_TemplateImages_CSDBImageId_fkey" FOREIGN KEY ("CSDBImageId") REFERENCES "CSDB_Images"(id);


--
-- Name: CSDB_TemplateImages_CSDBTemplateId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_TemplateImages"
    ADD CONSTRAINT "CSDB_TemplateImages_CSDBTemplateId_fkey" FOREIGN KEY ("CSDBTemplateId") REFERENCES "CSDB_Templates"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: CSDB_Trunks_LoadBalancerId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_Trunks"
    ADD CONSTRAINT "CSDB_Trunks_LoadBalancerId_fkey" FOREIGN KEY ("LoadBalancerId") REFERENCES "CSDB_LoadBalancers"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: CSDB_Trunks_ProfileId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_Trunks"
    ADD CONSTRAINT "CSDB_Trunks_ProfileId_fkey" FOREIGN KEY ("ProfileId") REFERENCES "CSDB_SipNetworkProfiles"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: CSDB_Trunks_TranslationId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_Trunks"
    ADD CONSTRAINT "CSDB_Trunks_TranslationId_fkey" FOREIGN KEY ("TranslationId") REFERENCES "CSDB_Translations"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: CSDB_Trunks_TrunkOperatorId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_Trunks"
    ADD CONSTRAINT "CSDB_Trunks_TrunkOperatorId_fkey" FOREIGN KEY ("TrunkOperatorId") REFERENCES "CSDB_TrunkOperators"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: CSDB_UserGroups_ExtensionId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_UserGroups"
    ADD CONSTRAINT "CSDB_UserGroups_ExtensionId_fkey" FOREIGN KEY ("ExtensionId") REFERENCES "CSDB_Extensions"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: CSDB_UsrGrpJunction_CSDBSipUACEndpointId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_UsrGrpJunction"
    ADD CONSTRAINT "CSDB_UsrGrpJunction_CSDBSipUACEndpointId_fkey" FOREIGN KEY ("CSDBSipUACEndpointId") REFERENCES "CSDB_SipUACEndpoints"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: CSDB_UsrGrpJunction_CSDBUserGroupId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_UsrGrpJunction"
    ADD CONSTRAINT "CSDB_UsrGrpJunction_CSDBUserGroupId_fkey" FOREIGN KEY ("CSDBUserGroupId") REFERENCES "CSDB_UserGroups"(id);


--
-- Name: CSDB_Variables_CSDBImageId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_Variables"
    ADD CONSTRAINT "CSDB_Variables_CSDBImageId_fkey" FOREIGN KEY ("CSDBImageId") REFERENCES "CSDB_Images"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: CSDB_Variables_SystemVariablesId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_Variables"
    ADD CONSTRAINT "CSDB_Variables_SystemVariablesId_fkey" FOREIGN KEY ("SystemVariablesId") REFERENCES "CSDB_Images"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: CSDB_Volumes_CSDBImageId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_Volumes"
    ADD CONSTRAINT "CSDB_Volumes_CSDBImageId_fkey" FOREIGN KEY ("CSDBImageId") REFERENCES "CSDB_Images"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: CSDB_Volumes_SystemVolumesId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "CSDB_Volumes"
    ADD CONSTRAINT "CSDB_Volumes_SystemVolumesId_fkey" FOREIGN KEY ("SystemVolumesId") REFERENCES "CSDB_Images"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: DB_CAMP_CallbackInfos_CamScheduleId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "DB_CAMP_CallbackInfos"
    ADD CONSTRAINT "DB_CAMP_CallbackInfos_CamScheduleId_fkey" FOREIGN KEY ("CamScheduleId") REFERENCES "DB_CAMP_ScheduleInfos"("CamScheduleId") ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: DB_CAMP_CallbackInfos_CampaignId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "DB_CAMP_CallbackInfos"
    ADD CONSTRAINT "DB_CAMP_CallbackInfos_CampaignId_fkey" FOREIGN KEY ("CampaignId") REFERENCES "DB_CAMP_CampaignInfos"("CampaignId") ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: DB_CAMP_Configurations_CampaignId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "DB_CAMP_Configurations"
    ADD CONSTRAINT "DB_CAMP_Configurations_CampaignId_fkey" FOREIGN KEY ("CampaignId") REFERENCES "DB_CAMP_CampaignInfos"("CampaignId") ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: DB_CAMP_ContactInfos_CategoryID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "DB_CAMP_ContactInfos"
    ADD CONSTRAINT "DB_CAMP_ContactInfos_CategoryID_fkey" FOREIGN KEY ("CategoryID") REFERENCES "DB_CAMP_CampContactCategories"("CategoryID") ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: DB_CAMP_ContactSchedules_CamContactId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "DB_CAMP_ContactSchedules"
    ADD CONSTRAINT "DB_CAMP_ContactSchedules_CamContactId_fkey" FOREIGN KEY ("CamContactId") REFERENCES "DB_CAMP_ContactInfos"("CamContactId") ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: DB_CAMP_ContactSchedules_CamScheduleId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "DB_CAMP_ContactSchedules"
    ADD CONSTRAINT "DB_CAMP_ContactSchedules_CamScheduleId_fkey" FOREIGN KEY ("CamScheduleId") REFERENCES "DB_CAMP_ScheduleInfos"("CamScheduleId") ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: DB_CAMP_ContactSchedules_CampaignId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "DB_CAMP_ContactSchedules"
    ADD CONSTRAINT "DB_CAMP_ContactSchedules_CampaignId_fkey" FOREIGN KEY ("CampaignId") REFERENCES "DB_CAMP_CampaignInfos"("CampaignId") ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: DB_CAMP_OngoingCampaigns_CampaignId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "DB_CAMP_OngoingCampaigns"
    ADD CONSTRAINT "DB_CAMP_OngoingCampaigns_CampaignId_fkey" FOREIGN KEY ("CampaignId") REFERENCES "DB_CAMP_CampaignInfos"("CampaignId") ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: DB_CAMP_ScheduleInfos_CampaignId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: duo
--

ALTER TABLE ONLY "DB_CAMP_ScheduleInfos"
    ADD CONSTRAINT "DB_CAMP_ScheduleInfos_CampaignId_fkey" FOREIGN KEY ("CampaignId") REFERENCES "DB_CAMP_CampaignInfos"("CampaignId") ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

