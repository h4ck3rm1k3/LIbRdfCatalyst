package RedLandMySql::Schema_new::Result::Chainednodes;

use strict;
use warnings;

use base 'DBIx::Class';

__PACKAGE__->load_components("InflateColumn::DateTime", "Core");
__PACKAGE__->table("ChainedNodes");
__PACKAGE__->add_columns(
  "firstnode",
  { data_type => "BIGINT", default_value => undef, is_nullable => 0, size => 20 },
  "position",
  { data_type => "INT", default_value => undef, is_nullable => 0, size => 11 },
  "object",
  { data_type => "BIGINT", default_value => undef, is_nullable => 0, size => 20 },
);
__PACKAGE__->set_primary_key("firstnode", "position", "object");


# Created by DBIx::Class::Schema::Loader v0.04006 @ 2009-11-21 10:05:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:5I4V5j6vGZOtP+fPnfqv/w


# You can replace this text with custom content, and it will be preserved on regeneration
1;
