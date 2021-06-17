-- for AS_ADDR_OBJ_DIVISION_2_251_19_04_01_01.xsd
create table gar.items_item
(
    id       bigint not null primary key,
    parentid bigint not null,
    childid  bigint not null,
    changeid bigint not null

);

comment on table gar.items_item is 'Сведения по операциям переподчинения';

comment on column gar.items_item.id is 'Уникальный идентификатор записи. Ключевое поле';
comment on column gar.items_item.parentid is 'Родительский ID';
comment on column gar.items_item.childid is 'Дочерний ID';
comment on column gar.items_item.changeid is 'ID изменившей транзакции';

-- <?xml version="1.0" encoding="utf-8"?>
-- <!-- edited with XMLSpy v2011 rel. 2 (http://www.altova.com) by TeaM DJiNN (TeaM DJiNN) -->
-- <xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:sch="http://purl.oclc.org/dsdl/schematron" xmlns:usch="http://www.unisoftware.ru/schematron-extensions" xmlns:sql="urn:schemas-microsoft-com:mapping-schema" elementFormDefault="qualified" attributeFormDefault="unqualified">
-- 	<xs:element name="ITEMS">
-- 		<xs:annotation>
-- 			<xs:documentation>Состав и структура файла со сведениями по операциям переподчинения</xs:documentation>
-- 		</xs:annotation>
-- 		<xs:complexType>
-- 			<xs:sequence>
-- 				<xs:element name="ITEM" minOccurs="0" maxOccurs="unbounded">
-- 					<xs:annotation>
-- 						<xs:documentation>Сведения по операциям переподчинения</xs:documentation>
-- 					</xs:annotation>
-- 					<xs:complexType>
-- 						<xs:attribute name="ID" use="required">
-- 							<xs:annotation>
-- 								<xs:documentation>Уникальный идентификатор записи. Ключевое поле</xs:documentation>
-- 							</xs:annotation>
-- 							<xs:simpleType>
-- 								<xs:restriction base="xs:long">
-- 									<xs:totalDigits value="19"/>
-- 								</xs:restriction>
-- 							</xs:simpleType>
-- 						</xs:attribute>
-- 						<xs:attribute name="PARENTID" use="required">
-- 							<xs:annotation>
-- 								<xs:documentation>Родительский ID</xs:documentation>
-- 							</xs:annotation>
-- 							<xs:simpleType>
-- 								<xs:restriction base="xs:long">
-- 									<xs:totalDigits value="19"/>
-- 								</xs:restriction>
-- 							</xs:simpleType>
-- 						</xs:attribute>
-- 						<xs:attribute name="CHILDID" use="required">
-- 							<xs:annotation>
-- 								<xs:documentation>Дочерний ID</xs:documentation>
-- 							</xs:annotation>
-- 							<xs:simpleType>
-- 								<xs:restriction base="xs:long">
-- 									<xs:totalDigits value="19"/>
-- 								</xs:restriction>
-- 							</xs:simpleType>
-- 						</xs:attribute>
-- 						<xs:attribute name="CHANGEID" type="xs:long" use="required">
-- 							<xs:annotation>
-- 								<xs:documentation>ID изменившей транзакции</xs:documentation>
-- 							</xs:annotation>
-- 						</xs:attribute>
-- 					</xs:complexType>
-- 				</xs:element>
-- 			</xs:sequence>
-- 		</xs:complexType>
-- 	</xs:element>
-- </xs:schema>