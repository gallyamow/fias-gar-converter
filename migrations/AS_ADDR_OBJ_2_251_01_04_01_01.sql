-- for AS_ADDR_OBJ_2_251_01_04_01_01.xsd
CREATE TABLE gar.addressobjects_object
(
    id bigint not null primary key,
    objectid bigint not null,
    objectguid uuid not null,
    changeid bigint not null,
    name varchar not null,
    typename varchar not null,
    level varchar not null,
    opertypeid integer,
    previd bigint,
    nextid bigint,
    updatedate date,
    startdate date,
    enddate date,
    isactual smallint,
    isactive smallint
);

COMMENT ON TABLE gar.addressobjects_object IS 'Сведения классификатора адресообразующих элементов';

COMMENT ON COLUMN gar.addressobjects_object.id IS 'Уникальный идентификатор записи. Ключевое поле';
COMMENT ON COLUMN gar.addressobjects_object.objectid IS 'Глобальный уникальный идентификатор адресного объекта типа INTEGER';
COMMENT ON COLUMN gar.addressobjects_object.objectguid IS 'Глобальный уникальный идентификатор адресного объекта типа UUID';
COMMENT ON COLUMN gar.addressobjects_object.changeid IS 'ID изменившей транзакции';
COMMENT ON COLUMN gar.addressobjects_object.name IS 'Наименование';
COMMENT ON COLUMN gar.addressobjects_object.typename IS 'Краткое наименование типа объекта';
COMMENT ON COLUMN gar.addressobjects_object.level IS 'Уровень адресного объекта';
COMMENT ON COLUMN gar.addressobjects_object.opertypeid IS 'Статус действия над записью – причина появления записи';
COMMENT ON COLUMN gar.addressobjects_object.previd IS 'Идентификатор записи связывания с предыдущей исторической записью';
COMMENT ON COLUMN gar.addressobjects_object.nextid IS 'Идентификатор записи связывания с последующей исторической записью';
COMMENT ON COLUMN gar.addressobjects_object.updatedate IS 'Дата внесения (обновления) записи';
COMMENT ON COLUMN gar.addressobjects_object.startdate IS 'Начало действия записи';
COMMENT ON COLUMN gar.addressobjects_object.enddate IS 'Окончание действия записи';
COMMENT ON COLUMN gar.addressobjects_object.isactual IS 'Статус актуальности адресного объекта ФИАС';
COMMENT ON COLUMN gar.addressobjects_object.isactive IS 'Признак действующего адресного объекта';

