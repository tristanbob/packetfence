package pf::Authentication::constants;

=head1 NAME

pf::Authentication::constants - Constants for authentication sources

=head1 DESCRIPTION

This file is splitted by packages and refering to the constant requires you to
specify the package.

=cut

use strict;
use warnings;

use Readonly;

=head1 Rules

General constants related to rules.

=cut

package Rules;

Readonly::Scalar our $ANY => 'any';
Readonly::Scalar our $ALL => 'all';

=item Class

The class of a rule in an authentication source.

Also used as class for actions in a rule.

=cut

Readonly::Scalar our $AUTH => 'auth';
Readonly::Scalar our $ADMIN => 'admin';

=head1 Conditions

Constants related to conditions rules.

=over

=cut

package Conditions;

Readonly::Scalar our $EQUALS => 'equals';
Readonly::Scalar our $CONTAINS => 'contains';
Readonly::Scalar our $STARTS => 'starts';
Readonly::Scalar our $ENDS => 'ends';
Readonly::Scalar our $MATCHES => 'matches regexp';
Readonly::Scalar our $LOWER => 'lower';
Readonly::Scalar our $LOWER_OR_EQUALS => 'lower or equals';
Readonly::Scalar our $HIGHER => 'higher';
Readonly::Scalar our $HIGHER_OR_EQUALS => 'higher or equals';
Readonly::Scalar our $IS_BEFORE => 'is before';
Readonly::Scalar our $IS => 'is';
Readonly::Scalar our $IS_NOT => 'is not';
Readonly::Scalar our $IS_AFTER => 'is after';
Readonly::Scalar our $IS_MEMBER => 'is member of';

=item SUBSTRING, NUMBER, DATE, TIME

Datatypes of conditions attributes (rules of authentication sources)

=cut

Readonly::Scalar our $SUBSTRING => 'substring';
Readonly::Scalar our $NUMBER => 'number';
Readonly::Scalar our $DATE => 'date';
Readonly::Scalar our $TIME => 'time';
Readonly::Scalar our $CONNECTION => 'connection';
Readonly::Scalar our $LDAP_ATTRIBUTE => 'ldapattribute';

=item OPERATORS

Allowed operators for each attribute datatype

=cut

Readonly::Hash our %OPERATORS =>
  (
   $SUBSTRING => [$STARTS, $EQUALS, $CONTAINS, $ENDS, $MATCHES],
   $NUMBER => [$LOWER, $LOWER_OR_EQUALS, $EQUALS, $HIGHER, $HIGHER_OR_EQUALS],
   $DATE => [$IS_BEFORE, $IS, $IS_AFTER],
   $TIME => [$IS_BEFORE, $IS_AFTER],
   $CONNECTION => [$IS, $IS_NOT],
   $LDAP_ATTRIBUTE => [$STARTS, $EQUALS, $CONTAINS, $ENDS, $MATCHES, $IS_MEMBER],
  );

=back

=head1 Actions

Constants related to actions rules.

=over

=cut

package Actions;

=item MARK_AS_SPONSORS, SET_ACCESS_LEVEL, SET_ROLE, SET_ACCESS_DURATION, SET_UNREG_DATE

Available actions

=cut

Readonly::Scalar our $MARK_AS_SPONSOR => "mark_as_sponsor";
Readonly::Scalar our $SET_ACCESS_LEVEL => "set_access_level";
Readonly::Scalar our $SET_ROLE => "set_role";
Readonly::Scalar our $SET_ACCESS_DURATION => "set_access_duration";
Readonly::Scalar our $SET_UNREG_DATE => "set_unreg_date";

=item ACTIONS

List of available actions

=cut

Readonly::Array our @ACTIONS =>
  (
   $SET_ROLE,
   $SET_ACCESS_DURATION,
   $SET_UNREG_DATE,
   $SET_ACCESS_LEVEL,
   $MARK_AS_SPONSOR,
  );

=back

=head1 AUTHOR

Inverse inc. <info@inverse.ca>

=head1 COPYRIGHT

Copyright (C) 2005-2013 Inverse inc.

=head1 LICENSE

This program is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
as published by the Free Software Foundation; either version 2
of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301,
USA.

=cut

1;

# vim: set shiftwidth=4:
# vim: set expandtab:
# vim: set backspace=indent,eol,start:
