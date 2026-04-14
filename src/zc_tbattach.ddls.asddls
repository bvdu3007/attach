@Metadata.allowExtensions: true
//@Metadata.ignorePropagatedAnnotations: true
@EndUserText: {
  label: '###GENERATED Core Data Service Entity'
}
@ObjectModel: {
  sapObjectNodeType.name: 'ZTBATTACH'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZC_TBATTACH
  provider contract transactional_query
  as projection on ZR_TBATTACH
  association [1..1] to ZR_TBATTACH as _BaseEntity on $projection.Materialid = _BaseEntity.Materialid
{
  key Materialid,
  Description,
  Origin,
  Status,
  @Semantics: {
    user.createdBy: true
  }
  Createdby,
  Username,
//   @Semantics.imageUrl: true
  Attachement,
  Filename,
  Mimetype,
  @Semantics: {
    systemDateTime.createdAt: true
  }
  Createdat,
  @Semantics: {
    user.lastChangedBy: true
  }
  Lastchangedby,
  @Semantics: {
    systemDateTime.lastChangedAt: true
  }
  Lastchangedat,
  @Semantics: {
    systemDateTime.localInstanceLastChangedAt: true
  }
  Locallastchangedat,
  _BaseEntity
}
