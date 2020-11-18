BEGIN TRANSACTION;
CREATE TABLE "Account" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	"ParentId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Account" VALUES(1,'Test Foods','');
CREATE TABLE "Delivery_Item__c" (
	id INTEGER NOT NULL, 
	"Food_Expiration_Date__c" VARCHAR(255), 
	"Food_Storage__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"Delivery__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Delivery_Item__c" VALUES(1,'2020-12-10','Refrigerated','Peas Frozen','3');
INSERT INTO "Delivery_Item__c" VALUES(2,'2020-11-19','Non-refrigerated','Tomatoes','1');
INSERT INTO "Delivery_Item__c" VALUES(3,'2020-11-27','Frozen','Ice Cream','2');
CREATE TABLE "Delivery__c" (
	id INTEGER NOT NULL, 
	"Scheduled_Date__c" VARCHAR(255), 
	"Status__c" VARCHAR(255), 
	"Supplier__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Delivery__c" VALUES(1,'2020-11-19T01:00:00.000+0000','Requested','1');
INSERT INTO "Delivery__c" VALUES(2,'2020-11-20T01:00:00.000+0000','Requested','1');
INSERT INTO "Delivery__c" VALUES(3,'2020-11-26T01:00:00.000+0000','Scheduled','1');
COMMIT;
