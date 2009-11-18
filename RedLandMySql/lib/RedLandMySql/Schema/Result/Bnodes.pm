package RedLandMySql::Schema::Result::Bnodes;

use strict;
use warnings;

use base 'DBIx::Class';

__PACKAGE__->load_components("InflateColumn::DateTime", "Core");
__PACKAGE__->table("Bnodes");
__PACKAGE__->add_columns(
  "id",
  { data_type => "BIGINT", default_value => undef, is_nullable => 0, size => 20 },
  "name",
  {
    data_type => "TEXT",
    default_value => undef,
    is_nullable => 0,
    size => 65535,
  },
);
__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.04006 @ 2009-11-16 08:56:58
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:7tz3gIOSJ1Xld7jVZtYpvw


# You can replace this text with custom content, and it will be preserved on regeneration
1;