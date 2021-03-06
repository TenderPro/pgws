/*

    Copyright (c) 2010, 2012 Tender.Pro http://tender.pro.

    This file is part of PGWS - Postgresql WebServices.

    PGWS is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    PGWS is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with PGWS.  If not, see <http://www.gnu.org/licenses/>.

    Создание триггеров для объектов пакета acc
*/

/* ------------------------------------------------------------------------- */
CREATE TRIGGER account_contact_insupd BEFORE INSERT OR UPDATE ON wsd.account_contact
  FOR EACH ROW
  EXECUTE PROCEDURE acc.account_contact_insupd_trigger()
;

/* ------------------------------------------------------------------------- */
CREATE TRIGGER validation_email BEFORE INSERT OR UPDATE ON wsd.account_contact
  FOR EACH ROW
  WHEN (NEW.contact_type_id = acc.const_account_contact_email_id())
  EXECUTE PROCEDURE acc.validation_email_trigger()
;

/* ------------------------------------------------------------------------- */
CREATE TRIGGER validation_mobile_phone BEFORE INSERT OR UPDATE ON wsd.account_contact
  FOR EACH ROW
  WHEN (NEW.contact_type_id = acc.const_account_contact_mobile_phone_id())
  EXECUTE PROCEDURE acc.validation_phone_trigger()
;
