create table investors(
	investor_ID int not null primary key,
	full_name char(100) not null,
	billing_address varchar(20) not null,
	phone_number varchar(20) not null,
	bank varchar(20) not null,
	bank_account int not null,
	email_address varchar(20) not null
);

create table properties(
	property_type char(30) no null,
	street_address varchar(20) not null,
	city char(20) not null,
	state char(20) not null,
	zip_code varchar(20) not null,
	property_ID int not null primary key
);

create table bills(
	bill_ID int not null primary key,
	amount float(20) not null,
	tax float(30) not null,
	principle_paid float(30) not null,
	interest float(20) not null
);

create table business(
	investor_ID int not null,
	property_ID int not null,
	bill_ID int not null,
	property_type char(30) not null,
	foreign key (investor_ID) references investors(investor_ID),
	foreign key (property_ID) references properties(property_ID)
);