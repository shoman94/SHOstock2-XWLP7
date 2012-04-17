.class public Lcom/android/contacts/detail/ContactLoaderFragment;
.super Landroid/app/Fragment;
.source "ContactLoaderFragment.java"

# interfaces
.implements Lcom/android/contacts/activities/ContactDetailActivity$FragmentKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContactData:Lcom/android/contacts/ContactLoader$Result;

.field private mContext:Landroid/content/Context;

.field private mCustomRingtone:Ljava/lang/String;

.field private final mDetailLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/contacts/ContactLoader$Result;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

.field private mLookupUri:Landroid/net/Uri;

.field private mOptionsMenuEditable:Z

.field private mOptionsMenuExceptSim:Z

.field private mOptionsMenuExceptSimAirplane:Z

.field private mOptionsMenuOptions:Z

.field private mOptionsMenuPhoneNumber:Z

.field private mOptionsMenuPrint:Z

.field private mOptionsMenuSeparate:Z

.field private mOptionsMenuShareable:Z

.field private mOptionsMenuUserProfile:Z

.field private mSendToVoicemailState:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const-class v0, Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/detail/ContactLoaderFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 131
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 201
    new-instance v0, Lcom/android/contacts/detail/ContactLoaderFragment$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/detail/ContactLoaderFragment$1;-><init>(Lcom/android/contacts/detail/ContactLoaderFragment;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mDetailLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 132
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/detail/ContactLoaderFragment;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/detail/ContactLoaderFragment;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/android/contacts/detail/ContactLoaderFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/detail/ContactLoaderFragment;)Lcom/android/contacts/ContactLoader$Result;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/contacts/detail/ContactLoaderFragment;Lcom/android/contacts/ContactLoader$Result;)Lcom/android/contacts/ContactLoader$Result;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/contacts/detail/ContactLoaderFragment;)Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    return-object v0
.end method

.method private doPickRingtone()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 562
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 564
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 566
    const-string v2, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 568
    const-string v2, "android.intent.extra.ringtone.SHOW_SILENT"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 571
    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mCustomRingtone:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 572
    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mCustomRingtone:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 579
    .local v1, ringtoneUri:Landroid/net/Uri;
    :goto_0
    const-string v2, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 582
    invoke-virtual {p0, v0, v4}, Lcom/android/contacts/detail/ContactLoaderFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 583
    return-void

    .line 575
    .end local v1           #ringtoneUri:Landroid/net/Uri;
    :cond_0
    invoke-static {v4}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    .restart local v1       #ringtoneUri:Landroid/net/Uri;
    goto :goto_0
.end method

.method private getPreAuthorizedUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 6
    .parameter "uri"

    .prologue
    .line 533
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 534
    .local v1, uriBundle:Landroid/os/Bundle;
    const-string v2, "uri_to_authorize"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 535
    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v4, "authorize"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 540
    .local v0, authResponse:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 541
    const-string v2, "authorized_uri"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 544
    :goto_0
    return-object v2

    :cond_0
    move-object v2, p1

    goto :goto_0
.end method

