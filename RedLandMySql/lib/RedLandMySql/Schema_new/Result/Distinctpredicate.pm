package RedLandMySql::Schema_new::Result::Distinctpredicate;

use strict;
use warnings;

use base 'DBIx::Class';

__PACKAGE__->load_components("InflateColumn::DateTime", "Core");
__PACKAGE__->table("DistinctPredicate");
__PACKAGE__->add_columns(
  "uri",
  {
    data_type => "TEXT",
    default_value => undef,
    is_nullable => 0,
    size => 65535,
  },
);


# Created by DBIx::Class::Schema::Loader v0.04006 @ 2009-11-21 10:05:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:L4uY9x2Mr9eGalQ01XQ3vw


# You can replace this text with custom content, and it will be preserved on regeneration
1;
