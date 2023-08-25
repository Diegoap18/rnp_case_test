-- public.customers definition

-- Drop table

-- DROP TABLE public.customers;

CREATE TABLE public.customers (
	customer_number int4 NOT NULL,
	customer_name varchar(50) NOT NULL,
	contact_last_name varchar(50) NOT NULL,
	contact_first_name varchar(50) NOT NULL,
	phone varchar(50) NOT NULL,
	address_line1 varchar(50) NOT NULL,
	address_line2 varchar(50) NULL DEFAULT NULL::character varying,
	city varchar(50) NOT NULL,
	state varchar(50) NULL DEFAULT NULL::character varying,
	postal_code varchar(15) NULL DEFAULT NULL::character varying,
	country varchar(50) NOT NULL,
	sales_rep_employee_number int4 NULL,
	credit_limit numeric(10, 2) NULL DEFAULT NULL::numeric
);

-- public.employees definition

-- Drop table

-- DROP TABLE public.employees;

CREATE TABLE public.employees (
	employee_number int4 NOT NULL,
	last_name varchar(50) NOT NULL,
	first_name varchar(50) NOT NULL,
	"extension" varchar(10) NOT NULL,
	email varchar(100) NOT NULL,
	office_code varchar(10) NOT NULL,
	reports_to int4 NULL,
	"job_Title" varchar(50) NOT NULL
);

-- public.offices definition

-- Drop table

-- DROP TABLE public.offices;

CREATE TABLE public.offices (
	office_code varchar(10) NOT NULL,
	city varchar(50) NOT NULL,
	phone varchar(50) NOT NULL,
	address_line1 varchar(50) NOT NULL,
	address_line2 varchar(50) NULL DEFAULT NULL::character varying,
	state varchar(50) NULL DEFAULT NULL::character varying,
	country varchar(50) NOT NULL,
	postal_code varchar(15) NOT NULL,
	territory varchar(10) NOT NULL
);

-- public.orderdetails definition

-- Drop table

-- DROP TABLE public.orderdetails;

CREATE TABLE public.orderdetails (
	order_number int4 NOT NULL,
	product_code varchar(15) NOT NULL,
	quantity_ordered int4 NOT NULL,
	price_each numeric(10, 2) NOT NULL,
	order_line_number int2 NOT NULL
);


-- public.orders definition

-- Drop table

-- DROP TABLE public.orders;

CREATE TABLE public.orders (
	order_number int4 NOT NULL,
	order_date date NOT NULL,
	required_date date NOT NULL,
	shipped_date date NULL,
	status varchar(15) NOT NULL,
	"comments" text NULL,
	customer_number int4 NOT NULL
);

-- public.payments definition

-- Drop table

-- DROP TABLE public.payments;

CREATE TABLE public.payments (
    customer_number INT,
    check_number VARCHAR(255),
    payment_date DATE,
    amount DECIMAL(10, 2)
);

-- public.product_line definition

-- Drop table

-- DROP TABLE public.product_line;
CREATE TABLE public.product_line (
    product_line VARCHAR(255) PRIMARY KEY,
    text_description TEXT,
    html_description TEXT,
    image BYTEA
);

-- public.product definition

-- Drop table

-- DROP TABLE public.product;

CREATE TABLE public.products (
    product_code VARCHAR(255) PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    product_line VARCHAR(255) NOT NULL,
    product_scale VARCHAR(50) NOT NULL,
    product_vendor VARCHAR(255) NOT NULL,
    product_description TEXT,
    quantity_in_stock INT NOT NULL,
    buy_price DECIMAL(10,2) NOT NULL,
    MSRP DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (product_line) REFERENCES product_line(product_line)
);