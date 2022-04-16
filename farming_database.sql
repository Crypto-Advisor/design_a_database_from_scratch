CREATE TABLE farms(
    id integer PRIMARY KEY,
    farm_name varchar(50) NOT NULL,
    location varchar(50),
    phonenumber varchar(10),
    CONSTRAINT unique_farm UNIQUE (farm_name)
);


CREATE TABLE farm_stats(
    id integer PRIMARY KEY,
    farm_id integer REFERENCES farms(id),
    crop_yield integer NOT NULL,
    crop_type varchar(50) NOT NULL
);