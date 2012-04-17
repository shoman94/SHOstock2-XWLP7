.class public Lcom/android/contacts/interactions/AddToRejectListInteraction;
.super Landroid/app/Fragment;
.source "AddToRejectListInteraction.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;,
        Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectValue;,
        Lcom/android/contacts/interactions/AddToRejectListInteraction$RemoveFromRejectListTask;,
        Lcom/android/contacts/interactions/AddToRejectListInteraction$AddToRejectListTask;,
        Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTask;
    }
.end annotation


# static fields
.field public static final AUTO_REJECT_CONTENT_URI:Landroid/net/Uri;


# instance fields
.field private mActive:Z

.field private mBlackListSizeOverDialog:Landroid/app/AlertDialog;

.field private mContactUri:Landroid/net/Uri;

.field private mContactUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mIsAdd:Z

.field private mIsAdds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field mMessageId:I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mSamePhoneNumberContactsDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-string v0, "content://com.sec.android.app.callsetting.allcalls/reject_num"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->AUTO_REJECT_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 718
    return-void
.end method

.method static synthetic access$1000(Lcom/android/contacts/interactions/AddToRejectListInteraction;Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->makeRejectValues(Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/contacts/interactions/AddToRejectListInteraction;Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->isOverBlackListSize(Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/contacts/interactions/AddToRejectListInteraction;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->showBlackListSizeOverDialog(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/contacts/interactions/AddToRejectListInteraction;Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->checkSamePhoneNumberContacts(Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/contacts/interactions/AddToRejectListInteraction;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/interactions/AddToRejectListInteraction;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->clearJobs()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/contacts/interactions/AddToRejectListInteraction;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->executeNextJob()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/contacts/interactions/AddToRejectListInteraction;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->getCountOfTotalBlackList()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/contacts/interactions/AddToRejectListInteraction;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->queryExactlyMatchBlackList()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/contacts/interactions/AddToRejectListInteraction;J)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->getPhoneNumbers(J)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/contacts/interactions/AddToRejectListInteraction;J)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->getDisplayName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/contacts/interactions/AddToRejectListInteraction;Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->findSamePhoneNumberContacts(Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;)V

    return-void
.end method

.method private checkSamePhoneNumberContacts(Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 560
    iget-object v1, p1, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;->samePhoneNumContactsIdsArr:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 561
    invoke-direct {p0, p1}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->showHasSamePhoneNumberContacts(Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;)V

    .line 566
    :goto_0
    return-void

    .line 563
    :cond_0
    new-instance v0, Lcom/android/contacts/interactions/AddToRejectListInteraction$AddToRejectListTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/interactions/AddToRejectListInteraction$AddToRejectListTask;-><init>(Lcom/android/contacts/interactions/AddToRejectListInteraction;Lcom/android/contacts/interactions/AddToRejectListInteraction$1;)V

    .line 564
    .local v0, task:Lcom/android/contacts/interactions/AddToRejectListInteraction$AddToRejectListTask;
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/contacts/interactions/AddToRejectListInteraction$AddToRejectListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private clearJobs()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 194
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mActive:Z

    .line 195
    iput-object v1, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContactUris:Ljava/util/ArrayList;

    .line 196
    iput-object v1, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mIsAdds:Ljava/util/ArrayList;

    .line 197
    return-void
.end method

.method private executeNextJob()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 178
    iget-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContactUris:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContactUris:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 179
    :cond_0
    iput-boolean v1, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mActive:Z

    .line 191
    :cond_1
    :goto_0
    return-void

    .line 181
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContactUris:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContactUri:Landroid/net/Uri;

    .line 182
    iget-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContactUris:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 183
    iget-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mIsAdds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mIsAdd:Z

    .line 184
    iget-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mIsAdds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mActive:Z

    .line 187
    invoke-virtual {p0}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    invoke-direct {p0}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->startAddToRejectList()V

    goto :goto_0
.end method

.method private findSamePhoneNumberContacts(Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;)V
    .locals 22
    .parameter "result"

    .prologue
    .line 443
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;->contactUri:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v9

    .line 444
    .local v9, contactId:J
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;->phoneNumbers:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    .line 446
    .local v18, phoneNumbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 447
    .local v21, samePhoneNumContactsIdsArr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 448
    .local v20, samePhoneNumContactsArr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 450
    .local v19, samePhoneNumArr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 451
    .local v13, idsBuilder:Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_1

    .line 452
    if-nez v11, :cond_0

    .line 453
    const-string v2, " ( data1 = \'"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    :goto_1
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    const-string v2, "\'"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 455
    :cond_0
    const-string v2, " OR data1 = \'"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 460
    :cond_1
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_b

    .line 461
    const-string v2, " ) "

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://com.android.contacts/raw_contact_entities"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "contact_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "display_name"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "data1"

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mimetype = \'vnd.android.cursor.item/phone_v2\' AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 471
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_9

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_9

    .line 472
    const/4 v14, 0x0

    .line 474
    .local v14, isSameContactAgain:Z
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 476
    :cond_2
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 477
    .local v12, id:Ljava/lang/Long;
    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 479
    .local v16, name:Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v9

    if-eqz v2, :cond_8

    .line 480
    const/4 v2, 0x2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 481
    .local v17, phoneNum:Ljava/lang/String;
    const/4 v15, 0x0

    .line 482
    .local v15, isSamePhoneNum:Z
    const/4 v11, 0x0

    :goto_2
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_4

    .line 483
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 484
    const/4 v15, 0x1

    .line 482
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 486
    :cond_4
    if-nez v15, :cond_5

    .line 487
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    :cond_5
    const/4 v11, 0x0

    :goto_3
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_7

    .line 490
    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 491
    const/4 v14, 0x1

    .line 489
    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 493
    :cond_7
    if-nez v14, :cond_c

    .line 494
    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    .end local v15           #isSamePhoneNum:Z
    .end local v17           #phoneNum:Ljava/lang/String;
    :cond_8
    :goto_4
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 502
    .end local v12           #id:Ljava/lang/Long;
    .end local v14           #isSameContactAgain:Z
    .end local v16           #name:Ljava/lang/String;
    :cond_9
    if-eqz v8, :cond_a

    .line 503
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 506
    :cond_a
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;->samePhoneNumContactsIdsArr:Ljava/util/ArrayList;

    .line 507
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;->samePhoneNumContactsArr:Ljava/util/ArrayList;

    .line 508
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;->samePhoneNumArr:Ljava/util/ArrayList;

    .line 509
    .end local v8           #c:Landroid/database/Cursor;
    :cond_b
    return-void

    .line 497
    .restart local v8       #c:Landroid/database/Cursor;
    .restart local v12       #id:Ljava/lang/Long;
    .restart local v14       #isSameContactAgain:Z
    .restart local v15       #isSamePhoneNum:Z
    .restart local v16       #name:Ljava/lang/String;
    .restart local v17       #phoneNum:Ljava/lang/String;
    :cond_c
    const/4 v14, 0x0

    goto :goto_4
.end method

.method private getCountOfTotalBlackList()I
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 351
    sget-object v1, Lcom/android/contacts/interactions/AddToRejectListInteraction;->AUTO_REJECT_CONTENT_URI:Landroid/net/Uri;

    .line 352
    .local v1, uri:Landroid/net/Uri;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "reject_number"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    const-string v4, "reject_checked"

    aput-object v4, v2, v0

    .line 354
    .local v2, projection:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 356
    .local v7, count:I
    invoke-virtual {p0}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 358
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 359
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 360
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 363
    :cond_0
    return v7
.end method

.method private getDisplayName(J)Ljava/lang/String;
    .locals 10
    .parameter "contactId"

    .prologue
    const/4 v1, 0x1

    const/4 v9, 0x0

    .line 422
    new-array v2, v1, [Ljava/lang/String;

    const-string v0, "data1"

    aput-object v0, v2, v9

    .line 423
    .local v2, projection:[Ljava/lang/String;
    const-string v8, "contact_id=? AND mimetype=\'vnd.android.cursor.item/name\'"

    .line 425
    .local v8, selection:Ljava/lang/String;
    new-array v4, v1, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    .line 427
    .local v4, selectionArgs:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "contact_id=? AND mimetype=\'vnd.android.cursor.item/name\'"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 430
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 431
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 435
    .local v7, displayName:Ljava/lang/String;
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 436
    if-nez v7, :cond_0

    .line 437
    invoke-virtual {p0}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 439
    :cond_0
    return-object v7

    .line 433
    .end local v7           #displayName:Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContext:Landroid/content/Context;

    const v1, 0x7f0a00fc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .restart local v7       #displayName:Ljava/lang/String;
    goto :goto_0
.end method

.method private getPhoneNumbers(J)Ljava/util/ArrayList;
    .locals 11
    .parameter "contactId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v10, 0x0

    .line 395
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 396
    .local v8, phoneNumbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "data1"

    aput-object v0, v2, v10

    const-string v0, "data2"

    aput-object v0, v2, v1

    .line 397
    .local v2, projection:[Ljava/lang/String;
    const-string v9, "contact_id=? AND mimetype=\'vnd.android.cursor.item/phone_v2\'"

    .line 399
    .local v9, selection:Ljava/lang/String;
    new-array v4, v1, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10

    .line 401
    .local v4, selectionArgs:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "contact_id=? AND mimetype=\'vnd.android.cursor.item/phone_v2\'"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 404
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 405
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 408
    :cond_0
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 409
    .local v7, phoneNum:Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 412
    .end local v7           #phoneNum:Ljava/lang/String;
    :cond_1
    if-eqz v6, :cond_2

    .line 413
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 416
    :cond_2
    return-object v8
.end method

.method private isOverBlackListSize(Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;)Z
    .locals 9
    .parameter "result"

    .prologue
    .line 540
    move-object v5, p1

    .line 541
    .local v5, taskResult:Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;
    iget v1, v5, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;->countOfTotalBlackList:I

    .line 542
    .local v1, countOfTotalBlackList:I
    iget-object v4, v5, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;->rejectValues:Ljava/util/ArrayList;

    .line 543
    .local v4, rejectValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectValue;>;"
    invoke-virtual {p0}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "autoreject_maxcount"

    const/16 v8, 0x64

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 545
    .local v3, nRejectMaxCnt:I
    const/4 v0, 0x0

    .line 546
    .local v0, countOfNeedToAddContact:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 547
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectValue;

    iget v6, v6, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectValue;->check:I

    if-nez v6, :cond_0

    .line 548
    add-int/lit8 v0, v0, 0x1

    .line 546
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 552
    :cond_1
    add-int v6, v1, v0

    if-le v6, v3, :cond_2

    .line 553
    const/4 v6, 0x1

    .line 555
    :goto_1
    return v6

    :cond_2
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private makeRejectValues(Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;)V
    .locals 6
    .parameter "result"

    .prologue
    .line 516
    iget-object v0, p1, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;->exactlyMatchblackListHashMap:Ljava/util/HashMap;

    .line 517
    .local v0, exactlyMatchBlackListlHashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v2, p1, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;->phoneNumbers:Ljava/util/ArrayList;

    .line 519
    .local v2, phoneNumbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 522
    .local v4, rejectValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectValue;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 523
    new-instance v3, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectValue;

    invoke-direct {v3, p0}, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectValue;-><init>(Lcom/android/contacts/interactions/AddToRejectListInteraction;)V

    .line 524
    .local v3, rejectValue:Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectValue;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectValue;->number:Ljava/lang/String;

    .line 526
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    .line 528
    :cond_0
    const/4 v5, 0x0

    iput v5, v3, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectValue;->check:I

    .line 533
    :goto_1
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 522
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 530
    :cond_1
    const/4 v5, 0x1

    iput v5, v3, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectValue;->check:I

    goto :goto_1

    .line 536
    .end local v3           #rejectValue:Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectValue;
    :cond_2
    iput-object v4, p1, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;->rejectValues:Ljava/util/ArrayList;

    .line 537
    return-void
.end method

.method private queryExactlyMatchBlackList()Ljava/util/HashMap;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 367
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 368
    .local v7, rejectCallHashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    sget-object v1, Lcom/android/contacts/interactions/AddToRejectListInteraction;->AUTO_REJECT_CONTENT_URI:Landroid/net/Uri;

    .line 369
    .local v1, uri:Landroid/net/Uri;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "reject_number"

    aput-object v0, v2, v12

    const-string v0, "reject_checked"

    aput-object v0, v2, v11

    .line 370
    .local v2, projection:[Ljava/lang/String;
    const-string v10, "reject_match = 0"

    .line 372
    .local v10, selection:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "reject_match = 0"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 374
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 375
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v0, v11, :cond_1

    .line 376
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 391
    :cond_0
    :goto_0
    return-object v7

    .line 380
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 382
    :cond_2
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 383
    .local v9, rejectNum:Ljava/lang/String;
    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 384
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 385
    .local v8, rejectCheck:I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 388
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private showBlackListSizeOverDialog(I)V
    .locals 6
    .parameter "maxCount"

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a002d

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, errorMessage:Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a002c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/contacts/interactions/AddToRejectListInteraction$2;

    invoke-direct {v3, p0}, Lcom/android/contacts/interactions/AddToRejectListInteraction$2;-><init>(Lcom/android/contacts/interactions/AddToRejectListInteraction;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a01a9

    new-instance v3, Lcom/android/contacts/interactions/AddToRejectListInteraction$1;

    invoke-direct {v3, p0}, Lcom/android/contacts/interactions/AddToRejectListInteraction$1;-><init>(Lcom/android/contacts/interactions/AddToRejectListInteraction;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mBlackListSizeOverDialog:Landroid/app/AlertDialog;

    .line 248
    iget-object v1, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mBlackListSizeOverDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 249
    iget-object v1, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mBlackListSizeOverDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 250
    return-void
.end method

.method private showHasSamePhoneNumberContacts(Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;)V
    .locals 11
    .parameter "result"

    .prologue
    .line 254
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    .local v3, sameNumberContactsName:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v5, p1, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;->samePhoneNumContactsArr:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 256
    iget-object v5, p1, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;->samePhoneNumContactsArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 257
    .local v1, contactsName:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v5, ""

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 258
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x104000e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 260
    :cond_1
    if-lez v2, :cond_2

    .line 261
    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    :cond_2
    const-string v5, "\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    const-string v5, "\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 268
    .end local v1           #contactsName:Ljava/lang/String;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 269
    .local v4, sameNumberString:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    :goto_1
    iget-object v5, p1, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;->samePhoneNumArr:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_5

    .line 270
    if-nez v2, :cond_4

    .line 271
    iget-object v5, p1, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;->samePhoneNumArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 273
    :cond_4
    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    iget-object v5, p1, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;->samePhoneNumArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 278
    :cond_5
    invoke-virtual {p0}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0217

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v8, 0x1

    aput-object v4, v7, v8

    const/4 v8, 0x2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p1, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;->displayName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, addToRejectMessage:Ljava/lang/String;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0a0297

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x1010355

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x104000a

    new-instance v7, Lcom/android/contacts/interactions/AddToRejectListInteraction$4;

    invoke-direct {v7, p0, p1}, Lcom/android/contacts/interactions/AddToRejectListInteraction$4;-><init>(Lcom/android/contacts/interactions/AddToRejectListInteraction;Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/high16 v6, 0x104

    new-instance v7, Lcom/android/contacts/interactions/AddToRejectListInteraction$3;

    invoke-direct {v7, p0}, Lcom/android/contacts/interactions/AddToRejectListInteraction$3;-><init>(Lcom/android/contacts/interactions/AddToRejectListInteraction;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mSamePhoneNumberContactsDialog:Landroid/app/AlertDialog;

    .line 302
    iget-object v5, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mSamePhoneNumberContactsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 303
    iget-object v5, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mSamePhoneNumberContactsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 304
    return-void
.end method

.method public static start(Landroid/app/Activity;Landroid/net/Uri;Z)Lcom/android/contacts/interactions/AddToRejectListInteraction;
    .locals 1
    .parameter "activity"
    .parameter "contactUri"
    .parameter "isAdd"

    .prologue
    .line 97
    invoke-static {p0, p1, p2}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->startWithTestLoaderManager(Landroid/app/Activity;Landroid/net/Uri;Z)Lcom/android/contacts/interactions/AddToRejectListInteraction;

    move-result-object v0

    return-object v0
.end method

.method private startAddToRejectList()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 146
    iget-boolean v2, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mIsAdd:Z

    if-eqz v2, :cond_0

    .line 147
    new-instance v0, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;

    invoke-direct {v0, p0}, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;-><init>(Lcom/android/contacts/interactions/AddToRejectListInteraction;)V

    .line 148
    .local v0, result:Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;
    iget-object v2, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContactUri:Landroid/net/Uri;

    iput-object v2, v0, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;->contactUri:Landroid/net/Uri;

    .line 149
    new-instance v1, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTask;

    invoke-direct {v1, p0, v5}, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTask;-><init>(Lcom/android/contacts/interactions/AddToRejectListInteraction;Lcom/android/contacts/interactions/AddToRejectListInteraction$1;)V

    .line 150
    .local v1, task:Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTask;
    new-array v2, v3, [Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 155
    .end local v0           #result:Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;
    .end local v1           #task:Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTask;
    :goto_0
    return-void

    .line 152
    :cond_0
    new-instance v1, Lcom/android/contacts/interactions/AddToRejectListInteraction$RemoveFromRejectListTask;

    invoke-direct {v1, p0, v5}, Lcom/android/contacts/interactions/AddToRejectListInteraction$RemoveFromRejectListTask;-><init>(Lcom/android/contacts/interactions/AddToRejectListInteraction;Lcom/android/contacts/interactions/AddToRejectListInteraction$1;)V

    .line 153
    .local v1, task:Lcom/android/contacts/interactions/AddToRejectListInteraction$RemoveFromRejectListTask;
    new-array v2, v3, [Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContactUri:Landroid/net/Uri;

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/android/contacts/interactions/AddToRejectListInteraction$RemoveFromRejectListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method static startWithTestLoaderManager(Landroid/app/Activity;Landroid/net/Uri;Z)Lcom/android/contacts/interactions/AddToRejectListInteraction;
    .locals 4
    .parameter "activity"
    .parameter "contactUri"
    .parameter "isAdd"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 111
    if-nez p1, :cond_0

    .line 112
    const/4 v0, 0x0

    .line 126
    :goto_0
    return-object v0

    .line 115
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 116
    .local v1, fragmentManager:Landroid/app/FragmentManager;
    const-string v2, "addToRejectList"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/interactions/AddToRejectListInteraction;

    .line 118
    .local v0, fragment:Lcom/android/contacts/interactions/AddToRejectListInteraction;
    if-nez v0, :cond_1

    .line 119
    new-instance v0, Lcom/android/contacts/interactions/AddToRejectListInteraction;

    .end local v0           #fragment:Lcom/android/contacts/interactions/AddToRejectListInteraction;
    invoke-direct {v0}, Lcom/android/contacts/interactions/AddToRejectListInteraction;-><init>()V

    .line 120
    .restart local v0       #fragment:Lcom/android/contacts/interactions/AddToRejectListInteraction;
    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->setContactUri(Landroid/net/Uri;Z)V

    .line 121
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const-string v3, "addToRejectList"

    invoke-virtual {v2, v0, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 124
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->setContactUri(Landroid/net/Uri;Z)V

    goto :goto_0
.end method


# virtual methods
.method isStarted()Z
    .locals 1

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->isAdded()Z

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 332
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 333
    if-eqz p1, :cond_0

    .line 334
    const-string v2, "active"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mActive:Z

    .line 335
    const-string v2, "contactUri"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iput-object v2, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContactUri:Landroid/net/Uri;

    .line 336
    const-string v2, "isAdd"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mIsAdd:Z

    .line 337
    const-string v2, "contactUris"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContactUris:Ljava/util/ArrayList;

    .line 339
    const-string v2, "isAdds"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v1

    .line 340
    .local v1, isAdds:[Z
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 341
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mIsAdds:Ljava/util/ArrayList;

    .line 343
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 344
    iget-object v2, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mIsAdds:Ljava/util/ArrayList;

    aget-boolean v3, v1, v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 348
    .end local v0           #i:I
    .end local v1           #isAdds:[Z
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 131
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 132
    iput-object p1, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContext:Landroid/content/Context;

    .line 133
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 137
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 138
    iget-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mBlackListSizeOverDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mBlackListSizeOverDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mBlackListSizeOverDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 140
    iget-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mBlackListSizeOverDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 141
    iput-object v1, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mBlackListSizeOverDialog:Landroid/app/AlertDialog;

    .line 143
    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 308
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mActive:Z

    .line 309
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mBlackListSizeOverDialog:Landroid/app/AlertDialog;

    .line 310
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "outState"

    .prologue
    .line 314
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 315
    const-string v2, "active"

    iget-boolean v3, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mActive:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 316
    const-string v2, "contactUri"

    iget-object v3, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContactUri:Landroid/net/Uri;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 317
    const-string v2, "isAdd"

    iget-boolean v3, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mIsAdd:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 318
    const-string v2, "contactUris"

    iget-object v3, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContactUris:Ljava/util/ArrayList;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 320
    iget-object v2, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mIsAdds:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 321
    iget-object v2, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mIsAdds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [Z

    .line 322
    .local v1, isAdds:[Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mIsAdds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 323
    iget-object v2, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mIsAdds:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    aput-boolean v2, v1, v0

    .line 322
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 326
    :cond_0
    const-string v2, "isAdds"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 328
    .end local v0           #i:I
    .end local v1           #isAdds:[Z
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mActive:Z

    if-eqz v0, :cond_0

    .line 207
    invoke-direct {p0}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->startAddToRejectList()V

    .line 209
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 210
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 214
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 215
    iget-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mBlackListSizeOverDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mBlackListSizeOverDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->hide()V

    .line 218
    :cond_0
    return-void
.end method

.method public setContactUri(Landroid/net/Uri;Z)V
    .locals 2
    .parameter "contactUri"
    .parameter "isAdd"

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mActive:Z

    if-eqz v0, :cond_3

    .line 159
    iget-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContactUris:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContactUris:Ljava/util/ArrayList;

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContactUris:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mIsAdds:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mIsAdds:Ljava/util/ArrayList;

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mIsAdds:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    :cond_2
    :goto_0
    return-void

    .line 168
    :cond_3
    iput-object p1, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContactUri:Landroid/net/Uri;

    .line 169
    iput-boolean p2, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mIsAdd:Z

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mActive:Z

    .line 171
    invoke-virtual {p0}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 172
    invoke-direct {p0}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->startAddToRejectList()V

    goto :goto_0
.end method
