create table role_permissions
(
    role_id       number not null,
    permission_id number not null,
    primary key (role_id, permission_id),
    constraint fk_role_permissions_role foreign key (role_id) references roles (id),
    constraint fk_role_permissions_permission foreign key (permission_id) references permissions (id)
);