-- <?xml version="1.0" encoding="utf-8"?>
-- <!-- edited with XMLSpy v2011 rel. 2 (http://www.altova.com) by TeaM DJiNN (TeaM DJiNN) -->
-- <xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:sch="http://purl.oclc.org/dsdl/schematron" xmlns:usch="http://www.unisoftware.ru/schematron-extensions" xmlns:sql="urn:schemas-microsoft-com:mapping-schema" elementFormDefault="qualified" attributeFormDefault="unqualified">
-- 	<xs:element name="ADDRESSOBJECTS">
-- 		<xs:annotation>
-- 			<xs:documentation>Состав и структура файла со сведениями классификатора адресообразующих элементов БД ФИАС</xs:documentation>
-- 		</xs:annotation>
-- 		<xs:complexType>
-- 			<xs:sequence>
-- 				<xs:element name="OBJECT" maxOccurs="unbounded">
-- 					<xs:annotation>
-- 						<xs:documentation>Сведения классификатора адресообразующих элементов</xs:documentation>
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
-- 						<xs:attribute name="OBJECTID" use="required">
-- 							<xs:annotation>
-- 								<xs:documentation>Глобальный уникальный идентификатор адресного объекта типа INTEGER</xs:documentation>
-- 							</xs:annotation>
-- 							<xs:simpleType>
-- 								<xs:restriction base="xs:long">
-- 									<xs:totalDigits value="19"/>
-- 								</xs:restriction>
-- 							</xs:simpleType>
-- 						</xs:attribute>
-- 						<xs:attribute name="OBJECTGUID" use="required">
-- 							<xs:annotation>
-- 								<xs:documentation>Глобальный уникальный идентификатор адресного объекта типа UUID</xs:documentation>
-- 							</xs:annotation>
-- 							<xs:simpleType>
-- 								<xs:restriction base="xs:string">
-- 									<xs:length value="36"/>
-- 								</xs:restriction>
-- 							</xs:simpleType>
-- 						</xs:attribute>
-- 						<xs:attribute name="CHANGEID" use="required">
-- 							<xs:annotation>
-- 								<xs:documentation>ID изменившей транзакции</xs:documentation>
-- 							</xs:annotation>
-- 							<xs:simpleType>
-- 								<xs:restriction base="xs:long">
-- 									<xs:totalDigits value="19"/>
-- 								</xs:restriction>
-- 							</xs:simpleType>
-- 						</xs:attribute>
-- 						<xs:attribute name="NAME" use="required">
-- 							<xs:annotation>
-- 								<xs:documentation>Наименование</xs:documentation>
-- 							</xs:annotation>
-- 							<xs:simpleType>
-- 								<xs:restriction base="xs:string">
-- 									<xs:minLength value="1"/>
-- 									<xs:maxLength value="250"/>
-- 								</xs:restriction>
-- 							</xs:simpleType>
-- 						</xs:attribute>
-- 						<xs:attribute name="TYPENAME" use="required">
-- 							<xs:annotation>
-- 								<xs:documentation>Краткое наименование типа объекта</xs:documentation>
-- 							</xs:annotation>
-- 							<xs:simpleType>
-- 								<xs:restriction base="xs:string">
-- 									<xs:minLength value="1"/>
-- 									<xs:maxLength value="50"/>
-- 								</xs:restriction>
-- 							</xs:simpleType>
-- 						</xs:attribute>
-- 						<xs:attribute name="LEVEL" use="required">
-- 							<xs:annotation>
-- 								<xs:documentation>Уровень адресного объекта</xs:documentation>
-- 							</xs:annotation>
-- 							<xs:simpleType>
-- 								<xs:restriction base="xs:string">
-- 									<xs:minLength value="1"/>
-- 									<xs:maxLength value="10"/>
-- 									<xs:pattern value="[0-9]{1,10}"/>
-- 								</xs:restriction>
-- 							</xs:simpleType>
-- 						</xs:attribute>
-- 						<xs:attribute name="OPERTYPEID" use="required">
-- 							<xs:annotation>
-- 								<xs:documentation>Статус действия над записью – причина появления записи</xs:documentation>
-- 							</xs:annotation>
-- 							<xs:simpleType>
-- 								<xs:restriction base="xs:integer"/>
-- 							</xs:simpleType>
-- 						</xs:attribute>
-- 						<xs:attribute name="PREVID" use="optional">
-- 							<xs:annotation>
-- 								<xs:documentation>Идентификатор записи связывания с предыдущей исторической записью</xs:documentation>
-- 							</xs:annotation>
-- 							<xs:simpleType>
-- 								<xs:restriction base="xs:long">
-- 									<xs:totalDigits value="19"/>
-- 								</xs:restriction>
-- 							</xs:simpleType>
-- 						</xs:attribute>
-- 						<xs:attribute name="NEXTID" use="optional">
-- 							<xs:annotation>
-- 								<xs:documentation>Идентификатор записи связывания с последующей исторической записью</xs:documentation>
-- 							</xs:annotation>
-- 							<xs:simpleType>
-- 								<xs:restriction base="xs:long">
-- 									<xs:totalDigits value="19"/>
-- 								</xs:restriction>
-- 							</xs:simpleType>
-- 						</xs:attribute>
-- 						<xs:attribute name="UPDATEDATE" type="xs:date" use="required">
-- 							<xs:annotation>
-- 								<xs:documentation>Дата внесения (обновления) записи</xs:documentation>
-- 							</xs:annotation>
-- 						</xs:attribute>
-- 						<xs:attribute name="STARTDATE" type="xs:date" use="required">
-- 							<xs:annotation>
-- 								<xs:documentation>Начало действия записи</xs:documentation>
-- 							</xs:annotation>
-- 						</xs:attribute>
-- 						<xs:attribute name="ENDDATE" type="xs:date" use="required">
-- 							<xs:annotation>
-- 								<xs:documentation>Окончание действия записи</xs:documentation>
-- 							</xs:annotation>
-- 						</xs:attribute>
-- 						<xs:attribute name="ISACTUAL" use="required">
-- 							<xs:annotation>
-- 								<xs:documentation>Статус актуальности адресного объекта ФИАС</xs:documentation>
-- 							</xs:annotation>
-- 							<xs:simpleType>
-- 								<xs:restriction base="xs:integer">
-- 									<xs:enumeration value="0"/>
-- 									<xs:enumeration value="1"/>
-- 								</xs:restriction>
-- 							</xs:simpleType>
-- 						</xs:attribute>
-- 						<xs:attribute name="ISACTIVE" use="required">
-- 							<xs:annotation>
-- 								<xs:documentation>Признак действующего адресного объекта</xs:documentation>
-- 							</xs:annotation>
-- 							<xs:simpleType>
-- 								<xs:restriction base="xs:integer">
-- 									<xs:enumeration value="0"/>
-- 									<xs:enumeration value="1"/>
-- 								</xs:restriction>
-- 							</xs:simpleType>
-- 						</xs:attribute>
-- 					</xs:complexType>
-- 				</xs:element>
-- 			</xs:sequence>
-- 		</xs:complexType>
-- 	</xs:element>
-- </xs:schema>