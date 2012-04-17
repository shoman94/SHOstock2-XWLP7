.class public Lcom/sec/android/app/contacts/sim/MakeSimDBService;
.super Landroid/app/Service;
.source "MakeSimDBService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/sim/MakeSimDBService$1;,
        Lcom/sec/android/app/contacts/sim/MakeSimDBService$ServiceHandler;
    }
.end annotation


# static fields
.field static final ADN_EMAILS_PROJECTION:[Ljava/lang/String;

.field static final ADN_PROJECTION:[Ljava/lang/String;

.field static final ADN_SIMPLE_PROJECTION:[Ljava/lang/String;

.field private static volatile EMAIL_COLUMN:I

.field private static volatile INDEX_COLUMN:I

.field private static volatile NAME_COLUMN:I

.field private static volatile NUMBER_COLUMN:I

.field private static mBatchCounter:I

.field private static mInitSettingValue:J

.field private static mLastBatch:I

.field private static mLastOneBatchCount:I

.field static final mOperationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mCursor:Landroid/database/Cursor;

.field private mProviderStatus:I

.field private mResolver:Landroid/content/ContentResolver;

.field private volatile mServiceHandler:Lcom/sec/android/app/contacts/sim/MakeSimDBService$ServiceHandler;

.field private volatile mServiceLooper:Landroid/os/Looper;

.field private mTelMan:Landroid/telephony/TelephonyManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 81
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v2

    const-string v1, "number"

    aput-object v1, v0, v4

    const-string v1, "emails"

    aput-object v1, v0, v5

    const-string v1, "adn_index"

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->ADN_PROJECTION:[Ljava/lang/String;

    .line 88
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v2

    const-string v1, "number"

    aput-object v1, v0, v4

    const-string v1, "adn_index"

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->ADN_SIMPLE_PROJECTION:[Ljava/lang/String;

    .line 94
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "emails"

    aput-object v1, v0, v2

    const-string v1, "adn_index"

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->ADN_EMAILS_PROJECTION:[Ljava/lang/String;

    .line 99
    sput v3, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->NAME_COLUMN:I

    .line 100
    sput v3, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->NUMBER_COLUMN:I

    .line 101
    sput v3, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->EMAIL_COLUMN:I

    .line 102
    sput v3, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->INDEX_COLUMN:I

    .line 104
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mInitSettingValue:J

    .line 106
    sput v2, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mBatchCounter:I

    .line 107
    sput v2, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mLastBatch:I

    .line 108
    sput v2, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mLastOneBatchCount:I

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mOperationList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 111
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mProviderStatus:I

    .line 978
    return-void
.end method

.method private CompareAdnData(III)V
    .locals 2
    .parameter "opCode"
    .parameter "simState"
    .parameter "startId"

    .prologue
    .line 406
    :goto_0
    const-string v0, "1"

    const-string v1, "ril.initPB"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->checkProviderState()Z

    move-result v0

    if-nez v0, :cond_1

    .line 407
    :cond_0
    monitor-enter p0

    .line 409
    const-wide/16 v0, 0x1388

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    :goto_1
    :try_start_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 415
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doCompareData(III)V

    .line 416
    return-void

    .line 410
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/sim/MakeSimDBService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doInitAction(II)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/sim/MakeSimDBService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doQueryAction(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/sim/MakeSimDBService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doAirPlaneAction(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/sim/MakeSimDBService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doCheckAdnAttribute(II)V

    return-void
.end method

.method private static actuallyImportOneSimContact(Landroid/database/Cursor;Landroid/content/ContentResolver;Landroid/accounts/Account;)V
    .locals 19
    .parameter "cursor"
    .parameter "resolver"
    .parameter "account"

    .prologue
    .line 625
    sget v14, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->NAME_COLUMN:I

    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 626
    .local v10, name:Ljava/lang/String;
    const/4 v12, 0x2

    .line 627
    .local v12, phoneType:I
    sget v14, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->NUMBER_COLUMN:I

    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 628
    .local v11, phoneNumber:Ljava/lang/String;
    sget v14, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->EMAIL_COLUMN:I

    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 629
    .local v6, emailAddresses:Ljava/lang/String;
    sget v14, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->INDEX_COLUMN:I

    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 631
    .local v8, index:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 632
    const-string v14, ","

    invoke-virtual {v6, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 637
    .local v5, emailAddressArray:[Ljava/lang/String;
    :goto_0
    sget-object v14, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 640
    .local v13, rawContactIdIndex:I
    sget-object v14, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v14}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 642
    .local v2, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v14, "account_name"

    move-object/from16 v0, p2

    iget-object v15, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v14, v15}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 643
    const-string v14, "account_type"

    move-object/from16 v0, p2

    iget-object v15, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v14, v15}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 644
    const-string v14, "sourceid"

    invoke-virtual {v2, v14, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 646
    sget-object v14, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 649
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 650
    sget-object v14, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v14}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 651
    const-string v14, "raw_contact_id"

    invoke-virtual {v2, v14, v13}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 652
    const-string v14, "mimetype"

    const-string v15, "vnd.android.cursor.item/name"

    invoke-virtual {v2, v14, v15}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 653
    const-string v14, "data2"

    invoke-virtual {v2, v14, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 654
    sget-object v14, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 658
    :cond_0
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 659
    sget-object v14, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v14}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 660
    const-string v14, "raw_contact_id"

    invoke-virtual {v2, v14, v13}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 661
    const-string v14, "mimetype"

    const-string v15, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v2, v14, v15}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 662
    const-string v14, "data2"

    const/4 v15, 0x2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v2, v14, v15}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 663
    const-string v14, "data1"

    invoke-virtual {v2, v14, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 664
    const-string v14, "is_primary"

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v2, v14, v15}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 665
    sget-object v14, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 669
    :cond_1
    if-eqz v5, :cond_4

    .line 670
    move-object v1, v5

    .local v1, arr$:[Ljava/lang/String;
    array-length v9, v1

    .local v9, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_1
    if-ge v7, v9, :cond_4

    aget-object v4, v1, v7

    .line 671
    .local v4, emailAddress:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 672
    sget-object v14, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v14}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 673
    const-string v14, "raw_contact_id"

    invoke-virtual {v2, v14, v13}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 674
    const-string v14, "mimetype"

    const-string v15, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v2, v14, v15}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 675
    const-string v14, "data2"

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v2, v14, v15}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 676
    const-string v14, "data1"

    invoke-virtual {v2, v14, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 677
    sget-object v14, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 670
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 634
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v4           #emailAddress:Ljava/lang/String;
    .end local v5           #emailAddressArray:[Ljava/lang/String;
    .end local v7           #i$:I
    .end local v9           #len$:I
    .end local v13           #rawContactIdIndex:I
    :cond_3
    const/4 v5, 0x0

    .restart local v5       #emailAddressArray:[Ljava/lang/String;
    goto/16 :goto_0

    .line 683
    .restart local v2       #builder:Landroid/content/ContentProviderOperation$Builder;
    .restart local v13       #rawContactIdIndex:I
    :cond_4
    sget v14, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mBatchCounter:I

    add-int/lit8 v14, v14, 0x1

    sput v14, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mBatchCounter:I

    .line 684
    sget v14, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mLastOneBatchCount:I

    add-int/lit8 v14, v14, 0x1

    sput v14, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mLastOneBatchCount:I

    .line 685
    sget v14, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mBatchCounter:I

    const/16 v15, 0x3c

    if-ge v14, v15, :cond_5

    sget v14, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mLastOneBatchCount:I

    sget v15, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mLastBatch:I

    if-ne v14, v15, :cond_6

    .line 687
    :cond_5
    :try_start_0
    const-string v14, "com.android.contacts"

    sget-object v15, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mOperationList:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 688
    sget-object v14, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 689
    const/4 v14, 0x0

    sput v14, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mBatchCounter:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 698
    :cond_6
    :goto_2
    return-void

    .line 690
    :catch_0
    move-exception v3

    .line 691
    .local v3, e:Landroid/os/RemoteException;
    const-string v14, "MakeSimDBService"

    const-string v15, "%s: %s"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual {v3}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-virtual {v3}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 692
    .end local v3           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 693
    .local v3, e:Landroid/content/OperationApplicationException;
    const-string v14, "MakeSimDBService"

    const-string v15, "%s: %s"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual {v3}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-virtual {v3}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private checkAndUpdateAdnEditable()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 861
    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->isAdnEditable()Z

    move-result v0

    .line 863
    .local v0, isAdnEditable:Z
    const-string v2, "adn_editable"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->getIntPreferenceValue(Ljava/lang/String;I)I

    move-result v1

    .line 864
    .local v1, val:I
    if-eqz v0, :cond_1

    if-eq v1, v4, :cond_1

    .line 866
    const-string v2, "adn_editable"

    invoke-direct {p0, v2, v4}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->setIntPreferenceValue(Ljava/lang/String;I)V

    .line 872
    :cond_0
    :goto_0
    return-void

    .line 867
    :cond_1
    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    .line 869
    const-string v2, "adn_editable"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->setIntPreferenceValue(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private checkProviderState()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 1015
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$ProviderStatus;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v9, [Ljava/lang/String;

    const-string v4, "status"

    aput-object v4, v2, v8

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1018
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1019
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1020
    .local v7, status:I
    iget v0, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mProviderStatus:I

    if-eq v7, v0, :cond_0

    .line 1021
    iput v7, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mProviderStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1025
    .end local v7           #status:I
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1028
    iget v0, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mProviderStatus:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mProviderStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    :cond_1
    move v0, v9

    :goto_0
    return v0

    .line 1025
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    move v0, v8

    .line 1028
    goto :goto_0
.end method

.method private doAirPlaneAction(II)V
    .locals 5
    .parameter "opCode"
    .parameter "startId"

    .prologue
    const/4 v4, 0x0

    .line 708
    const-string v1, "airplane_mode_db_updated"

    invoke-direct {p0, v1, v4}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->getIntPreferenceValue(Ljava/lang/String;I)I

    move-result v0

    .line 709
    .local v0, isAirPlainDbUpdated:I
    const-string v1, "MakeSimDBService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@@ doAirPlaneAction : isAirPlainDbUpdated= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    if-nez v0, :cond_0

    .line 711
    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->initSimStatus()V

    .line 713
    const-string v1, "airplain_init_sim_status"

    sget-wide v2, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mInitSettingValue:J

    long-to-int v2, v2

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->setIntPreferenceValue(Ljava/lang/String;I)V

    .line 714
    const-string v1, "airplane_mode_db_updated"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->setIntPreferenceValue(Ljava/lang/String;I)V

    .line 717
    :cond_0
    invoke-direct {p0, p1, v4, p2}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doLastAction(III)V

    .line 719
    return-void
.end method

.method private doCheckAdnAttribute(II)V
    .locals 12
    .parameter "opCode"
    .parameter "startId"

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 785
    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->isFDNEnabled()Z

    move-result v2

    .line 786
    .local v2, isFdnEnabled:Z
    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->isAdnEditable()Z

    move-result v1

    .line 788
    .local v1, isAdnEditable:Z
    const-string v6, "adn_editable"

    invoke-direct {p0, v6, v9}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->getIntPreferenceValue(Ljava/lang/String;I)I

    move-result v5

    .line 789
    .local v5, val:I
    const-string v6, "MakeSimDBService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "@@ doCheckAdnAttribute isAdnEditable = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    if-eqz v1, :cond_2

    if-eq v5, v10, :cond_2

    .line 792
    const-string v6, "adn_editable"

    invoke-direct {p0, v6, v10}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->setIntPreferenceValue(Ljava/lang/String;I)V

    .line 798
    :cond_0
    :goto_0
    if-eqz v2, :cond_4

    .line 799
    if-nez v1, :cond_3

    .line 801
    const-string v6, "fdn_on_adn_deleted"

    invoke-direct {p0, v6, v10}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->setIntPreferenceValue(Ljava/lang/String;I)V

    .line 802
    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->preserveInitStatusForFDN()V

    .line 804
    const-string v6, "sim_db_ready"

    invoke-direct {p0, v6, v9}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->getIntPreferenceValue(Ljava/lang/String;I)I

    move-result v4

    .line 805
    .local v4, settingValue:I
    const-string v6, "MakeSimDBService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "@@ doCheckAdnAttribute settingValue(FDNEnable) = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    if-ne v4, v10, :cond_1

    .line 809
    const-string v6, "sim_db_ready"

    invoke-direct {p0, v6, v9}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->setIntPreferenceValue(Ljava/lang/String;I)V

    .line 812
    :cond_1
    const/4 v6, 0x6

    invoke-direct {p0, p1, v6, p2}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doDeleteSimDB(III)V

    .line 841
    .end local v4           #settingValue:I
    :goto_1
    return-void

    .line 793
    :cond_2
    if-nez v1, :cond_0

    if-eqz v5, :cond_0

    .line 795
    const-string v6, "adn_editable"

    invoke-direct {p0, v6, v9}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->setIntPreferenceValue(Ljava/lang/String;I)V

    goto :goto_0

    .line 815
    :cond_3
    invoke-direct {p0, p1, v11, p2}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doLastAction(III)V

    goto :goto_1

    .line 819
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 820
    .local v3, prefs:Landroid/content/SharedPreferences;
    const-string v6, "fdn_on_adn_deleted"

    invoke-interface {v3, v6, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 821
    .local v0, isAdnDeleted:I
    const-string v6, "MakeSimDBService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "@@ doCheckAdnAttribute isAdnDeleted = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    if-ne v0, v10, :cond_6

    .line 824
    const-string v6, "sim_db_ready"

    invoke-direct {p0, v6, v9}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->getIntPreferenceValue(Ljava/lang/String;I)I

    move-result v4

    .line 825
    .restart local v4       #settingValue:I
    const-string v6, "MakeSimDBService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "@@ doCheckAdnAttribute settingValue(FDNDisable) = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    if-ne v4, v10, :cond_5

    .line 829
    const-string v6, "sim_db_ready"

    invoke-direct {p0, v6, v9}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->setIntPreferenceValue(Ljava/lang/String;I)V

    .line 831
    :cond_5
    const/4 v6, 0x7

    invoke-direct {p0, p1, v6, p2}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->CompareAdnData(III)V

    goto :goto_1

    .line 835
    .end local v4           #settingValue:I
    :cond_6
    invoke-direct {p0, p1, v11, p2}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doLastAction(III)V

    goto :goto_1
.end method

.method private doCheckSimState(II)V
    .locals 9
    .parameter "opCode"
    .parameter "startId"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 306
    iget-object v6, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    .line 307
    .local v3, simState:I
    const-string v6, "MakeSimDBService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "@@ doCheckSimState simState = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_1

    move v1, v4

    .line 310
    .local v1, isAirPlaneOn:Z
    :goto_0
    const-string v6, "MakeSimDBService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " @@ doCheckSimState isAirPalneMode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    if-nez v3, :cond_0

    if-nez v1, :cond_0

    .line 312
    const/4 v2, 0x4

    .line 313
    .local v2, retry:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_0

    .line 314
    monitor-enter p0

    .line 316
    const-wide/16 v6, 0x1388

    :try_start_0
    invoke-virtual {p0, v6, v7}, Ljava/lang/Object;->wait(J)V

    .line 317
    iget-object v6, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimState()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 318
    if-eqz v3, :cond_2

    .line 319
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 326
    .end local v0           #i:I
    .end local v2           #retry:I
    :cond_0
    packed-switch v3, :pswitch_data_0

    .line 357
    invoke-direct {p0, p1, v5, p2}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doLastAction(III)V

    .line 362
    :goto_2
    return-void

    .end local v1           #isAirPlaneOn:Z
    :cond_1
    move v1, v5

    .line 309
    goto :goto_0

    .line 320
    .restart local v0       #i:I
    .restart local v1       #isAirPlaneOn:Z
    .restart local v2       #retry:I
    :catch_0
    move-exception v6

    .line 323
    :cond_2
    :try_start_2
    monitor-exit p0

    .line 313
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 323
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 328
    .end local v0           #i:I
    .end local v2           #retry:I
    :pswitch_0
    const-string v4, "MakeSimDBService"

    const-string v6, "@@ doCheckSimState: UNKNOWN"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    if-eqz v1, :cond_3

    .line 330
    invoke-direct {p0, p1, v5, p2}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doDeleteSimDB(III)V

    goto :goto_2

    .line 332
    :cond_3
    invoke-direct {p0, p1, v5, p2}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doLastAction(III)V

    goto :goto_2

    .line 337
    :pswitch_1
    const-string v5, "MakeSimDBService"

    const-string v6, "@@ doCheckSimState: No SIM"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-direct {p0, p1, v4, p2}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doDeleteSimDB(III)V

    goto :goto_2

    .line 347
    :pswitch_2
    const/16 v4, 0x270f

    if-ne p1, v4, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->isIccCardChanged()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 348
    const-string v4, "MakeSimDBService"

    const-string v5, "@@ SIM card is changed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    const/4 v4, 0x2

    invoke-direct {p0, p1, v4, p2}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doDeleteSimDB(III)V

    goto :goto_2

    .line 351
    :cond_4
    const-string v4, "MakeSimDBService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "@@ doCheckSimState: SIM READY opCode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const/4 v4, 0x5

    invoke-direct {p0, p1, v4, p2}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->CompareAdnData(III)V

    goto :goto_2

    .line 326
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private doCompareData(III)V
    .locals 13
    .parameter "opCode"
    .parameter "simState"
    .parameter "startId"

    .prologue
    .line 427
    const/4 v7, 0x0

    .line 428
    .local v7, diff:I
    const/4 v8, 0x0

    .line 429
    .local v8, diff_found:Z
    const/4 v6, 0x0

    .line 430
    .local v6, dbCursor:Landroid/database/Cursor;
    const/4 v12, 0x0

    .line 432
    .local v12, simCursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/contacts/util/Constants;->RAW_CONTACT_ADN_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->ADN_SIMPLE_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 433
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/contacts/util/Constants;->ADN_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->ADN_SIMPLE_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 434
    if-eqz v6, :cond_6

    if-eqz v12, :cond_6

    .line 435
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 437
    const-string v0, "MakeSimDBService"

    const-string v1, "@@ 1st Count is different break"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    invoke-direct/range {p0 .. p3}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doDeleteSimDB(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 465
    :cond_0
    if-eqz v12, :cond_1

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 512
    :cond_1
    :goto_0
    return-void

    .line 440
    :cond_2
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 441
    invoke-direct/range {p0 .. p3}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doLastAction(III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 464
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 465
    :cond_3
    if-eqz v12, :cond_1

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 444
    :cond_4
    :try_start_2
    new-instance v11, Landroid/database/CursorJoiner;

    sget-object v0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->ADN_SIMPLE_PROJECTION:[Ljava/lang/String;

    sget-object v1, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->ADN_SIMPLE_PROJECTION:[Ljava/lang/String;

    invoke-direct {v11, v6, v0, v12, v1}, Landroid/database/CursorJoiner;-><init>(Landroid/database/Cursor;[Ljava/lang/String;Landroid/database/Cursor;[Ljava/lang/String;)V

    .line 445
    .local v11, joiner:Landroid/database/CursorJoiner;
    invoke-virtual {v11}, Landroid/database/CursorJoiner;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/database/CursorJoiner$Result;

    .line 446
    .local v10, joinResult:Landroid/database/CursorJoiner$Result;
    sget-object v0, Lcom/sec/android/app/contacts/sim/MakeSimDBService$1;->$SwitchMap$android$database$CursorJoiner$Result:[I

    invoke-virtual {v10}, Landroid/database/CursorJoiner$Result;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    packed-switch v0, :pswitch_data_0

    .line 456
    :goto_1
    if-lez v7, :cond_5

    .line 457
    const/4 v8, 0x1

    .line 464
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #joinResult:Landroid/database/CursorJoiner$Result;
    .end local v11           #joiner:Landroid/database/CursorJoiner;
    :cond_6
    if-eqz v6, :cond_7

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 465
    :cond_7
    if-eqz v12, :cond_8

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 467
    :cond_8
    if-nez v8, :cond_10

    .line 468
    const/4 v6, 0x0

    .line 469
    const/4 v12, 0x0

    .line 471
    :try_start_3
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/contacts/util/Constants;->RAW_CONTACT_ADN_EMAILS_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->ADN_EMAILS_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 472
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/contacts/util/Constants;->ADN_EMAILS_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->ADN_EMAILS_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 474
    if-eqz v6, :cond_e

    if-eqz v12, :cond_e

    .line 475
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eq v0, v1, :cond_c

    .line 477
    const-string v0, "MakeSimDBService"

    const-string v1, "@@ 2nd Count is different break"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    invoke-direct/range {p0 .. p3}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doDeleteSimDB(III)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 500
    if-eqz v6, :cond_9

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 501
    :cond_9
    if-eqz v12, :cond_1

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 448
    .restart local v9       #i$:Ljava/util/Iterator;
    .restart local v10       #joinResult:Landroid/database/CursorJoiner$Result;
    .restart local v11       #joiner:Landroid/database/CursorJoiner;
    :pswitch_0
    add-int/lit8 v7, v7, 0x1

    .line 449
    goto :goto_1

    .line 451
    :pswitch_1
    add-int/lit8 v7, v7, 0x1

    .line 452
    goto :goto_1

    .line 464
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #joinResult:Landroid/database/CursorJoiner$Result;
    .end local v11           #joiner:Landroid/database/CursorJoiner;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_a

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 465
    :cond_a
    if-eqz v12, :cond_b

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v0

    .line 481
    :cond_c
    :try_start_4
    new-instance v11, Landroid/database/CursorJoiner;

    sget-object v0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->ADN_EMAILS_PROJECTION:[Ljava/lang/String;

    sget-object v1, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->ADN_EMAILS_PROJECTION:[Ljava/lang/String;

    invoke-direct {v11, v6, v0, v12, v1}, Landroid/database/CursorJoiner;-><init>(Landroid/database/Cursor;[Ljava/lang/String;Landroid/database/Cursor;[Ljava/lang/String;)V

    .line 482
    .restart local v11       #joiner:Landroid/database/CursorJoiner;
    invoke-virtual {v11}, Landroid/database/CursorJoiner;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9       #i$:Ljava/util/Iterator;
    :cond_d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/database/CursorJoiner$Result;

    .line 483
    .restart local v10       #joinResult:Landroid/database/CursorJoiner$Result;
    sget-object v0, Lcom/sec/android/app/contacts/sim/MakeSimDBService$1;->$SwitchMap$android$database$CursorJoiner$Result:[I

    invoke-virtual {v10}, Landroid/database/CursorJoiner$Result;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    packed-switch v0, :pswitch_data_1

    .line 493
    :goto_2
    if-lez v7, :cond_d

    .line 494
    const/4 v8, 0x1

    .line 500
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #joinResult:Landroid/database/CursorJoiner$Result;
    .end local v11           #joiner:Landroid/database/CursorJoiner;
    :cond_e
    if-eqz v6, :cond_f

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 501
    :cond_f
    if-eqz v12, :cond_10

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 506
    :cond_10
    if-eqz v8, :cond_13

    .line 507
    const-string v0, "MakeSimDBService"

    const-string v1, "@@ diff found Goto delete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    invoke-direct/range {p0 .. p3}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doDeleteSimDB(III)V

    goto/16 :goto_0

    .line 485
    .restart local v9       #i$:Ljava/util/Iterator;
    .restart local v10       #joinResult:Landroid/database/CursorJoiner$Result;
    .restart local v11       #joiner:Landroid/database/CursorJoiner;
    :pswitch_2
    add-int/lit8 v7, v7, 0x1

    .line 486
    goto :goto_2

    .line 488
    :pswitch_3
    add-int/lit8 v7, v7, 0x1

    .line 489
    goto :goto_2

    .line 500
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #joinResult:Landroid/database/CursorJoiner$Result;
    .end local v11           #joiner:Landroid/database/CursorJoiner;
    :catchall_1
    move-exception v0

    if-eqz v6, :cond_11

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 501
    :cond_11
    if-eqz v12, :cond_12

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_12
    throw v0

    .line 510
    :cond_13
    invoke-direct/range {p0 .. p3}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doLastAction(III)V

    goto/16 :goto_0

    .line 446
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 483
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private doDeleteSimDB(III)V
    .locals 12
    .parameter "opCode"
    .parameter "simState"
    .parameter "startId"

    .prologue
    const/4 v3, 0x0

    .line 521
    const-string v0, "MakeSimDBService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@@ doDeleteSimDB: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->checkProviderState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 524
    monitor-enter p0

    .line 526
    const-wide/16 v4, 0x1388

    :try_start_0
    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    :goto_1
    :try_start_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 532
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 534
    .local v10, start:J
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "account_name"

    const-string v4, "primary.sim.account_name"

    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "account_type"

    const-string v4, "vnd.sec.contact.sim"

    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "limit"

    const-string v4, "1"

    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 538
    .local v1, checkUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 539
    .local v6, cur:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 540
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 541
    sget-object v0, Lcom/android/contacts/util/Constants;->RAW_CONTACTS_WIPEOUT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "account_name"

    const-string v4, "primary.sim.account_name"

    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "account_type"

    const-string v4, "vnd.sec.contact.sim"

    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    .line 544
    .local v7, deleteUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v7, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 548
    .end local v7           #deleteUri:Landroid/net/Uri;
    :cond_1
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 549
    .local v8, end:J
    const-string v0, "MakeSimDBService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@@ db delete time : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-long v3, v8, v10

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "msec"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    packed-switch p2, :pswitch_data_0

    .line 569
    :goto_3
    :pswitch_0
    return-void

    .line 545
    .end local v8           #end:J
    :cond_2
    if-eqz v6, :cond_1

    .line 546
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 555
    .restart local v8       #end:J
    :pswitch_1
    const-string v0, "MakeSimDBService"

    const-string v2, "@@ doDeleteSimDB Go to last action "

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doLastAction(III)V

    goto :goto_3

    .line 562
    :pswitch_2
    const-string v0, "MakeSimDBService"

    const-string v2, "@@ doDeleteSimDB Go to Write action "

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doWriteSimDB(III)V

    goto :goto_3

    .line 527
    .end local v1           #checkUri:Landroid/net/Uri;
    .end local v6           #cur:Landroid/database/Cursor;
    .end local v8           #end:J
    .end local v10           #start:J
    :catch_0
    move-exception v0

    goto/16 :goto_1

    .line 551
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private doInitAction(II)V
    .locals 0
    .parameter "opCode"
    .parameter "startId"

    .prologue
    .line 267
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doCheckSimState(II)V

    .line 268
    return-void
.end method

.method private doLastAction(III)V
    .locals 11
    .parameter "opCode"
    .parameter "simState"
    .parameter "startId"

    .prologue
    .line 881
    const/4 v2, 0x0

    .line 884
    .local v2, needNotify:Z
    const-string v7, "sim_db_ready"

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->getIntPreferenceValue(Ljava/lang/String;I)I

    move-result v4

    .line 885
    .local v4, settingValue:I
    const-string v7, "MakeSimDBService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "@@ doLastAction : settingValue= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    const-string v7, "MakeSimDBService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "@@ doLastAction : simState = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " opCode ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    if-nez v4, :cond_1

    .line 889
    const-string v7, "sim_db_ready"

    const/4 v8, 0x1

    invoke-direct {p0, v7, v8}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->setIntPreferenceValue(Ljava/lang/String;I)V

    .line 890
    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->setRuntimeFirstBootTime()V

    .line 891
    if-nez p2, :cond_0

    .line 895
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.samsung.intent.action.SIMDB_UNKNOWN_READY"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->sendBroadcast(Landroid/content/Intent;)V

    .line 897
    :cond_0
    const/4 v2, 0x1

    .line 902
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 944
    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->checkAndUpdateAdnEditable()V

    .line 949
    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    .line 951
    const-string v7, "MakeSimDBService"

    const-string v8, "@@  NOTIFY !!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 956
    :cond_3
    invoke-direct {p0, p3}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doStopService(I)V

    .line 958
    return-void

    .line 904
    :sswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->checkAndUpdateAdnEditable()V

    goto :goto_0

    .line 910
    :sswitch_1
    if-eqz p2, :cond_5

    .line 911
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 912
    .local v3, prefs:Landroid/content/SharedPreferences;
    const-string v7, "airplane_mode_changed"

    const/4 v8, 0x0

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 913
    .local v1, isAirPlainChanged:I
    const/4 v7, 0x1

    if-ne v1, v7, :cond_5

    .line 914
    const-string v7, "airplain_init_sim_status"

    const/4 v8, 0x1

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    int-to-long v5, v7

    .line 915
    .local v5, status:J
    const-string v7, "MakeSimDBService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "@@ 7777 initStatus = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    const-wide/16 v7, 0x1

    cmp-long v7, v5, v7

    if-nez v7, :cond_4

    .line 917
    invoke-direct {p0, v5, v6}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->updateSettingStatus(J)V

    .line 918
    const/4 v2, 0x0

    .line 920
    :cond_4
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 921
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v7, "airplane_mode_changed"

    const/4 v8, 0x0

    invoke-interface {v0, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 922
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 925
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #isAirPlainChanged:I
    .end local v3           #prefs:Landroid/content/SharedPreferences;
    .end local v5           #status:J
    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->checkAndUpdateAdnEditable()V

    goto :goto_0

    .line 929
    :sswitch_2
    const/4 v7, 0x7

    if-ne p2, v7, :cond_2

    .line 930
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->updateAdnDeletedStatus(I)V

    .line 931
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 932
    .restart local v3       #prefs:Landroid/content/SharedPreferences;
    const-string v7, "fdn_init_sim_status"

    const/4 v8, 0x1

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    int-to-long v5, v7

    .line 933
    .restart local v5       #status:J
    const-string v7, "MakeSimDBService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "@@ 6666 initStatus = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    const-wide/16 v7, 0x1

    cmp-long v7, v5, v7

    if-nez v7, :cond_2

    .line 935
    invoke-direct {p0, v5, v6}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->updateSettingStatus(J)V

    .line 936
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 902
    :sswitch_data_0
    .sparse-switch
        0x1a0a -> :sswitch_2
        0x1e61 -> :sswitch_1
        0x270f -> :sswitch_0
    .end sparse-switch
.end method

.method private doQueryAction(II)V
    .locals 3
    .parameter "opCode"
    .parameter "startId"

    .prologue
    .line 729
    const-string v1, "sim_db_ready"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->getIntPreferenceValue(Ljava/lang/String;I)I

    move-result v0

    .line 730
    .local v0, settingValue:I
    if-nez v0, :cond_0

    .line 732
    const-string v1, "sim_db_ready"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->setIntPreferenceValue(Ljava/lang/String;I)V

    .line 733
    :cond_0
    invoke-direct {p0, p2}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doStopService(I)V

    .line 734
    return-void
.end method

.method private doStopService(I)V
    .locals 0
    .parameter "startId"

    .prologue
    .line 974
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->stopSelfResult(I)Z

    .line 975
    return-void
.end method

.method private doWriteSimDB(III)V
    .locals 6
    .parameter "opCode"
    .parameter "simState"
    .parameter "startId"

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 572
    sput v0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mBatchCounter:I

    .line 573
    sput v0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mLastOneBatchCount:I

    .line 574
    :goto_0
    const-string v0, "1"

    const-string v1, "ril.initPB"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->checkProviderState()Z

    move-result v0

    if-nez v0, :cond_1

    .line 575
    :cond_0
    monitor-enter p0

    .line 577
    const-wide/16 v0, 0x1388

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 581
    :goto_1
    :try_start_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 583
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/contacts/util/Constants;->ADN_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->ADN_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mCursor:Landroid/database/Cursor;

    .line 584
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    .line 585
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    sput v0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mLastBatch:I

    .line 586
    const-string v0, "MakeSimDBService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@ WriteAllSimContactsThread mLastBatch = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mLastBatch:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 588
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->getColumnIndexs(Landroid/database/Cursor;)V

    .line 589
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mCursor:Landroid/database/Cursor;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 590
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 591
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mAccount:Landroid/accounts/Account;

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->actuallyImportOneSimContact(Landroid/database/Cursor;Landroid/content/ContentResolver;Landroid/accounts/Account;)V

    goto :goto_2

    .line 593
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 594
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 597
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doLastAction(III)V

    .line 600
    return-void

    .line 578
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private getColumnIndexs(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 608
    const-string v0, "name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->NAME_COLUMN:I

    .line 609
    const-string v0, "number"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->NUMBER_COLUMN:I

    .line 610
    const-string v0, "emails"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->EMAIL_COLUMN:I

    .line 611
    const-string v0, "adn_index"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->INDEX_COLUMN:I

    .line 612
    return-void
.end method

.method private getIntPreferenceValue(Ljava/lang/String;I)I
    .locals 2
    .parameter "prefKey"
    .parameter "defVal"

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 238
    .local v0, pref:Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private getSimAccountStatus()J
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x0

    .line 242
    const-wide/16 v7, 0x0

    .line 243
    .local v7, simStatus:J
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "ungrouped_visible"

    aput-object v3, v2, v9

    const-string v3, " account_type = \'vnd.sec.contact.sim\' AND account_name = \'primary.sim.account_name\' "

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 244
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 245
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    goto :goto_0

    .line 248
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 250
    :cond_1
    return-wide v7
.end method

.method private initSimStatus()V
    .locals 4

    .prologue
    .line 259
    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->getSimAccountStatus()J

    move-result-wide v0

    sput-wide v0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mInitSettingValue:J

    .line 261
    sget-wide v0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mInitSettingValue:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 262
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->updateSettingStatus(J)V

    .line 264
    :cond_0
    return-void
.end method

.method private isAdnEditable()Z
    .locals 11

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 742
    const-string v8, "ril.ICC_TYPE"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 743
    .local v4, simType:Ljava/lang/String;
    const-string v8, "2"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 782
    :cond_0
    :goto_0
    :pswitch_0
    return v6

    .line 745
    :cond_1
    iget-object v8, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    .line 746
    .local v2, simState:I
    if-ne v6, v2, :cond_2

    move v6, v7

    .line 747
    goto :goto_0

    .line 748
    :cond_2
    const/4 v3, 0x0

    .line 751
    .local v3, simStatus:I
    :try_start_0
    const-string v8, "simphonebook"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 753
    .local v1, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_3

    .line 754
    const/16 v8, 0x6f3a

    invoke-interface {v1, v8}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnLikesSimStatusInfo(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 766
    .end local v1           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_3
    :goto_1
    const-string v8, "MakeSimDBService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "@@ AdnEditalbe simStatus = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    and-int/lit8 v0, v3, 0x1

    .line 768
    .local v0, firstBit:I
    and-int/lit8 v5, v3, 0x4

    .line 769
    .local v5, thirdBit:I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 772
    :pswitch_1
    if-nez v5, :cond_4

    move v6, v7

    .line 773
    goto :goto_0

    .line 774
    :cond_4
    if-ne v5, v6, :cond_0

    goto :goto_0

    .line 758
    .end local v0           #firstBit:I
    .end local v5           #thirdBit:I
    :catch_0
    move-exception v8

    goto :goto_1

    .line 757
    :catch_1
    move-exception v8

    goto :goto_1

    .line 756
    :catch_2
    move-exception v8

    goto :goto_1

    .line 769
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isFDNEnabled()Z
    .locals 3

    .prologue
    .line 850
    const/4 v0, 0x0

    .line 852
    .local v0, isFDNEnabled:Z
    :try_start_0
    const-string v2, "phoneext"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v1

    .line 853
    .local v1, phone:Lcom/android/internal/telephony/ITelephonyExt;
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephonyExt;->isSimFDNEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 857
    .end local v1           #phone:Lcom/android/internal/telephony/ITelephonyExt;
    :goto_0
    return v0

    .line 854
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private isIccCardChanged()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 372
    const-string v6, "1"

    const-string v7, "ril.isIccChanged"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 375
    const-string v6, "ro.runtime.firstboot"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 376
    .local v1, firstBootTime:Ljava/lang/String;
    const-string v0, "1"

    .line 377
    .local v0, fakeBootTime:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 378
    .local v3, pref:Landroid/content/SharedPreferences;
    const-string v6, "runtime_firstboot_time"

    const-string v7, "0"

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 379
    .local v2, iccChangedBootTime:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 382
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "runtime_firstboot_time"

    const-string v7, "1"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 400
    .end local v0           #fakeBootTime:Ljava/lang/String;
    .end local v1           #firstBootTime:Ljava/lang/String;
    .end local v2           #iccChangedBootTime:Ljava/lang/String;
    .end local v3           #pref:Landroid/content/SharedPreferences;
    :goto_0
    return v4

    .line 386
    .restart local v0       #fakeBootTime:Ljava/lang/String;
    .restart local v1       #firstBootTime:Ljava/lang/String;
    .restart local v2       #iccChangedBootTime:Ljava/lang/String;
    .restart local v3       #pref:Landroid/content/SharedPreferences;
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 387
    const-string v6, "1"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 389
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v6, "runtime_firstboot_time"

    invoke-interface {v4, v6, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    move v4, v5

    .line 390
    goto :goto_0

    .line 392
    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 394
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "runtime_firstboot_time"

    invoke-interface {v5, v6, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .end local v0           #fakeBootTime:Ljava/lang/String;
    .end local v1           #firstBootTime:Ljava/lang/String;
    .end local v2           #iccChangedBootTime:Ljava/lang/String;
    .end local v3           #pref:Landroid/content/SharedPreferences;
    :cond_2
    move v4, v5

    .line 400
    goto :goto_0
.end method

.method private preserveInitStatusForFDN()V
    .locals 4

    .prologue
    .line 844
    const-wide/16 v0, 0x0

    .line 845
    .local v0, initVal:J
    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->getSimAccountStatus()J

    move-result-wide v0

    .line 846
    const-string v2, "fdn_init_sim_status"

    long-to-int v3, v0

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->setIntPreferenceValue(Ljava/lang/String;I)V

    .line 847
    return-void
.end method

.method private sendMessage(III)V
    .locals 2
    .parameter "opCode"
    .parameter "startId"
    .parameter "what"

    .prologue
    .line 206
    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mServiceHandler:Lcom/sec/android/app/contacts/sim/MakeSimDBService$ServiceHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/sim/MakeSimDBService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 207
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 208
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 209
    iput p3, v0, Landroid/os/Message;->what:I

    .line 210
    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mServiceHandler:Lcom/sec/android/app/contacts/sim/MakeSimDBService$ServiceHandler;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/contacts/sim/MakeSimDBService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 211
    return-void
.end method

.method private setIntPreferenceValue(Ljava/lang/String;I)V
    .locals 2
    .parameter "prefKey"
    .parameter "prefVal"

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 228
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 229
    return-void
.end method

.method private setRuntimeFirstBootTime()V
    .locals 7

    .prologue
    .line 961
    const-string v4, "ro.runtime.firstboot"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 962
    .local v1, firstBootTime:Ljava/lang/String;
    const-string v0, "1"

    .line 963
    .local v0, fakeBootTime:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 964
    .local v2, pref:Landroid/content/SharedPreferences;
    const-string v4, "runtime_firstboot_time"

    const-string v5, "0"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 965
    .local v3, runtimeFirstBootTime:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 966
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "runtime_firstboot_time"

    const-string v6, "1"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 971
    :cond_0
    :goto_0
    return-void

    .line 967
    :cond_1
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 968
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "runtime_firstboot_time"

    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method private updateAdnDeletedStatus(I)V
    .locals 3
    .parameter "deleted"

    .prologue
    .line 736
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 737
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 738
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "fdn_on_adn_deleted"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 739
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 740
    return-void
.end method

.method private updateSettingStatus(J)V
    .locals 6
    .parameter "status"

    .prologue
    const/4 v5, 0x0

    .line 271
    sget-object v2, Landroid/provider/ContactsContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "account_name"

    const-string v4, "primary.sim.account_name"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "account_type"

    const-string v4, "vnd.sec.contact.sim"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 274
    .local v0, settingUri:Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 275
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "ungrouped_visible"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 276
    iget-object v2, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, v0, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 278
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 117
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    .line 123
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 125
    const-string v3, "MakeSimDBService"

    const-string v4, "@@ onCreate!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 127
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mResolver:Landroid/content/ContentResolver;

    .line 128
    new-instance v3, Landroid/accounts/Account;

    const-string v4, "primary.sim.account_name"

    const-string v5, "vnd.sec.contact.sim"

    invoke-direct {v3, v4, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mAccount:Landroid/accounts/Account;

    .line 130
    const-string v3, "power"

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 131
    .local v1, pm:Landroid/os/PowerManager;
    const/4 v3, 0x1

    const-string v4, "MakeSimDBService"

    invoke-virtual {v1, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 132
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mTelMan:Landroid/telephony/TelephonyManager;

    .line 137
    new-instance v2, Ljava/lang/Thread;

    const/4 v3, 0x0

    const-string v4, "MakeSimDBService"

    invoke-direct {v2, v3, p0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 138
    .local v2, thr:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 139
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1034
    const-string v0, "MakeSimDBService"

    const-string v1, "@@ onDestory"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mServiceLooper:Landroid/os/Looper;

    if-nez v0, :cond_0

    .line 1038
    monitor-enter p0

    .line 1040
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1043
    :goto_1
    :try_start_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1045
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 1047
    return-void

    .line 1041
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 11
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v5, 0x3

    const/4 v10, 0x1

    const/4 v4, 0x2

    const/4 v9, 0x0

    .line 144
    :goto_0
    iget-object v6, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mServiceHandler:Lcom/sec/android/app/contacts/sim/MakeSimDBService$ServiceHandler;

    if-nez v6, :cond_0

    .line 145
    monitor-enter p0

    .line 147
    const-wide/16 v6, 0x64

    :try_start_0
    invoke-virtual {p0, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_1
    :try_start_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 152
    :cond_0
    if-nez p1, :cond_1

    .line 153
    const-string v5, "MakeSimDBService"

    const-string v6, "Intent is null in onStartCommand"

    new-instance v7, Ljava/lang/NullPointerException;

    invoke-direct {v7}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {v5, v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 202
    :goto_2
    return v4

    .line 156
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 157
    .local v0, bundle:Landroid/os/Bundle;
    const-string v6, "op"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 158
    .local v2, opCode:I
    const-string v6, "MakeSimDBService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "@@ onStartCommand!!! opCode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const-string v6, "MakeSimDBService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "@@ onStartCommand!!! flags = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    sparse-switch v2, :sswitch_data_0

    :cond_2
    :goto_3
    move v4, v5

    .line 202
    goto :goto_2

    .line 163
    :sswitch_0
    const-string v4, "isEnabled"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 164
    .local v1, isEnabled:Z
    if-eqz v1, :cond_2

    .line 166
    invoke-direct {p0, v2, p3, v5}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->sendMessage(III)V

    goto :goto_3

    .line 173
    .end local v1           #isEnabled:Z
    :sswitch_1
    if-ge p3, v4, :cond_3

    .line 174
    invoke-direct {p0, v2, p3, v9}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->sendMessage(III)V

    goto :goto_3

    .line 176
    :cond_3
    invoke-direct {p0, v2, p3, v10}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->sendMessage(III)V

    goto :goto_3

    .line 182
    :sswitch_2
    const-string v6, "sim_db_ready"

    invoke-direct {p0, v6, v9}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->getIntPreferenceValue(Ljava/lang/String;I)I

    move-result v3

    .line 183
    .local v3, settingValue:I
    if-ne v3, v10, :cond_4

    .line 186
    const-string v6, "sim_db_ready"

    invoke-direct {p0, v6, v9}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->setIntPreferenceValue(Ljava/lang/String;I)V

    .line 188
    :cond_4
    invoke-direct {p0, v2, p3, v4}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->sendMessage(III)V

    goto :goto_3

    .line 192
    .end local v3           #settingValue:I
    :sswitch_3
    const/4 v4, 0x4

    invoke-direct {p0, v2, p3, v4}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->sendMessage(III)V

    goto :goto_3

    .line 148
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #opCode:I
    :catch_0
    move-exception v6

    goto :goto_1

    .line 161
    nop

    :sswitch_data_0
    .sparse-switch
        0x1a0a -> :sswitch_3
        0x1e61 -> :sswitch_2
        0x22b8 -> :sswitch_0
        0x270f -> :sswitch_1
    .end sparse-switch
.end method

.method public run()V
    .locals 1

    .prologue
    .line 214
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 215
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 216
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mServiceLooper:Landroid/os/Looper;

    .line 217
    new-instance v0, Lcom/sec/android/app/contacts/sim/MakeSimDBService$ServiceHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/sim/MakeSimDBService$ServiceHandler;-><init>(Lcom/sec/android/app/contacts/sim/MakeSimDBService;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mServiceHandler:Lcom/sec/android/app/contacts/sim/MakeSimDBService$ServiceHandler;

    .line 218
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 219
    return-void
.end method
