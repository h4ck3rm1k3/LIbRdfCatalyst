package RedLandMySql::Schema_new::Result::Resources;

use strict;
use warnings;

use base 'DBIx::Class';

__PACKAGE__->load_components("InflateColumn::DateTime", "Core");
__PACKAGE__->table("Resources");
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
);
__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.04006 @ 2009-11-21 10:05:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:gaKMYoCjIQWi5DJ6MuPL9w


# You can replace this text with custom content, and it will be preserved on regeneration
1;
