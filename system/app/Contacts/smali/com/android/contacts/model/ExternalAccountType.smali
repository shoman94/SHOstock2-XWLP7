.class public Lcom/android/contacts/model/ExternalAccountType;
.super Lcom/android/contacts/model/BaseAccountType;
.source "ExternalAccountType.java"


# instance fields
.field private mAccountTypeIconAttribute:Ljava/lang/String;

.field private mAccountTypeLabelAttribute:Ljava/lang/String;

.field private mCreateContactActivityClassName:Ljava/lang/String;

.field private mEditContactActivityClassName:Ljava/lang/String;

.field private mExtensionPackageNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHasContactsMetadata:Z

.field private mHasEditSchema:Z

.field private mInitSuccessful:Z

.field private mInviteActionLabelAttribute:Ljava/lang/String;

.field private mInviteActionLabelResId:I

.field private mInviteContactActivity:Ljava/lang/String;

.field private final mIsExtension:Z

.field private mViewContactNotifyService:Ljava/lang/String;

.field private mViewGroupActivity:Ljava/lang/String;

.field private mViewGroupLabelAttribute:Ljava/lang/String;

.field private mViewGroupLabelResId:I

.field private mViewStreamItemActivity:Ljava/lang/String;

.field private mViewStreamItemPhotoActivity:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 11
    .parameter "context"
    .parameter "resPackageName"
    .parameter "isExtension"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/contacts/model/BaseAccountType;-><init>()V

    .line 95
    iput-boolean p3, p0, Lcom/android/contacts/model/ExternalAccountType;->mIsExtension:Z

    .line 96
    iput-object p2, p0, Lcom/android/contacts/model/AccountType;->resPackageName:Ljava/lang/String;

    .line 97
    iput-object p2, p0, Lcom/android/contacts/model/AccountType;->summaryResPackageName:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 102
    .local v6, pm:Landroid/content/pm/PackageManager;
    const/16 v8, 0x84

    :try_start_0
    invoke-virtual {v6, p2, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 104
    .local v4, packageInfo:Landroid/content/pm/PackageInfo;
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .local v0, arr$:[Landroid/content/pm/ServiceInfo;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v7, v0, v1

    .line 105
    .local v7, serviceInfo:Landroid/content/pm/ServiceInfo;
    const-string v8, "android.provider.CONTACTS_STRUCTURE"

    invoke-virtual {v7, v6, v8}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    .line 107
    .local v5, parser:Landroid/content/res/XmlResourceParser;
    if-nez v5, :cond_0

    .line 104
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 108
    :cond_0
    invoke-virtual {p0, p1, v5}, Lcom/android/contacts/model/ExternalAccountType;->inflate(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 110
    .end local v0           #arr$:[Landroid/content/pm/ServiceInfo;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v4           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v5           #parser:Landroid/content/res/XmlResourceParser;
    .end local v7           #serviceInfo:Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v3

    .line 133
    :goto_2
    return-void

    .line 115
    .restart local v0       #arr$:[Landroid/content/pm/ServiceInfo;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v4       #packageInfo:Landroid/content/pm/PackageInfo;
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/contacts/model/ExternalAccountType;->mExtensionPackageNames:Ljava/util/List;

    .line 116
    iget-object v8, p0, Lcom/android/contacts/model/ExternalAccountType;->mInviteActionLabelAttribute:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/contacts/model/AccountType;->summaryResPackageName:Ljava/lang/String;

    const-string v10, "inviteContactActionLabel"

    invoke-static {p1, v8, v9, v10}, Lcom/android/contacts/model/ExternalAccountType;->resolveExternalResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/contacts/model/ExternalAccountType;->mInviteActionLabelResId:I

    .line 118
    iget-object v8, p0, Lcom/android/contacts/model/ExternalAccountType;->mViewGroupLabelAttribute:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/contacts/model/AccountType;->summaryResPackageName:Ljava/lang/String;

    const-string v10, "viewGroupActionLabel"

    invoke-static {p1, v8, v9, v10}, Lcom/android/contacts/model/ExternalAccountType;->resolveExternalResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/contacts/model/ExternalAccountType;->mViewGroupLabelResId:I

    .line 120
    iget-object v8, p0, Lcom/android/contacts/model/ExternalAccountType;->mAccountTypeLabelAttribute:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/contacts/model/AccountType;->resPackageName:Ljava/lang/String;

    const-string v10, "accountTypeLabel"

    invoke-static {p1, v8, v9, v10}, Lcom/android/contacts/model/ExternalAccountType;->resolveExternalResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/contacts/model/AccountType;->titleRes:I

    .line 122
    iget-object v8, p0, Lcom/android/contacts/model/ExternalAccountType;->mAccountTypeIconAttribute:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/contacts/model/AccountType;->resPackageName:Ljava/lang/String;

    const-string v10, "accountTypeIcon"

    invoke-static {p1, v8, v9, v10}, Lcom/android/contacts/model/ExternalAccountType;->resolveExternalResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/contacts/model/AccountType;->iconRes:I

    .line 126
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/ExternalAccountType;->addDataKindStructuredName(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 127
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/ExternalAccountType;->addDataKindDisplayName(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 128
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/ExternalAccountType;->addDataKindPhoneticName(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 129
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/ExternalAccountType;->addDataKindPhoto(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 132
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/contacts/model/ExternalAccountType;->mInitSuccessful:Z

    goto :goto_2
.end method

.method private parseEditSchema(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .parameter "context"
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 335
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 338
    .local v0, startingDepth:I
    :cond_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 339
    .local v1, type:I
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-ne v2, v0, :cond_0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 342
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/ExternalAccountType;->addDataKindStructuredName(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 343
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/ExternalAccountType;->addDataKindDisplayName(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 344
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/ExternalAccountType;->addDataKindPhoneticName(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 345
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/ExternalAccountType;->addDataKindNickname(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 346
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/ExternalAccountType;->addDataKindPhone(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 347
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/ExternalAccountType;->addDataKindEmail(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 348
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/ExternalAccountType;->addDataKindStructuredPostal(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 349
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/ExternalAccountType;->addDataKindIm(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 350
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/ExternalAccountType;->addDataKindOrganization(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 351
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/ExternalAccountType;->addDataKindPhoto(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 352
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/ExternalAccountType;->addDataKindNote(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 353
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/ExternalAccountType;->addDataKindWebsite(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 356
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/ExternalAccountType;->addDataKindSipAddress(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 359
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/contacts/model/ExternalAccountType;->mHasEditSchema:Z

    .line 360
    return-void
.end method

.method static resolveExternalResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .parameter "context"
    .parameter "resourceName"
    .parameter "packageName"
    .parameter "xmlAttributeName"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 386
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v3, v4

    .line 406
    :cond_0
    :goto_0
    return v3

    .line 389
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x40

    if-eq v5, v6, :cond_2

    .line 390
    const-string v5, "ExternalAccountType"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " must be a resource name beginnig with \'@\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 391
    goto :goto_0

    .line 393
    :cond_2
    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 396
    .local v1, name:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 401
    .local v2, res:Landroid/content/res/Resources;
    const/4 v5, 0x0

    invoke-virtual {v2, v1, v5, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 402
    .local v3, resId:I
    if-nez v3, :cond_0

    .line 403
    const-string v5, "ExternalAccountType"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to load "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 404
    goto :goto_0

    .line 397
    .end local v2           #res:Landroid/content/res/Resources;
    .end local v3           #resId:I
    :catch_0
    move-exception v0

    .line 398
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "ExternalAccountType"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to load package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 399
    goto :goto_0
.end method


# virtual methods
.method public areContactsWritable()Z
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/android/contacts/model/ExternalAccountType;->mHasEditSchema:Z

    return v0
.end method

.method public getCreateContactActivityClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/contacts/model/ExternalAccountType;->mCreateContactActivityClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getEditContactActivityClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/contacts/model/ExternalAccountType;->mEditContactActivityClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getExtensionPackageNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/contacts/model/ExternalAccountType;->mExtensionPackageNames:Ljava/util/List;

    return-object v0
.end method

.method protected getInviteContactActionResId()I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/android/contacts/model/ExternalAccountType;->mInviteActionLabelResId:I

    return v0
.end method

.method public getInviteContactActivityClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/contacts/model/ExternalAccountType;->mInviteContactActivity:Ljava/lang/String;

    return-object v0
.end method

.method public getViewContactNotifyServiceClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/contacts/model/ExternalAccountType;->mViewContactNotifyService:Ljava/lang/String;

    return-object v0
.end method

.method public getViewGroupActivity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/contacts/model/ExternalAccountType;->mViewGroupActivity:Ljava/lang/String;

    return-object v0
.end method

.method protected getViewGroupLabelResId()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/android/contacts/model/ExternalAccountType;->mViewGroupLabelResId:I

    return v0
.end method

.method public getViewStreamItemActivity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/contacts/model/ExternalAccountType;->mViewStreamItemActivity:Ljava/lang/String;

    return-object v0
.end method

.method public getViewStreamItemPhotoActivity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/contacts/model/ExternalAccountType;->mViewStreamItemPhotoActivity:Ljava/lang/String;

    return-object v0
.end method

.method public hasContactsMetadata()Z
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/android/contacts/model/ExternalAccountType;->mHasContactsMetadata:Z

    return v0
.end method

.method protected inflate(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 20
    .parameter "context"
    .parameter "parser"

    .prologue
    .line 215
    invoke-static/range {p2 .. p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v5

    .line 220
    .local v5, attrs:Landroid/util/AttributeSet;
    :cond_0
    :try_start_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v15

    .local v15, type:I
    const/16 v17, 0x2

    move/from16 v0, v17

    if-eq v15, v0, :cond_1

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_0

    .line 224
    :cond_1
    const/16 v17, 0x2

    move/from16 v0, v17

    if-eq v15, v0, :cond_2

    .line 225
    new-instance v17, Ljava/lang/IllegalStateException;

    const-string v18, "No start tag found"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 322
    .end local v15           #type:I
    :catch_0
    move-exception v9

    .line 323
    .local v9, e:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v17, Ljava/lang/IllegalStateException;

    const-string v18, "Problem reading XML"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17

    .line 228
    .end local v9           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v15       #type:I
    :cond_2
    :try_start_1
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 229
    .local v12, rootTag:Ljava/lang/String;
    const-string v17, "ContactsAccountType"

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    const-string v17, "ContactsSource"

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 231
    new-instance v17, Ljava/lang/IllegalStateException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Top level element must be ContactsAccountType, not "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 324
    .end local v12           #rootTag:Ljava/lang/String;
    .end local v15           #type:I
    :catch_1
    move-exception v9

    .line 325
    .local v9, e:Ljava/io/IOException;
    new-instance v17, Ljava/lang/IllegalStateException;

    const-string v18, "Problem reading XML"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17

    .line 235
    .end local v9           #e:Ljava/io/IOException;
    .restart local v12       #rootTag:Ljava/lang/String;
    .restart local v15       #type:I
    :cond_3
    const/16 v17, 0x1

    :try_start_2
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/model/ExternalAccountType;->mHasContactsMetadata:Z

    .line 237
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v4

    .line 238
    .local v4, attributeCount:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    if-ge v10, v4, :cond_13

    .line 239
    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    .line 240
    .local v3, attr:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v16

    .line 241
    .local v16, value:Ljava/lang/String;
    const-string v17, "ExternalAccountType"

    const/16 v18, 0x3

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 242
    const-string v17, "ExternalAccountType"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_4
    const-string v17, "editContactActivity"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 245
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/model/ExternalAccountType;->mEditContactActivityClassName:Ljava/lang/String;

    .line 238
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 246
    :cond_5
    const-string v17, "createContactActivity"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 247
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/model/ExternalAccountType;->mCreateContactActivityClassName:Ljava/lang/String;

    goto :goto_1

    .line 248
    :cond_6
    const-string v17, "inviteContactActivity"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 249
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/model/ExternalAccountType;->mInviteContactActivity:Ljava/lang/String;

    goto :goto_1

    .line 250
    :cond_7
    const-string v17, "inviteContactActionLabel"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 251
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/model/ExternalAccountType;->mInviteActionLabelAttribute:Ljava/lang/String;

    goto :goto_1

    .line 252
    :cond_8
    const-string v17, "viewContactNotifyService"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 253
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/model/ExternalAccountType;->mViewContactNotifyService:Ljava/lang/String;

    goto :goto_1

    .line 254
    :cond_9
    const-string v17, "viewGroupActivity"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 255
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/model/ExternalAccountType;->mViewGroupActivity:Ljava/lang/String;

    goto :goto_1

    .line 256
    :cond_a
    const-string v17, "viewGroupActionLabel"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 257
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/model/ExternalAccountType;->mViewGroupLabelAttribute:Ljava/lang/String;

    goto :goto_1

    .line 258
    :cond_b
    const-string v17, "viewStreamItemActivity"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 259
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/model/ExternalAccountType;->mViewStreamItemActivity:Ljava/lang/String;

    goto :goto_1

    .line 260
    :cond_c
    const-string v17, "viewStreamItemPhotoActivity"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 261
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/model/ExternalAccountType;->mViewStreamItemPhotoActivity:Ljava/lang/String;

    goto/16 :goto_1

    .line 262
    :cond_d
    const-string v17, "dataSet"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 263
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/model/AccountType;->dataSet:Ljava/lang/String;

    goto/16 :goto_1

    .line 264
    :cond_e
    const-string v17, "extensionPackageNames"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_f

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/ExternalAccountType;->mExtensionPackageNames:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 266
    :cond_f
    const-string v17, "accountType"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_10

    .line 267
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    goto/16 :goto_1

    .line 268
    :cond_10
    const-string v17, "accountTypeLabel"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_11

    .line 269
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/model/ExternalAccountType;->mAccountTypeLabelAttribute:Ljava/lang/String;

    goto/16 :goto_1

    .line 270
    :cond_11
    const-string v17, "accountTypeIcon"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_12

    .line 271
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/model/ExternalAccountType;->mAccountTypeIconAttribute:Ljava/lang/String;

    goto/16 :goto_1

    .line 273
    :cond_12
    const-string v17, "ExternalAccountType"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Unsupported attribute "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 278
    .end local v3           #attr:Ljava/lang/String;
    .end local v16           #value:Ljava/lang/String;
    :cond_13
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    .line 280
    .local v6, depth:I
    :cond_14
    :goto_2
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v15

    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v15, v0, :cond_15

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v17

    move/from16 v0, v17

    if-le v0, v6, :cond_1a

    :cond_15
    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v15, v0, :cond_1a

    .line 281
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    .line 282
    .local v14, tag:Ljava/lang/String;
    const-string v17, "EditSchema"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_16

    .line 283
    invoke-direct/range {p0 .. p2}, Lcom/android/contacts/model/ExternalAccountType;->parseEditSchema(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2

    .line 284
    :cond_16
    const-string v17, "ContactsDataKind"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_14

    .line 285
    sget-object v17, Landroid/R$styleable;->ContactsDataKind:[I

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v5, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 287
    .local v2, a:Landroid/content/res/TypedArray;
    new-instance v11, Lcom/android/contacts/model/DataKind;

    invoke-direct {v11}, Lcom/android/contacts/model/DataKind;-><init>()V

    .line 289
    .local v11, kind:Lcom/android/contacts/model/DataKind;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v11, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    .line 291
    const/16 v17, 0x0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    move/from16 v0, v17

    iput v0, v11, Lcom/android/contacts/model/DataKind;->iconRes:I

    .line 294
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 296
    .local v13, summaryColumn:Ljava/lang/String;
    if-eqz v13, :cond_17

    .line 298
    new-instance v17, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    move-object/from16 v0, v17

    invoke-direct {v0, v13}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    iput-object v0, v11, Lcom/android/contacts/model/DataKind;->actionHeader:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 301
    :cond_17
    const/16 v17, 0x3

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 303
    .local v7, detailColumn:Ljava/lang/String;
    const/16 v17, 0x4

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 307
    .local v8, detailSocialSummary:Z
    if-eqz v8, :cond_18

    .line 309
    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v11, Lcom/android/contacts/model/DataKind;->actionBodySocial:Z

    .line 312
    :cond_18
    if-eqz v7, :cond_19

    .line 314
    new-instance v17, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    move-object/from16 v0, v17

    invoke-direct {v0, v7}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    iput-object v0, v11, Lcom/android/contacts/model/DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 317
    :cond_19
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 319
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/contacts/model/ExternalAccountType;->addKind(Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/DataKind;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 327
    .end local v2           #a:Landroid/content/res/TypedArray;
    .end local v7           #detailColumn:Ljava/lang/String;
    .end local v8           #detailSocialSummary:Z
    .end local v11           #kind:Lcom/android/contacts/model/DataKind;
    .end local v13           #summaryColumn:Ljava/lang/String;
    .end local v14           #tag:Ljava/lang/String;
    :cond_1a
    return-void
.end method

.method public isExtension()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/android/contacts/model/ExternalAccountType;->mIsExtension:Z

    return v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/android/contacts/model/ExternalAccountType;->mInitSuccessful:Z

    return v0
.end method
