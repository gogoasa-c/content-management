create table content_tags
(
    content_id number not null,
    tag_id     number not null,
    primary key (content_id, tag_id),
    constraint fk_content_tags_content foreign key (content_id) references content (id),
    constraint fk_content_tags_tag foreign key (tag_id) references tags (id)
);