.method private handleRingtonePicked(Landroid/net/Uri;)V
    .locals 4
    .parameter "pickedUri"

    .prologue
    .line 601
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 602
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mCustomRingtone:Ljava/lang/String;

    .line 606
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mCustomRingtone:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/android/contacts/ContactSaveService;->createSetRingtone(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 608
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 609
    return-void

    .line 604
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mCustomRingtone:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public handleKeyDown(I)Z
    .locals 2
    .parameter "keyCode"

    .prologue
    .line 551
    packed-switch p1, :pswitch_data_0

    .line 557
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 553
    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;->onDeleteRequested(Landroid/net/Uri;)V

    .line 554
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 551
    :pswitch_data_0
    .packed-switch 0x43
        :pswitch_0
    .end packed-switch
.end method

.method public hasContactPhoneNumber(Landroid/view/Menu;)Z
    .locals 20
    .parameter "menu"

    .prologue
    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    .line 360
    :cond_0
    const/16 v18, 0x0

    .line 406
    :goto_0
    return v18

    .line 363
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v3

    .line 364
    .local v3, accountTypes:Lcom/android/contacts/model/AccountTypeManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/contacts/ContactLoader$Result;->getBlackList()Ljava/util/ArrayList;

    move-result-object v5

    .line 366
    .local v5, blackList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 367
    .local v15, numbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    .line 369
    .local v12, isBlackListContact:Ljava/lang/Boolean;
    if-eqz v3, :cond_2

    if-nez v5, :cond_3

    .line 370
    :cond_2
    const/16 v18, 0x0

    goto :goto_0

    .line 372
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/contacts/ContactLoader$Result;->getEntities()Ljava/util/ArrayList;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Entity;

    .line 373
    .local v8, entity:Landroid/content/Entity;
    invoke-virtual {v8}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v7

    .line 374
    .local v7, entValues:Landroid/content/ContentValues;
    const-string v18, "account_type"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 375
    .local v2, accountType:Ljava/lang/String;
    const-string v18, "data_set"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 377
    .local v6, dataSet:Ljava/lang/String;
    invoke-virtual {v8}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/Entity$NamedContentValues;

    .line 378
    .local v17, subValue:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v17

    iget-object v9, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 379
    .local v9, entryValues:Landroid/content/ContentValues;
    const-string v18, "mimetype"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 380
    .local v14, mimeType:Ljava/lang/String;
    invoke-virtual {v3, v2, v6, v14}, Lcom/android/contacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v13

    .line 383
    .local v13, kind:Lcom/android/contacts/model/DataKind;
    const-string v18, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 384
    if-eqz v13, :cond_5

    iget-object v0, v13, Lcom/android/contacts/model/DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    move-object/from16 v18, v0

    if-eqz v18, :cond_5

    .line 386
    iget-object v0, v13, Lcom/android/contacts/model/DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v9}, Lcom/android/contacts/model/AccountType$StringInflater;->inflateUsing(Landroid/content/Context;Landroid/content/ContentValues;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 387
    .local v4, actionBody:Ljava/lang/CharSequence;
    if-eqz v4, :cond_5

    .line 388
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_5

    .line 391
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    .line 392
    goto/16 :goto_1

    .line 400
    .end local v2           #accountType:Ljava/lang/String;
    .end local v4           #actionBody:Ljava/lang/CharSequence;
    .end local v6           #dataSet:Ljava/lang/String;
    .end local v7           #entValues:Landroid/content/ContentValues;
    .end local v8           #entity:Landroid/content/Entity;
    .end local v9           #entryValues:Landroid/content/ContentValues;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v13           #kind:Lcom/android/contacts/model/DataKind;
    .end local v14           #mimeType:Ljava/lang/String;
    .end local v17           #subValue:Landroid/content/Entity$NamedContentValues;
    :cond_6
    new-instance v16, Landroid/content/Intent;

    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    .line 401
    .local v16, rejectIntent:Landroid/content/Intent;
    const-string v18, "isBlackListContact"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 402
    const v18, 0x7f0d0273

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 403
    const v18, 0x7f0d0273

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v19

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-eqz v18, :cond_7

    const v18, 0x7f0a0258

    :goto_2
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 406
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_8

    const/16 v18, 0x1

    goto/16 :goto_0

    .line 403
    :cond_7
    const v18, 0x7f0a0257

    goto :goto_2

    .line 406
    :cond_8
    const/16 v18, 0x0

    goto/16 :goto_0
.end method

.method public isContactEditable()Z
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v0}, Lcom/android/contacts/ContactLoader$Result;->isDirectoryEntry()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isContactOptionsChangeEnabled()Z
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v0}, Lcom/android/contacts/ContactLoader$Result;->isDirectoryEntry()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isContactPrintable()Z
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v0}, Lcom/android/contacts/ContactLoader$Result;->isDirectoryEntry()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isContactShareable()Z
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v0}, Lcom/android/contacts/ContactLoader$Result;->isDirectoryEntry()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isContactSim()Z
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v0}, Lcom/android/contacts/ContactLoader$Result;->isSim()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isContactUserProfile()Z
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v0}, Lcom/android/contacts/ContactLoader$Result;->isUserProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOptionsMenuChanged()Z
    .locals 2

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuOptions:Z

    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->isContactOptionsChangeEnabled()Z

    move-result v1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuEditable:Z

    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->isContactEditable()Z

    move-result v1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuShareable:Z

    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->isContactShareable()Z

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSimAirplane()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 344
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->isContactSim()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 345
    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 349
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 345
    goto :goto_0

    :cond_1
    move v0, v1

    .line 349
    goto :goto_0
