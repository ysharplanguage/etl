create schema Warehouse;

CREATE TABLE Warehouse.Transactions (
	TaxLogId bigserial NOT NULL,
	UserId varchar NOT NULL,
	HostIPAddress varchar NOT NULL,
	StartDate timestamp NOT NULL,
	EndDate timestamp NOT NULL,
	ProfileId integer,
    TaxDataId bigserial NOT NULL,
    Billable bool,
	CategoryId integer NOT NULL,
	Compliance bool,
	TaxAmount numeric(32,16) NULL,
	TaxType varchar NOT NULL,
    TelecomTransactionId bigserial NOT NULL,
	Charge numeric(32,16) NULL,
	Date timestamp NULL,
	InvoiceNumber varchar NULL,
    CountryISO bpchar(3),
	County varchar,
	Locality varchar,
	State bpchar(2),
	Zipcode varchar(16),
	Zip4 bpchar(4)
	
);


