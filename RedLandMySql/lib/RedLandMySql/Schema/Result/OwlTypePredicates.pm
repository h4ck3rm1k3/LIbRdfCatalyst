package RedLandMySql::Schema::Result::OwlTypePredicates;

use strict;
use warnings;

use base 'DBIx::Class';

__PACKAGE__->load_components("InflateColumn::DateTime", "Core");
__PACKAGE__->table("OWL_TYPE_PREDICATES");
__PACKAGE__->add_columns(
  "countobjects",
  { data_type => "BIGINT", default_value => 0, is_nullable => 0, size => 21 },
  "subject_uri",
  {
    data_type => "TEXT",
    default_value => undef,
    is_nullable => 0,
    size => 65535,
  },
  "predicate_uri",
  {
    data_type => "TEXT",
    default_value => undef,
    is_nullable => 0,
    size => 65535,
  },
  "object_uri",
  {
    data_type => "TEXT",
    default_value => undef,
    is_nullable => 0,
    size => 65535,
  },
  "subject_id",
  { data_type => "BIGINT", default_value => undef, is_nullable => 0, size => 20 },
  "predicate_id",
  { data_type => "BIGINT", default_value => undef, is_nullable => 0, size => 20 },
  "object_id",
  { data_type => "BIGINT", default_value => undef, is_nullable => 0, size => 20 },
);


# Created by DBIx::Class::Schema::Loader v0.04006 @ 2009-11-21 10:33:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:a8MGLGMhN9jfbDqPVW16Jw


# You can replace this text with custom content, and it will be preserved on regeneration
1;
