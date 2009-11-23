package RedLandMySql::Schema::Result::OwlResource;

use strict;
use warnings;

use base 'DBIx::Class';

__PACKAGE__->load_components("InflateColumn::DateTime", "Core");
__PACKAGE__->table("OWL_RESOURCE");
__PACKAGE__->add_columns(
  "id",
  { data_type => "BIGINT", default_value => undef, is_nullable => 0, size => 20 },
  "uri",
  {
    data_type => "TEXT",
    default_value => undef,
    is_nullable => 0,
    size => 65535,
  },
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
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:eXhMc9mHnkyrLbvjwy0VIA


# You can replace this text with custom content, and it will be preserved on regeneration
1;
