create table settings
(
    id            number generated by default on null as identity primary key,
    setting_name  varchar2(100) unique not null,
    setting_value clob not null
);