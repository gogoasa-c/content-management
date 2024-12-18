create table categories
(
    id         number generated by default on null as identity primary key,
    name       varchar2(100) unique not null,
    slug       varchar2(100) unique not null,
    parent_id  number,
    created_at timestamp default current_timestamp,
    updated_at timestamp default current_timestamp on update current_timestamp,
    constraint fk_categories_parent foreign key (parent_id) references categories (id)
);
