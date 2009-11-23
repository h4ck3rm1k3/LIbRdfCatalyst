package RedLandMySql::Schema_new::Result::OwlTypePredicatesView;

use strict;
use warnings;

use base 'DBIx::Class';

__PACKAGE__->load_components("InflateColumn::DateTime", "Core");
__PACKAGE__->table("OWL_TYPE_PREDICATES_VIEW");
__PACKAGE__->add_columns(
  "substring(subject_uri,length(subject_uri)-15)",
  {
    data_type => "LONGTEXT",
    default_value => undef,
    is_nullable => 0,
    size => 4294967295,
  },
  "substring(predicate_uri,length(predicate_uri)-15)",
  {
    data_type => "LONGTEXT",
    default_value => undef,
    is_nullable => 0,
    size => 4294967295,
  },
  "substring(object_uri,length(object_uri)-15)",
  {
    data_type => "LONGTEXT",
    default_value => undef,
    is_nullable => 0,
    size => 4294967295,
  },
  "countobjects",
  { data_type => "BIGINT", default_value => 0, is_nullable => 0, size => 21 },
  "subject_id",
  { data_type => "BIGINT", default_value => undef, is_nullable => 0, size => 20 },
  "object_id",
  { data_type => "BIGINT", default_value => undef, is_nullable => 0, size => 20 },
  "predicate_id",
  { data_type => "BIGINT", default_value => undef, is_nullable => 0, size => 20 },
);


# Created by DBIx::Class::Schema::Loader v0.04006 @ 2009-11-21 10:05:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:HKena0EK7eA4wUlfWKUKuA


# You can replace this text with custom content, and it will be preserved on regeneration
1;
