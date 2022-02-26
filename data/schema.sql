create table user
  (
    id integer primary key AUTOINCREMENT not null,
    name text not null,
    password text not null
  );
create unique index user_name on user(name);

create table weight_record
  (
    id integer primary key AUTOINCREMENT not null,
    user_id integer not null,
    time datetime not null,
    weight float(5, 2) not null
  );

