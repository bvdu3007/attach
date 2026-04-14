@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@ObjectModel.sapObjectNodeType.name: 'ZTBATTACH'
@EndUserText.label: '###GENERATED Core Data Service Entity'
define root view entity ZR_TBATTACH
  as select from ztb_attach
{
  key materialid as Materialid,
  description as Description,
  origin as Origin,
  status as Status,
  @Semantics.user.createdBy: true
  createdby as Createdby,
  username as Username,
//  @Semantics.largeObject : { mimeType: 'Mimetype',  fileName: 'Filename',  contentDispositionPreference: #INLINE }   
   @Semantics.largeObject:{
        mimeType: 'Mimetype',
        fileName: 'Filename',
        contentDispositionPreference: #INLINE
      }
  attachement as Attachement,
  filename as Filename,
  @Semantics.mimeType: true 
  mimetype as Mimetype,
  @Semantics.systemDateTime.createdAt: true
  createdat as Createdat,
  @Semantics.user.lastChangedBy: true
  lastchangedby as Lastchangedby,
  @Semantics.systemDateTime.lastChangedAt: true
  lastchangedat as Lastchangedat,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  locallastchangedat as Locallastchangedat
}
