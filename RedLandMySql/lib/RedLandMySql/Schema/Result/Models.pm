package RedLandMySql::Schema::Result::Models;

use strict;
use warnings;

use base 'DBIx::Class';

__PACKAGE__->load_components("InflateColumn::DateTime", "Core");
__PACKAGE__->table("Models");
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


# Created by DBIx::Class::Schema::Loader v0.04006 @ 2009-11-18 21:35:04
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:CjbxdTb8MCtOWlYskuc/Uw


# You can replace this text with custom content, and it will be preserved on regeneration
1;
