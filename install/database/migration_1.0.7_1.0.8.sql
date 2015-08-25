--
-- Ionize 1.0.8 database migration
-- From 1.0.7 to 1.0.8
-- 


UPDATE setting set content='1.0.8' where name = 'ionize_version';

INSERT INTO extend_field_type (id_extend_field_type, type_name, default_values, `values`, translated, active, validate, html_element, html_element_type, html_element_class, html_element_pattern)
VALUES (9,'Color',0,0,0,1,NULL,'input','color','color w120 inputtext',NULL);

CREATE TABLE IF NOT EXISTS extend_field_article_type (
	id_extend_field INT(11) UNSIGNED NOT NULL,
	id_type int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS page_category (
  id_page INT(11) UNSIGNED NOT NULL ,
  id_category INT(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS page_tag (
  id_page int(11) UNSIGNED NOT NULL,
  id_tag int(11) UNSIGNED NOT NULL,
  PRIMARY KEY  (id_page, id_tag)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