.end method

.method public loadUri(Landroid/net/Uri;)V
    .locals 4
    .parameter "lookupUri"

    .prologue
    const/4 v3, 0x1

    .line 175
    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-static {p1, v1}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    iput-object p1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    .line 181
    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    if-nez v1, :cond_2

    .line 182
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 183
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    .line 184
    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    if-eqz v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-interface {v1, v2}, Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;->onDetailsLoaded(Lcom/android/contacts/ContactLoader$Result;)V

    goto :goto_0

    .line 187
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 188
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 189
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "contactUri"

    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 190
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mDetailLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v3, v0, v2}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 165
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 167
    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 168
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 169
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "contactUri"

    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 170
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mDetailLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 172
    .end local v0           #args:Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 587
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 598
    :goto_0
    return-void

    .line 591
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 593
    :pswitch_0
    const-string v1, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 594
    .local v0, pickedUri:Landroid/net/Uri;
    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactLoaderFragment;->handleRingtonePicked(Landroid/net/Uri;)V

    goto :goto_0

    .line 591
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 150
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 151
    iput-object p1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    .line 152
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 136
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 137
    if-eqz p1, :cond_0

    .line 138
    const-string v0, "contactUri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    .line 140
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 244
    const v0, 0x7f10000e

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 245
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedState"

    .prologue
    .line 156
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/contacts/detail/ContactLoaderFragment;->setHasOptionsMenu(Z)V

    .line 160
    const v0, 0x7f040026

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 13
    .parameter "item"

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 411
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    move v10, v9

    .line 526
    :cond_1
    :goto_1
    return v10

    .line 413
    :pswitch_1
    iget-object v10, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    iget-object v11, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-interface {v10, v11}, Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;->onEditRequested(Landroid/net/Uri;)V

    goto :goto_0

    .line 417
    :pswitch_2
    iget-object v9, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    iget-object v11, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-interface {v9, v11}, Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;->onDeleteRequested(Landroid/net/Uri;)V

    goto :goto_1

    .line 421
    :pswitch_3
    iget-object v11, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-nez v11, :cond_2

    move v10, v9

    goto :goto_1

    .line 422
    :cond_2
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->doPickRingtone()V

    goto :goto_1

    .line 426
    :pswitch_4
    iget-object v11, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-nez v11, :cond_3

    move v10, v9

    goto :goto_1

    .line 428
    :cond_3
    iget-object v11, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v11}, Lcom/android/contacts/ContactLoader$Result;->getLookupKey()Ljava/lang/String;

    move-result-object v7

    .line 429
    .local v7, lookupKey:Ljava/lang/String;
    sget-object v11, Landroid/provider/ContactsContract$Contacts;->CONTENT_VCARD_URI:Landroid/net/Uri;

    invoke-static {v11, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 430
    .local v8, shareUri:Landroid/net/Uri;
    iget-object v11, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v11}, Lcom/android/contacts/ContactLoader$Result;->isUserProfile()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 434
    invoke-direct {p0, v8}, Lcom/android/contacts/detail/ContactLoaderFragment;->getPreAuthorizedUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v8

    .line 437
    :cond_4
    new-instance v5, Landroid/content/Intent;

    const-string v11, "android.intent.action.SEND"

    invoke-direct {v5, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 438
    .local v5, intent:Landroid/content/Intent;
    const-string v11, "text/x-vcard"

    invoke-virtual {v5, v11}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 439
    const-string v11, "android.intent.extra.STREAM"

    invoke-virtual {v5, v11, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 442
    iget-object v11, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    const v12, 0x7f0a0103

    invoke-virtual {v11, v12}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 443
    .local v1, chooseTitle:Ljava/lang/CharSequence;
    invoke-static {v5, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 446
    .local v0, chooseIntent:Landroid/content/Intent;
    :try_start_0
    iget-object v11, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 447
    :catch_0
    move-exception v4

    .line 448
    .local v4, ex:Landroid/content/ActivityNotFoundException;
    iget-object v11, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    const v12, 0x7f0a0104

    invoke-static {v11, v12, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 454
    .end local v0           #chooseIntent:Landroid/content/Intent;
    .end local v1           #chooseTitle:Ljava/lang/CharSequence;
    .end local v4           #ex:Landroid/content/ActivityNotFoundException;
    .end local v5           #intent:Landroid/content/Intent;
    .end local v7           #lookupKey:Ljava/lang/String;
    .end local v8           #shareUri:Landroid/net/Uri;
    :pswitch_5
    iget-boolean v11, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mSendToVoicemailState:Z

    if-nez v11, :cond_5

    move v9, v10

    :cond_5
    iput-boolean v9, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mSendToVoicemailState:Z

    .line 455
    iget-boolean v9, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mSendToVoicemailState:Z

    invoke-interface {p1, v9}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 456
    iget-object v9, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    iget-boolean v12, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mSendToVoicemailState:Z

    invoke-static {v9, v11, v12}, Lcom/android/contacts/ContactSaveService;->createSetSendToVoicemail(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object v5

    .line 458
    .restart local v5       #intent:Landroid/content/Intent;
    iget-object v9, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_1

    .line 462
    .end local v5           #intent:Landroid/content/Intent;
    :pswitch_6
    iget-object v9, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    if-eqz v9, :cond_6

    .line 463
    new-instance v5, Landroid/content/Intent;

    const-string v9, "com.sec.android.app.contacts.action.SET_DEFAULT"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 464
    .restart local v5       #intent:Landroid/content/Intent;
    const-string v9, "contactUri"

    iget-object v11, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v5, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 465
    invoke-virtual {p0, v5}, Lcom/android/contacts/detail/ContactLoaderFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 467
    .end local v5           #intent:Landroid/content/Intent;
    :cond_6
    sget-object v9, Lcom/android/contacts/detail/ContactLoaderFragment;->TAG:Ljava/lang/String;

    const-string v11, "contactUri is null"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 473
    :pswitch_7
    iget-object v9, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    if-eqz v9, :cond_7

    .line 474
    iget-object v9, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-static {v9}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 475
    .local v2, contactId:J
    new-instance v5, Landroid/content/Intent;

    const-string v9, "com.android.contacts.action.JOIN_CONTACT"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 476
    .restart local v5       #intent:Landroid/content/Intent;
    const-string v9, "com.android.contacts.action.CONTACT_ID"

    invoke-virtual {v5, v9, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 477
    const-string v9, "intentFrom"

    const-string v11, "detailview"

    invoke-virtual {v5, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 478
    invoke-virtual {p0, v5}, Lcom/android/contacts/detail/ContactLoaderFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 480
    .end local v2           #contactId:J
    .end local v5           #intent:Landroid/content/Intent;
    :cond_7
    sget-object v9, Lcom/android/contacts/detail/ContactLoaderFragment;->TAG:Ljava/lang/String;

    const-string v11, "contactUri is null"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 486
    :pswitch_8
    iget-object v9, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    if-eqz v9, :cond_8

    .line 487
    new-instance v5, Landroid/content/Intent;

    const-string v9, "com.android.contacts.action.JOINED_CONTACT"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 488
    .restart local v5       #intent:Landroid/content/Intent;
    iget-object v9, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 489
    const-string v9, "UNLINK_ONLY"

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 490
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9, v5, v10}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 493
    .end local v5           #intent:Landroid/content/Intent;
    :cond_8
    sget-object v9, Lcom/android/contacts/detail/ContactLoaderFragment;->TAG:Ljava/lang/String;

    const-string v11, "contactUri is null"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 500
    :pswitch_9
    iget-object v9, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    if-eqz v9, :cond_9

    .line 501
    new-instance v5, Landroid/content/Intent;

    const-string v9, "com.sec.android.app.contacts.action.HISTORY_LIST"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 502
    .restart local v5       #intent:Landroid/content/Intent;
    const-string v9, "contactUri"

    iget-object v11, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v5, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 503
    invoke-virtual {p0, v5}, Lcom/android/contacts/detail/ContactLoaderFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 505
    .end local v5           #intent:Landroid/content/Intent;
    :cond_9
    sget-object v9, Lcom/android/contacts/detail/ContactLoaderFragment;->TAG:Ljava/lang/String;

    const-string v11, "contactUri is null"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 511
    :pswitch_a
    iget-object v11, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    if-eqz v11, :cond_1

    .line 512
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v11

    const-string v12, "isBlackListContact"

    invoke-virtual {v11, v12, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 513
    .local v6, isBlackListContact:Z
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    iget-object v12, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    if-nez v6, :cond_a

    move v9, v10

    :cond_a
    invoke-static {v11, v12, v9}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->start(Landroid/app/Activity;Landroid/net/Uri;Z)Lcom/android/contacts/interactions/AddToRejectListInteraction;

    goto/16 :goto_1

    .line 518
    .end local v6           #isBlackListContact:Z
    :pswitch_b
    iget-object v10, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    if-eqz v10, :cond_0

    .line 519
    new-instance v5, Landroid/content/Intent;

    const-string v10, "com.android.contacts.action.SEND_INFO"

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 520
    .restart local v5       #intent:Landroid/content/Intent;
    const-string v10, "CONTACT_URI"

    iget-object v11, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 521
    const-string v10, "mode"

    const/4 v11, 0x2

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 522
    invoke-virtual {p0, v5}, Lcom/android/contacts/detail/ContactLoaderFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 411
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d0261
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_a
        :pswitch_b
        :pswitch_5
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 14
    .parameter "menu"

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->isContactOptionsChangeEnabled()Z

    move-result v12

    iput-boolean v12, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuOptions:Z

    .line 256
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->isContactEditable()Z

    move-result v12

    iput-boolean v12, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuEditable:Z

    .line 257
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->isContactShareable()Z

    move-result v12

    iput-boolean v12, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuShareable:Z

    .line 258
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->isContactUserProfile()Z

    move-result v12

    iput-boolean v12, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuUserProfile:Z

    .line 259
    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/ContactLoaderFragment;->hasContactPhoneNumber(Landroid/view/Menu;)Z

    move-result v12

    iput-boolean v12, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuPhoneNumber:Z

    .line 260
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->isContactSim()Z

    move-result v12

    if-nez v12, :cond_3

    const/4 v12, 0x1

    :goto_0
    iput-boolean v12, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuExceptSim:Z

    .line 261
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->isSimAirplane()Z

    move-result v12

    if-nez v12, :cond_4

    const/4 v12, 0x1

    :goto_1
    iput-boolean v12, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuExceptSimAirplane:Z

    .line 262
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->isContactPrintable()Z

    move-result v12

    iput-boolean v12, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuPrint:Z

    .line 264
    iget-object v12, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-eqz v12, :cond_0

    .line 265
    iget-object v12, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v12}, Lcom/android/contacts/ContactLoader$Result;->isSendToVoicemail()Z

    move-result v12

    iput-boolean v12, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mSendToVoicemailState:Z

    .line 266
    iget-object v12, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v12}, Lcom/android/contacts/ContactLoader$Result;->getCustomRingtone()Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mCustomRingtone:Ljava/lang/String;

    .line 267
    iget-object v12, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v12}, Lcom/android/contacts/ContactLoader$Result;->getEntities()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_5

    const/4 v12, 0x1

    :goto_2
    iput-boolean v12, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuSeparate:Z

    .line 272
    :cond_0
    const v12, 0x7f0d0275

    invoke-interface {p1, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 273
    .local v6, optionsSendToVoicemail:Landroid/view/MenuItem;
    if-eqz v6, :cond_1

    .line 274
    iget-boolean v12, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mSendToVoicemailState:Z

    invoke-interface {v6, v12}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 275
    iget-boolean v12, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuOptions:Z

    invoke-interface {v6, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 277
    :cond_1
    const v12, 0x7f0d0271

    invoke-interface {p1, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 278
    .local v5, optionsRingtone:Landroid/view/MenuItem;
    if-eqz v5, :cond_2

    .line 281
    const/4 v12, 0x0

    invoke-interface {v5, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 285
    :cond_2
    const v12, 0x7f0d026e

    invoke-interface {p1, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 286
    .local v2, historyMenu:Landroid/view/MenuItem;
    iget-boolean v12, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuEditable:Z

    if-eqz v12, :cond_6

    iget-boolean v12, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuUserProfile:Z

    if-nez v12, :cond_6

    iget-boolean v12, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuExceptSim:Z

    if-eqz v12, :cond_6

    const/4 v12, 0x1

    :goto_3
    invoke-interface {v2, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 288
    const v12, 0x7f0d0270

    invoke-interface {p1, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 289
    .local v4, optionsDefault:Landroid/view/MenuItem;
    iget-boolean v12, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuEditable:Z

    if-eqz v12, :cond_7

    iget-boolean v12, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuUserProfile:Z

    if-nez v12, :cond_7

    iget-boolean v12, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuExceptSim:Z

    if-eqz v12, :cond_7

    const/4 v12, 0x1

    :goto_4
    invoke-interface {v4, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 291
    const v12, 0x7f0d026c

    invoke-interface {p1, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 292
    .local v1, editMenu:Landroid/view/MenuItem;
    iget-boolean v12, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuEditable:Z

    if-eqz v12, :cond_8

    iget-boolean v12, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuExceptSimAirplane:Z

    if-eqz v12, :cond_8

    const/4 v12, 0x1

    :goto_5
    invoke-interface {v1, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 294
    const v12, 0x7f0d026a

    invoke-interface {p1, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 295
    .local v0, deleteMenu:Landroid/view/MenuItem;
    iget-boolean v12, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuEditable:Z

    if-eqz v12, :cond_9

    iget-boolean v12, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuExceptSimAirplane:Z

    if-eqz v12, :cond_9

    const/4 v12, 0x1

    :goto_6
    invoke-interface {v0, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 298
    const v12, 0x7f0d0261

    invoke-interface {p1, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 299
    .local v3, joinMenu:Landroid/view/MenuItem;
    iget-boolean v12, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuEditable:Z

    if-eqz v12, :cond_a

    iget-boolean v12, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuUserProfile:Z

    if-nez v12, :cond_a

    iget-boolean v12, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuExceptSim:Z

    if-eqz v12, :cond_a

    const/4 v12, 0x1

    :goto_7
    invoke-interface {v3, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 302
    const v12, 0x7f0d026f

    invoke-interface {p1, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    .line 303
    .local v10, separateMenu:Landroid/view/MenuItem;
    iget-boolean v12, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuEditable:Z

    if-eqz v12, :cond_b

    iget-boolean v12, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuUserProfile:Z

    if-nez v12, :cond_b

    iget-boolean v12, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuExceptSim:Z

    if-eqz v12, :cond_b

    iget-boolean v12, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuSeparate:Z

    if-eqz v12, :cond_b

    const/4 v12, 0x1

    :goto_8
    invoke-interface {v10, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 305
    const v12, 0x7f0d0272

    invoke-interface {p1, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    .line 306
    .local v11, shareMenu:Landroid/view/MenuItem;
    iget-boolean v12, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuShareable:Z

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 311
    const v12, 0x7f0d0273

    invoke-interface {p1, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    .line 312
    .local v8, rejectMenu:Landroid/view/MenuItem;
    iget-boolean v12, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuEditable:Z

    if-eqz v12, :cond_c

    iget-boolean v12, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuPhoneNumber:Z

    if-eqz v12, :cond_c

    iget-boolean v12, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuUserProfile:Z

    if-nez v12, :cond_c

    const/4 v12, 0x1

    :goto_9
    invoke-interface {v8, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 314
    const v12, 0x7f0d0275

    invoke-interface {p1, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    .line 315
    .local v9, sendVoiceMenu:Landroid/view/MenuItem;
    const/4 v12, 0x0

    invoke-interface {v9, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 317
    const v12, 0x7f0d0274

    invoke-interface {p1, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 318
    .local v7, printMenu:Landroid/view/MenuItem;
    iget-boolean v12, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuPrint:Z

    if-eqz v12, :cond_d

    iget-boolean v12, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuUserProfile:Z

    if-nez v12, :cond_d

    const/4 v12, 0x1

    :goto_a
    invoke-interface {v7, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 320
    return-void

    .line 260
    .end local v0           #deleteMenu:Landroid/view/MenuItem;
    .end local v1           #editMenu:Landroid/view/MenuItem;
    .end local v2           #historyMenu:Landroid/view/MenuItem;
    .end local v3           #joinMenu:Landroid/view/MenuItem;
    .end local v4           #optionsDefault:Landroid/view/MenuItem;
    .end local v5           #optionsRingtone:Landroid/view/MenuItem;
    .end local v6           #optionsSendToVoicemail:Landroid/view/MenuItem;
    .end local v7           #printMenu:Landroid/view/MenuItem;
    .end local v8           #rejectMenu:Landroid/view/MenuItem;
    .end local v9           #sendVoiceMenu:Landroid/view/MenuItem;
    .end local v10           #separateMenu:Landroid/view/MenuItem;
    .end local v11           #shareMenu:Landroid/view/MenuItem;
    :cond_3
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 261
    :cond_4
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 267
    :cond_5
    const/4 v12, 0x0

    goto/16 :goto_2

    .line 286
    .restart local v2       #historyMenu:Landroid/view/MenuItem;
    .restart local v5       #optionsRingtone:Landroid/view/MenuItem;
    .restart local v6       #optionsSendToVoicemail:Landroid/view/MenuItem;
    :cond_6
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 289
    .restart local v4       #optionsDefault:Landroid/view/MenuItem;
    :cond_7
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 292
    .restart local v1       #editMenu:Landroid/view/MenuItem;
    :cond_8
    const/4 v12, 0x0

    goto/16 :goto_5

    .line 295
    .restart local v0       #deleteMenu:Landroid/view/MenuItem;
    :cond_9
    const/4 v12, 0x0

    goto/16 :goto_6

    .line 299
    .restart local v3       #joinMenu:Landroid/view/MenuItem;
    :cond_a
    const/4 v12, 0x0

    goto :goto_7

    .line 303
    .restart local v10       #separateMenu:Landroid/view/MenuItem;
    :cond_b
    const/4 v12, 0x0

    goto :goto_8

    .line 312
    .restart local v8       #rejectMenu:Landroid/view/MenuItem;
    .restart local v11       #shareMenu:Landroid/view/MenuItem;
    :cond_c
    const/4 v12, 0x0

    goto :goto_9

    .line 318
    .restart local v7       #printMenu:Landroid/view/MenuItem;
    .restart local v9       #sendVoiceMenu:Landroid/view/MenuItem;
    :cond_d
    const/4 v12, 0x0

    goto :goto_a
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 144
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 145
    const-string v0, "contactUri"

    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 146
    return-void
.end method

.method public setListener(Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    .line 196
    return-void
.end method
