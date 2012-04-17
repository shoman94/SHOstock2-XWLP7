.class Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;
.super Ljava/lang/Thread;
.source "ImportVCardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/vcard/ImportVCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VCardCacheThread"
.end annotation


# instance fields
.field private mCanceled:Z

.field private final mDisplayName:Ljava/lang/String;

.field private final mSource:[B

.field private final mSourceUris:[Landroid/net/Uri;

.field private mVCardParser:Lcom/android/vcard/VCardParser;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field final synthetic this$0:Lcom/android/contacts/vcard/ImportVCardActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/vcard/ImportVCardActivity;[Landroid/net/Uri;)V
    .locals 4
    .parameter "context"
    .parameter "sourceUris"

    .prologue
    const/4 v3, 0x0

    .line 240
    iput-object p1, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 241
    iput-object p2, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mSourceUris:[Landroid/net/Uri;

    .line 242
    iput-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mSource:[B

    .line 244
    const-string v1, "power"

    invoke-virtual {p1, v1}, Lcom/android/contacts/vcard/ImportVCardActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 246
    .local v0, powerManager:Landroid/os/PowerManager;
    const v1, 0x20000006

    const-string v2, "VCardImport"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 249
    iput-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mDisplayName:Ljava/lang/String;

    .line 250
    return-void
.end method

.method private constructImportRequest([BLandroid/net/Uri;Ljava/lang/String;)Lcom/android/contacts/vcard/ImportRequest;
    .locals 22
    .parameter "data"
    .parameter "localDataUri"
    .parameter "displayName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 457
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-virtual {v2}, Lcom/android/contacts/vcard/ImportVCardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    .line 458
    .local v20, resolver:Landroid/content/ContentResolver;
    const/4 v11, 0x0

    .line 459
    .local v11, counter:Lcom/android/vcard/VCardEntryCounter;
    const/4 v13, 0x0

    .line 460
    .local v13, detector:Lcom/android/vcard/VCardSourceDetector;
    const/4 v9, 0x1

    .line 462
    .local v9, vcardVersion:I
    const/16 v21, 0x0

    .line 464
    .local v21, shouldUseV30:Z
    if-eqz p1, :cond_1

    .line 465
    :try_start_0
    new-instance v18, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .local v18, is:Ljava/io/InputStream;
    move-object/from16 v19, v18

    .line 475
    .end local v18           #is:Ljava/io/InputStream;
    .local v19, is:Ljava/io/InputStream;
    :goto_0
    new-instance v2, Lcom/android/vcard/VCardParser_V21;

    invoke-direct {v2}, Lcom/android/vcard/VCardParser_V21;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;
    :try_end_0
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_0 .. :try_end_0} :catch_4

    .line 479
    :try_start_1
    new-instance v12, Lcom/android/vcard/VCardEntryCounter;

    invoke-direct {v12}, Lcom/android/vcard/VCardEntryCounter;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_1 .. :try_end_1} :catch_1

    .line 480
    .end local v11           #counter:Lcom/android/vcard/VCardEntryCounter;
    .local v12, counter:Lcom/android/vcard/VCardEntryCounter;
    :try_start_2
    new-instance v14, Lcom/android/vcard/VCardSourceDetector;

    invoke-direct {v14}, Lcom/android/vcard/VCardSourceDetector;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_2 .. :try_end_2} :catch_a

    .line 481
    .end local v13           #detector:Lcom/android/vcard/VCardSourceDetector;
    .local v14, detector:Lcom/android/vcard/VCardSourceDetector;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    invoke-virtual {v2, v12}, Lcom/android/vcard/VCardParser;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    .line 482
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    invoke-virtual {v2, v14}, Lcom/android/vcard/VCardParser;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    .line 483
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/android/vcard/VCardParser;->parse(Ljava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_3 .. :try_end_3} :catch_b

    .line 515
    if-eqz v19, :cond_5

    .line 517
    :try_start_4
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_4 .. :try_end_4} :catch_7

    move-object/from16 v18, v19

    .end local v19           #is:Ljava/io/InputStream;
    .restart local v18       #is:Ljava/io/InputStream;
    move-object v13, v14

    .end local v14           #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v13       #detector:Lcom/android/vcard/VCardSourceDetector;
    move-object v11, v12

    .line 523
    .end local v12           #counter:Lcom/android/vcard/VCardEntryCounter;
    .restart local v11       #counter:Lcom/android/vcard/VCardEntryCounter;
    :cond_0
    :goto_1
    if-eqz v21, :cond_4

    const/4 v9, 0x2

    .line 529
    .end local v18           #is:Ljava/io/InputStream;
    :goto_2
    new-instance v2, Lcom/android/contacts/vcard/ImportRequest;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    #getter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mAccount:Lcom/android/contacts/model/AccountWithDataSet;
    invoke-static {v3}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$500(Lcom/android/contacts/vcard/ImportVCardActivity;)Lcom/android/contacts/model/AccountWithDataSet;

    move-result-object v3

    invoke-virtual {v13}, Lcom/android/vcard/VCardSourceDetector;->getEstimatedType()I

    move-result v7

    invoke-virtual {v13}, Lcom/android/vcard/VCardSourceDetector;->getEstimatedCharset()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11}, Lcom/android/vcard/VCardEntryCounter;->getCount()I

    move-result v10

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v2 .. v10}, Lcom/android/contacts/vcard/ImportRequest;-><init>(Landroid/accounts/Account;[BLandroid/net/Uri;Ljava/lang/String;ILjava/lang/String;II)V

    return-object v2

    .line 467
    :cond_1
    :try_start_5
    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_5
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_5 .. :try_end_5} :catch_4

    move-result-object v18

    .restart local v18       #is:Ljava/io/InputStream;
    move-object/from16 v19, v18

    .end local v18           #is:Ljava/io/InputStream;
    .restart local v19       #is:Ljava/io/InputStream;
    goto :goto_0

    .line 518
    .end local v11           #counter:Lcom/android/vcard/VCardEntryCounter;
    .end local v13           #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v12       #counter:Lcom/android/vcard/VCardEntryCounter;
    .restart local v14       #detector:Lcom/android/vcard/VCardSourceDetector;
    :catch_0
    move-exception v2

    move-object/from16 v18, v19

    .end local v19           #is:Ljava/io/InputStream;
    .restart local v18       #is:Ljava/io/InputStream;
    move-object v13, v14

    .end local v14           #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v13       #detector:Lcom/android/vcard/VCardSourceDetector;
    move-object v11, v12

    .line 519
    .end local v12           #counter:Lcom/android/vcard/VCardEntryCounter;
    .restart local v11       #counter:Lcom/android/vcard/VCardEntryCounter;
    goto :goto_1

    .line 484
    .end local v18           #is:Ljava/io/InputStream;
    .restart local v19       #is:Ljava/io/InputStream;
    :catch_1
    move-exception v16

    move-object v14, v13

    .end local v13           #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v14       #detector:Lcom/android/vcard/VCardSourceDetector;
    move-object v12, v11

    .line 486
    .end local v11           #counter:Lcom/android/vcard/VCardEntryCounter;
    .restart local v12       #counter:Lcom/android/vcard/VCardEntryCounter;
    .local v16, e1:Lcom/android/vcard/exception/VCardVersionException;
    :goto_3
    :try_start_6
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 490
    :goto_4
    const/16 v21, 0x1

    .line 491
    if-eqz p1, :cond_2

    .line 492
    :try_start_7
    new-instance v18, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 502
    .end local v19           #is:Ljava/io/InputStream;
    .restart local v18       #is:Ljava/io/InputStream;
    :goto_5
    :try_start_8
    new-instance v2, Lcom/android/vcard/VCardParser_V30;

    invoke-direct {v2}, Lcom/android/vcard/VCardParser_V30;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 506
    :try_start_9
    new-instance v11, Lcom/android/vcard/VCardEntryCounter;

    invoke-direct {v11}, Lcom/android/vcard/VCardEntryCounter;-><init>()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_9 .. :try_end_9} :catch_3

    .line 507
    .end local v12           #counter:Lcom/android/vcard/VCardEntryCounter;
    .restart local v11       #counter:Lcom/android/vcard/VCardEntryCounter;
    :try_start_a
    new-instance v13, Lcom/android/vcard/VCardSourceDetector;

    invoke-direct {v13}, Lcom/android/vcard/VCardSourceDetector;-><init>()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_a .. :try_end_a} :catch_8

    .line 508
    .end local v14           #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v13       #detector:Lcom/android/vcard/VCardSourceDetector;
    :try_start_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    invoke-virtual {v2, v11}, Lcom/android/vcard/VCardParser;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    .line 509
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    invoke-virtual {v2, v13}, Lcom/android/vcard/VCardParser;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    .line 510
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/vcard/VCardParser;->parse(Ljava/io/InputStream;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_b .. :try_end_b} :catch_9

    .line 515
    if-eqz v18, :cond_0

    .line 517
    :try_start_c
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_c .. :try_end_c} :catch_4

    goto :goto_1

    .line 518
    :catch_2
    move-exception v2

    goto :goto_1

    .line 494
    .end local v11           #counter:Lcom/android/vcard/VCardEntryCounter;
    .end local v13           #detector:Lcom/android/vcard/VCardSourceDetector;
    .end local v18           #is:Ljava/io/InputStream;
    .restart local v12       #counter:Lcom/android/vcard/VCardEntryCounter;
    .restart local v14       #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v19       #is:Ljava/io/InputStream;
    :cond_2
    :try_start_d
    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    move-result-object v18

    .end local v19           #is:Ljava/io/InputStream;
    .restart local v18       #is:Ljava/io/InputStream;
    goto :goto_5

    .line 511
    :catch_3
    move-exception v17

    move-object v13, v14

    .end local v14           #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v13       #detector:Lcom/android/vcard/VCardSourceDetector;
    move-object v11, v12

    .line 512
    .end local v12           #counter:Lcom/android/vcard/VCardEntryCounter;
    .restart local v11       #counter:Lcom/android/vcard/VCardEntryCounter;
    .local v17, e2:Lcom/android/vcard/exception/VCardVersionException;
    :goto_6
    :try_start_e
    new-instance v2, Lcom/android/vcard/exception/VCardException;

    const-string v3, "vCard with unspported version."

    invoke-direct {v2, v3}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 515
    .end local v17           #e2:Lcom/android/vcard/exception/VCardVersionException;
    :catchall_0
    move-exception v2

    .end local v16           #e1:Lcom/android/vcard/exception/VCardVersionException;
    :goto_7
    if-eqz v18, :cond_3

    .line 517
    :try_start_f
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_6
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_f .. :try_end_f} :catch_4

    .line 519
    :cond_3
    :goto_8
    :try_start_10
    throw v2
    :try_end_10
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_10 .. :try_end_10} :catch_4

    .line 524
    .end local v18           #is:Ljava/io/InputStream;
    :catch_4
    move-exception v15

    .line 525
    .local v15, e:Lcom/android/vcard/exception/VCardNestedException;
    :goto_9
    const-string v2, "VCardImport"

    const-string v3, "Nested Exception is found (it may be false-positive)."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 523
    .end local v15           #e:Lcom/android/vcard/exception/VCardNestedException;
    .restart local v18       #is:Ljava/io/InputStream;
    :cond_4
    const/4 v9, 0x1

    goto/16 :goto_2

    .line 487
    .end local v11           #counter:Lcom/android/vcard/VCardEntryCounter;
    .end local v13           #detector:Lcom/android/vcard/VCardSourceDetector;
    .end local v18           #is:Ljava/io/InputStream;
    .restart local v12       #counter:Lcom/android/vcard/VCardEntryCounter;
    .restart local v14       #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v16       #e1:Lcom/android/vcard/exception/VCardVersionException;
    .restart local v19       #is:Ljava/io/InputStream;
    :catch_5
    move-exception v2

    goto :goto_4

    .line 518
    .end local v12           #counter:Lcom/android/vcard/VCardEntryCounter;
    .end local v14           #detector:Lcom/android/vcard/VCardSourceDetector;
    .end local v16           #e1:Lcom/android/vcard/exception/VCardVersionException;
    .end local v19           #is:Ljava/io/InputStream;
    .restart local v11       #counter:Lcom/android/vcard/VCardEntryCounter;
    .restart local v13       #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v18       #is:Ljava/io/InputStream;
    :catch_6
    move-exception v3

    goto :goto_8

    .line 524
    .end local v11           #counter:Lcom/android/vcard/VCardEntryCounter;
    .end local v13           #detector:Lcom/android/vcard/VCardSourceDetector;
    .end local v18           #is:Ljava/io/InputStream;
    .restart local v12       #counter:Lcom/android/vcard/VCardEntryCounter;
    .restart local v14       #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v19       #is:Ljava/io/InputStream;
    :catch_7
    move-exception v15

    move-object v13, v14

    .end local v14           #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v13       #detector:Lcom/android/vcard/VCardSourceDetector;
    move-object v11, v12

    .end local v12           #counter:Lcom/android/vcard/VCardEntryCounter;
    .restart local v11       #counter:Lcom/android/vcard/VCardEntryCounter;
    goto :goto_9

    .line 515
    :catchall_1
    move-exception v2

    move-object/from16 v18, v19

    .end local v19           #is:Ljava/io/InputStream;
    .restart local v18       #is:Ljava/io/InputStream;
    goto :goto_7

    .end local v11           #counter:Lcom/android/vcard/VCardEntryCounter;
    .end local v18           #is:Ljava/io/InputStream;
    .restart local v12       #counter:Lcom/android/vcard/VCardEntryCounter;
    .restart local v19       #is:Ljava/io/InputStream;
    :catchall_2
    move-exception v2

    move-object/from16 v18, v19

    .end local v19           #is:Ljava/io/InputStream;
    .restart local v18       #is:Ljava/io/InputStream;
    move-object v11, v12

    .end local v12           #counter:Lcom/android/vcard/VCardEntryCounter;
    .restart local v11       #counter:Lcom/android/vcard/VCardEntryCounter;
    goto :goto_7

    .end local v11           #counter:Lcom/android/vcard/VCardEntryCounter;
    .end local v13           #detector:Lcom/android/vcard/VCardSourceDetector;
    .end local v18           #is:Ljava/io/InputStream;
    .restart local v12       #counter:Lcom/android/vcard/VCardEntryCounter;
    .restart local v14       #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v19       #is:Ljava/io/InputStream;
    :catchall_3
    move-exception v2

    move-object/from16 v18, v19

    .end local v19           #is:Ljava/io/InputStream;
    .restart local v18       #is:Ljava/io/InputStream;
    move-object v13, v14

    .end local v14           #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v13       #detector:Lcom/android/vcard/VCardSourceDetector;
    move-object v11, v12

    .end local v12           #counter:Lcom/android/vcard/VCardEntryCounter;
    .restart local v11       #counter:Lcom/android/vcard/VCardEntryCounter;
    goto :goto_7

    .end local v11           #counter:Lcom/android/vcard/VCardEntryCounter;
    .end local v13           #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v12       #counter:Lcom/android/vcard/VCardEntryCounter;
    .restart local v14       #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v16       #e1:Lcom/android/vcard/exception/VCardVersionException;
    :catchall_4
    move-exception v2

    move-object v13, v14

    .end local v14           #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v13       #detector:Lcom/android/vcard/VCardSourceDetector;
    move-object v11, v12

    .end local v12           #counter:Lcom/android/vcard/VCardEntryCounter;
    .restart local v11       #counter:Lcom/android/vcard/VCardEntryCounter;
    goto :goto_7

    .end local v13           #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v14       #detector:Lcom/android/vcard/VCardSourceDetector;
    :catchall_5
    move-exception v2

    move-object v13, v14

    .end local v14           #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v13       #detector:Lcom/android/vcard/VCardSourceDetector;
    goto :goto_7

    .line 511
    .end local v13           #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v14       #detector:Lcom/android/vcard/VCardSourceDetector;
    :catch_8
    move-exception v17

    move-object v13, v14

    .end local v14           #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v13       #detector:Lcom/android/vcard/VCardSourceDetector;
    goto :goto_6

    :catch_9
    move-exception v17

    goto :goto_6

    .line 484
    .end local v11           #counter:Lcom/android/vcard/VCardEntryCounter;
    .end local v16           #e1:Lcom/android/vcard/exception/VCardVersionException;
    .end local v18           #is:Ljava/io/InputStream;
    .restart local v12       #counter:Lcom/android/vcard/VCardEntryCounter;
    .restart local v19       #is:Ljava/io/InputStream;
    :catch_a
    move-exception v16

    move-object v14, v13

    .end local v13           #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v14       #detector:Lcom/android/vcard/VCardSourceDetector;
    goto/16 :goto_3

    :catch_b
    move-exception v16

    goto/16 :goto_3

    :cond_5
    move-object/from16 v18, v19

    .end local v19           #is:Ljava/io/InputStream;
    .restart local v18       #is:Ljava/io/InputStream;
    move-object v13, v14

    .end local v14           #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v13       #detector:Lcom/android/vcard/VCardSourceDetector;
    move-object v11, v12

    .end local v12           #counter:Lcom/android/vcard/VCardEntryCounter;
    .restart local v11       #counter:Lcom/android/vcard/VCardEntryCounter;
    goto/16 :goto_1
.end method

.method private copyTo(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 11
    .parameter "sourceUri"
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 400
    const-string v7, "VCardImport"

    const-string v8, "Copy a Uri to app local storage (%s -> %s)"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object p1, v9, v10

    const/4 v10, 0x1

    aput-object p2, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-object v1, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    .line 403
    .local v1, context:Landroid/content/Context;
    invoke-virtual {v1}, Lcom/android/contacts/vcard/ImportVCardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 404
    .local v6, resolver:Landroid/content/ContentResolver;
    const/4 v4, 0x0

    .line 405
    .local v4, inputChannel:Ljava/nio/channels/ReadableByteChannel;
    const/4 v5, 0x0

    .line 406
    .local v5, outputChannel:Ljava/nio/channels/WritableByteChannel;
    const/4 v2, 0x0

    .line 408
    .local v2, destUri:Landroid/net/Uri;
    :try_start_0
    invoke-virtual {v6, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v7

    invoke-static {v7}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v4

    .line 409
    invoke-virtual {v1, p2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 410
    const/4 v7, 0x0

    invoke-virtual {v1, p2, v7}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    .line 411
    const/16 v7, 0x2000

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 412
    .local v0, buffer:Ljava/nio/ByteBuffer;
    :goto_0
    invoke-interface {v4, v0}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_5

    .line 413
    iget-boolean v7, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mCanceled:Z

    if-eqz v7, :cond_2

    .line 414
    const-string v7, "VCardImport"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Canceled during caching "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    const/4 v2, 0x0

    .line 426
    .end local v2           #destUri:Landroid/net/Uri;
    if-eqz v4, :cond_0

    .line 428
    :try_start_1
    invoke-interface {v4}, Ljava/nio/channels/ReadableByteChannel;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 433
    :cond_0
    :goto_1
    if-eqz v5, :cond_1

    .line 435
    :try_start_2
    invoke-interface {v5}, Ljava/nio/channels/WritableByteChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 441
    :cond_1
    :goto_2
    return-object v2

    .line 429
    :catch_0
    move-exception v3

    .line 430
    .local v3, e:Ljava/io/IOException;
    const-string v7, "VCardImport"

    const-string v8, "Failed to close inputChannel."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 436
    .end local v3           #e:Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 437
    .restart local v3       #e:Ljava/io/IOException;
    const-string v7, "VCardImport"

    const-string v8, "Failed to close outputChannel"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 417
    .end local v3           #e:Ljava/io/IOException;
    .restart local v2       #destUri:Landroid/net/Uri;
    :cond_2
    :try_start_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 418
    invoke-interface {v5, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 419
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 426
    .end local v0           #buffer:Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception v7

    if-eqz v4, :cond_3

    .line 428
    :try_start_4
    invoke-interface {v4}, Ljava/nio/channels/ReadableByteChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 433
    :cond_3
    :goto_3
    if-eqz v5, :cond_4

    .line 435
    :try_start_5
    invoke-interface {v5}, Ljava/nio/channels/WritableByteChannel;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 438
    :cond_4
    :goto_4
    throw v7

    .line 421
    .restart local v0       #buffer:Ljava/nio/ByteBuffer;
    :cond_5
    :try_start_6
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 422
    :goto_5
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 423
    invoke-interface {v5, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_5

    .line 426
    :cond_6
    if-eqz v4, :cond_7

    .line 428
    :try_start_7
    invoke-interface {v4}, Ljava/nio/channels/ReadableByteChannel;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 433
    :cond_7
    :goto_6
    if-eqz v5, :cond_1

    .line 435
    :try_start_8
    invoke-interface {v5}, Ljava/nio/channels/WritableByteChannel;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_2

    .line 436
    :catch_2
    move-exception v3

    .line 437
    .restart local v3       #e:Ljava/io/IOException;
    const-string v7, "VCardImport"

    const-string v8, "Failed to close outputChannel"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 429
    .end local v3           #e:Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 430
    .restart local v3       #e:Ljava/io/IOException;
    const-string v7, "VCardImport"

    const-string v8, "Failed to close inputChannel."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 429
    .end local v0           #buffer:Ljava/nio/ByteBuffer;
    .end local v3           #e:Ljava/io/IOException;
    :catch_4
    move-exception v3

    .line 430
    .restart local v3       #e:Ljava/io/IOException;
    const-string v8, "VCardImport"

    const-string v9, "Failed to close inputChannel."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 436
    .end local v3           #e:Ljava/io/IOException;
    :catch_5
    move-exception v3

    .line 437
    .restart local v3       #e:Ljava/io/IOException;
    const-string v8, "VCardImport"

    const-string v9, "Failed to close outputChannel"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 541
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mCanceled:Z

    .line 542
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    invoke-virtual {v0}, Lcom/android/vcard/VCardParser;->cancel()V

    .line 545
    :cond_0
    return-void
.end method

.method public finalize()V
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    const-string v0, "VCardImport"

    const-string v1, "WakeLock is being held."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 258
    :cond_0
    return-void
.end method

.method public getSourceUris()[Landroid/net/Uri;
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mSourceUris:[Landroid/net/Uri;

    return-object v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 549
    const-string v0, "VCardImport"

    const-string v1, "Cancel request has come. Abort caching vCard."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    invoke-virtual {p0}, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->cancel()V

    .line 551
    return-void
.end method

.method public run()V
    .locals 23

    .prologue
    .line 262
    const-string v4, "VCardImport"

    const-string v5, "vCard cache thread starts running."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    #getter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v4}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/vcard/ImportVCardActivity;)Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v4

    if-nez v4, :cond_0

    .line 264
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "vCard cache thread must be launched after a service connection is established"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 268
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 270
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mCanceled:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 271
    const-string v4, "VCardImport"

    const-string v5, "vCard cache operation is canceled."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 383
    const-string v4, "VCardImport"

    const-string v5, "Finished caching vCard."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 386
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    #getter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v5}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/vcard/ImportVCardActivity;)Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/contacts/vcard/ImportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 390
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    #getter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$400(Lcom/android/contacts/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 391
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    const/4 v5, 0x0

    #setter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v4, v5}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$402(Lcom/android/contacts/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 392
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-virtual {v4}, Lcom/android/contacts/vcard/ImportVCardActivity;->finish()V

    .line 394
    :goto_1
    return-void

    .line 387
    :catch_0
    move-exception v13

    .line 388
    .local v13, e:Ljava/lang/IllegalArgumentException;
    const-string v4, "VCardImport"

    const-string v5, "IllegalArgumentException during unbindService"

    invoke-static {v4, v5, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 275
    .end local v13           #e:Ljava/lang/IllegalArgumentException;
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    .line 284
    .local v10, context:Landroid/content/Context;
    const/4 v9, 0x0

    .line 285
    .local v9, cache_index:I
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 286
    .local v21, requests:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/vcard/ImportRequest;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mSource:[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    if-eqz v4, :cond_3

    .line 288
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mSource:[B

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mDisplayName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->constructImportRequest([BLandroid/net/Uri;Ljava/lang/String;)Lcom/android/contacts/vcard/ImportRequest;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 368
    :cond_2
    :goto_2
    :try_start_4
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_e

    .line 369
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    #getter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v4}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/vcard/ImportVCardActivity;)Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;->sendImportRequest(Ljava/util/List;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 383
    :goto_3
    const-string v4, "VCardImport"

    const-string v5, "Finished caching vCard."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 386
    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    #getter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v5}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/vcard/ImportVCardActivity;)Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/contacts/vcard/ImportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_a

    .line 390
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    #getter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$400(Lcom/android/contacts/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 391
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    const/4 v5, 0x0

    #setter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v4, v5}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$402(Lcom/android/contacts/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 392
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-virtual {v4}, Lcom/android/contacts/vcard/ImportVCardActivity;->finish()V

    goto :goto_1

    .line 289
    :catch_1
    move-exception v13

    .line 290
    .local v13, e:Lcom/android/vcard/exception/VCardException;
    :try_start_6
    const-string v4, "VCardImport"

    const-string v5, "Maybe the file is in wrong format"

    invoke-static {v4, v5, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 291
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    const v5, 0x7f0a00c7

    invoke-virtual {v4, v5}, Lcom/android/contacts/vcard/ImportVCardActivity;->showFailureNotification(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 383
    const-string v4, "VCardImport"

    const-string v5, "Finished caching vCard."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 386
    :try_start_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    #getter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v5}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/vcard/ImportVCardActivity;)Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/contacts/vcard/ImportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_2

    .line 390
    .end local v13           #e:Lcom/android/vcard/exception/VCardException;
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    #getter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$400(Lcom/android/contacts/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 391
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    const/4 v5, 0x0

    #setter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v4, v5}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$402(Lcom/android/contacts/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 392
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-virtual {v4}, Lcom/android/contacts/vcard/ImportVCardActivity;->finish()V

    goto/16 :goto_1

    .line 387
    .restart local v13       #e:Lcom/android/vcard/exception/VCardException;
    :catch_2
    move-exception v13

    .line 388
    .local v13, e:Ljava/lang/IllegalArgumentException;
    const-string v4, "VCardImport"

    const-string v5, "IllegalArgumentException during unbindService"

    invoke-static {v4, v5, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 295
    .end local v13           #e:Ljava/lang/IllegalArgumentException;
    :cond_3
    :try_start_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-virtual {v4}, Lcom/android/contacts/vcard/ImportVCardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 297
    .local v2, resolver:Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mSourceUris:[Landroid/net/Uri;

    .local v8, arr$:[Landroid/net/Uri;
    array-length v0, v8

    move/from16 v18, v0

    .local v18, len$:I
    const/16 v16, 0x0

    .local v16, i$:I
    :goto_6
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    aget-object v3, v8, v16

    .line 298
    .local v3, sourceUri:Landroid/net/Uri;
    const/4 v15, 0x0

    .line 301
    .local v15, filename:Ljava/lang/String;
    :goto_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "import_tmp_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".vcf"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 302
    invoke-virtual {v10, v15}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v14

    .line 303
    .local v14, file:Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_4

    .line 312
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v15}, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->copyTo(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    .line 313
    .local v19, localDataUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mCanceled:Z

    if-eqz v4, :cond_6

    .line 314
    const-string v4, "VCardImport"

    const-string v5, "vCard cache operation is canceled."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_2

    .line 373
    .end local v2           #resolver:Landroid/content/ContentResolver;
    .end local v3           #sourceUri:Landroid/net/Uri;
    .end local v8           #arr$:[Landroid/net/Uri;
    .end local v9           #cache_index:I
    .end local v10           #context:Landroid/content/Context;
    .end local v14           #file:Ljava/io/File;
    .end local v15           #filename:Ljava/lang/String;
    .end local v16           #i$:I
    .end local v18           #len$:I
    .end local v19           #localDataUri:Landroid/net/Uri;
    .end local v21           #requests:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/vcard/ImportRequest;>;"
    :catch_3
    move-exception v13

    .line 374
    .local v13, e:Ljava/lang/OutOfMemoryError;
    :try_start_9
    const-string v4, "VCardImport"

    const-string v5, "OutOfMemoryError occured during caching vCard"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 376
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    new-instance v5, Lcom/android/contacts/vcard/ImportVCardActivity$DialogDisplayer;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    const v22, 0x7f0a00c5

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Lcom/android/contacts/vcard/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/android/contacts/vcard/ImportVCardActivity$DialogDisplayer;-><init>(Lcom/android/contacts/vcard/ImportVCardActivity;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/android/contacts/vcard/ImportVCardActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 383
    const-string v4, "VCardImport"

    const-string v5, "Finished caching vCard."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 386
    :try_start_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    #getter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v5}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/vcard/ImportVCardActivity;)Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/contacts/vcard/ImportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_b

    .line 390
    .end local v13           #e:Ljava/lang/OutOfMemoryError;
    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    #getter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$400(Lcom/android/contacts/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 391
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    const/4 v5, 0x0

    #setter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v4, v5}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$402(Lcom/android/contacts/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 392
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-virtual {v4}, Lcom/android/contacts/vcard/ImportVCardActivity;->finish()V

    goto/16 :goto_1

    .line 306
    .restart local v2       #resolver:Landroid/content/ContentResolver;
    .restart local v3       #sourceUri:Landroid/net/Uri;
    .restart local v8       #arr$:[Landroid/net/Uri;
    .restart local v9       #cache_index:I
    .restart local v10       #context:Landroid/content/Context;
    .restart local v14       #file:Ljava/io/File;
    .restart local v15       #filename:Ljava/lang/String;
    .restart local v16       #i$:I
    .restart local v18       #len$:I
    .restart local v21       #requests:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/vcard/ImportRequest;>;"
    :cond_4
    const v4, 0x7fffffff

    if-ne v9, v4, :cond_5

    .line 307
    :try_start_b
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Exceeded cache limit"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    .line 378
    .end local v2           #resolver:Landroid/content/ContentResolver;
    .end local v3           #sourceUri:Landroid/net/Uri;
    .end local v8           #arr$:[Landroid/net/Uri;
    .end local v9           #cache_index:I
    .end local v10           #context:Landroid/content/Context;
    .end local v14           #file:Ljava/io/File;
    .end local v15           #filename:Ljava/lang/String;
    .end local v16           #i$:I
    .end local v18           #len$:I
    .end local v21           #requests:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/vcard/ImportRequest;>;"
    :catch_4
    move-exception v13

    .line 379
    .local v13, e:Ljava/io/IOException;
    :try_start_c
    const-string v4, "VCardImport"

    const-string v5, "IOException during caching vCard"

    invoke-static {v4, v5, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 380
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    new-instance v5, Lcom/android/contacts/vcard/ImportVCardActivity$DialogDisplayer;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    const v22, 0x7f0a00c4

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Lcom/android/contacts/vcard/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/android/contacts/vcard/ImportVCardActivity$DialogDisplayer;-><init>(Lcom/android/contacts/vcard/ImportVCardActivity;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/android/contacts/vcard/ImportVCardActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 383
    const-string v4, "VCardImport"

    const-string v5, "Finished caching vCard."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 386
    :try_start_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    #getter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v5}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/vcard/ImportVCardActivity;)Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/contacts/vcard/ImportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_c

    .line 390
    .end local v13           #e:Ljava/io/IOException;
    :goto_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    #getter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$400(Lcom/android/contacts/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 391
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    const/4 v5, 0x0

    #setter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v4, v5}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$402(Lcom/android/contacts/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 392
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-virtual {v4}, Lcom/android/contacts/vcard/ImportVCardActivity;->finish()V

    goto/16 :goto_1

    .line 309
    .restart local v2       #resolver:Landroid/content/ContentResolver;
    .restart local v3       #sourceUri:Landroid/net/Uri;
    .restart local v8       #arr$:[Landroid/net/Uri;
    .restart local v9       #cache_index:I
    .restart local v10       #context:Landroid/content/Context;
    .restart local v14       #file:Ljava/io/File;
    .restart local v15       #filename:Ljava/lang/String;
    .restart local v16       #i$:I
    .restart local v18       #len$:I
    .restart local v21       #requests:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/vcard/ImportRequest;>;"
    :cond_5
    add-int/lit8 v9, v9, 0x1

    .line 311
    goto/16 :goto_7

    .line 317
    .restart local v19       #localDataUri:Landroid/net/Uri;
    :cond_6
    if-nez v19, :cond_7

    .line 318
    :try_start_e
    const-string v4, "VCardImport"

    const-string v5, "destUri is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4

    goto/16 :goto_2

    .line 383
    .end local v2           #resolver:Landroid/content/ContentResolver;
    .end local v3           #sourceUri:Landroid/net/Uri;
    .end local v8           #arr$:[Landroid/net/Uri;
    .end local v9           #cache_index:I
    .end local v10           #context:Landroid/content/Context;
    .end local v14           #file:Ljava/io/File;
    .end local v15           #filename:Ljava/lang/String;
    .end local v16           #i$:I
    .end local v18           #len$:I
    .end local v19           #localDataUri:Landroid/net/Uri;
    .end local v21           #requests:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/vcard/ImportRequest;>;"
    :catchall_0
    move-exception v4

    const-string v5, "VCardImport"

    const-string v6, "Finished caching vCard."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 386
    :try_start_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    #getter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v6}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/vcard/ImportVCardActivity;)Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/contacts/vcard/ImportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_f} :catch_d

    .line 390
    :goto_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    #getter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$400(Lcom/android/contacts/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    .line 391
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    const/4 v6, 0x0

    #setter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v5, v6}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$402(Lcom/android/contacts/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 392
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-virtual {v5}, Lcom/android/contacts/vcard/ImportVCardActivity;->finish()V

    throw v4

    .line 322
    .restart local v2       #resolver:Landroid/content/ContentResolver;
    .restart local v3       #sourceUri:Landroid/net/Uri;
    .restart local v8       #arr$:[Landroid/net/Uri;
    .restart local v9       #cache_index:I
    .restart local v10       #context:Landroid/content/Context;
    .restart local v14       #file:Ljava/io/File;
    .restart local v15       #filename:Ljava/lang/String;
    .restart local v16       #i$:I
    .restart local v18       #len$:I
    .restart local v19       #localDataUri:Landroid/net/Uri;
    .restart local v21       #requests:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/vcard/ImportRequest;>;"
    :cond_7
    const/4 v12, 0x0

    .line 323
    .local v12, displayName:Ljava/lang/String;
    const/4 v11, 0x0

    .line 327
    .local v11, cursor:Landroid/database/Cursor;
    const/4 v4, 0x1

    :try_start_10
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_display_name"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 330
    if-eqz v11, :cond_9

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_9

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 331
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_8

    .line 332
    const-string v4, "VCardImport"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected multiple rows: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_8
    const-string v4, "_display_name"

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 336
    .local v17, index:I
    if-ltz v17, :cond_9

    .line 337
    move/from16 v0, v17

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    move-result-object v12

    .line 341
    .end local v17           #index:I
    :cond_9
    if-eqz v11, :cond_a

    .line 342
    :try_start_11
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 345
    :cond_a
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 346
    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_11 .. :try_end_11} :catch_3
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_4

    move-result-object v12

    .line 351
    :cond_b
    const/4 v4, 0x0

    :try_start_12
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v4, v1, v12}, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->constructImportRequest([BLandroid/net/Uri;Ljava/lang/String;)Lcom/android/contacts/vcard/ImportRequest;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_12 .. :try_end_12} :catch_5
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_12 .. :try_end_12} :catch_3

    move-result-object v20

    .line 361
    .local v20, request:Lcom/android/contacts/vcard/ImportRequest;
    :try_start_13
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mCanceled:Z

    if-eqz v4, :cond_d

    .line 362
    const-string v4, "VCardImport"

    const-string v5, "vCard cache operation is canceled."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_13 .. :try_end_13} :catch_3
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_4

    .line 383
    const-string v4, "VCardImport"

    const-string v5, "Finished caching vCard."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 386
    :try_start_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    #getter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v5}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/vcard/ImportVCardActivity;)Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/contacts/vcard/ImportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14 .. :try_end_14} :catch_9

    .line 390
    :goto_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    #getter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$400(Lcom/android/contacts/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 391
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    const/4 v5, 0x0

    #setter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v4, v5}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$402(Lcom/android/contacts/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 392
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-virtual {v4}, Lcom/android/contacts/vcard/ImportVCardActivity;->finish()V

    goto/16 :goto_1

    .line 341
    .end local v20           #request:Lcom/android/contacts/vcard/ImportRequest;
    :catchall_1
    move-exception v4

    if-eqz v11, :cond_c

    .line 342
    :try_start_15
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v4

    .line 352
    :catch_5
    move-exception v13

    .line 353
    .local v13, e:Lcom/android/vcard/exception/VCardException;
    const-string v4, "VCardImport"

    const-string v5, "Maybe the file is in wrong format"

    invoke-static {v4, v5, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 354
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    const v5, 0x7f0a00c7

    invoke-virtual {v4, v5}, Lcom/android/contacts/vcard/ImportVCardActivity;->showFailureNotification(I)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_15 .. :try_end_15} :catch_3
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_4

    .line 383
    const-string v4, "VCardImport"

    const-string v5, "Finished caching vCard."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 386
    :try_start_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    #getter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v5}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/vcard/ImportVCardActivity;)Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/contacts/vcard/ImportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_16} :catch_6

    .line 390
    .end local v13           #e:Lcom/android/vcard/exception/VCardException;
    :goto_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    #getter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$400(Lcom/android/contacts/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 391
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    const/4 v5, 0x0

    #setter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v4, v5}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$402(Lcom/android/contacts/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 392
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-virtual {v4}, Lcom/android/contacts/vcard/ImportVCardActivity;->finish()V

    goto/16 :goto_1

    .line 387
    .restart local v13       #e:Lcom/android/vcard/exception/VCardException;
    :catch_6
    move-exception v13

    .line 388
    .local v13, e:Ljava/lang/IllegalArgumentException;
    const-string v4, "VCardImport"

    const-string v5, "IllegalArgumentException during unbindService"

    invoke-static {v4, v5, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .line 356
    .end local v13           #e:Ljava/lang/IllegalArgumentException;
    :catch_7
    move-exception v13

    .line 357
    .local v13, e:Ljava/io/IOException;
    :try_start_17
    const-string v4, "VCardImport"

    const-string v5, "Unexpected IOException"

    invoke-static {v4, v5, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 358
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    const v5, 0x7f0a00c4

    invoke-virtual {v4, v5}, Lcom/android/contacts/vcard/ImportVCardActivity;->showFailureNotification(I)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_17 .. :try_end_17} :catch_3
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_4

    .line 383
    const-string v4, "VCardImport"

    const-string v5, "Finished caching vCard."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 386
    :try_start_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    #getter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v5}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/vcard/ImportVCardActivity;)Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/contacts/vcard/ImportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_18
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18 .. :try_end_18} :catch_8

    .line 390
    .end local v13           #e:Ljava/io/IOException;
    :goto_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    #getter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$400(Lcom/android/contacts/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 391
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    const/4 v5, 0x0

    #setter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v4, v5}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$402(Lcom/android/contacts/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 392
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-virtual {v4}, Lcom/android/contacts/vcard/ImportVCardActivity;->finish()V

    goto/16 :goto_1

    .line 387
    .restart local v13       #e:Ljava/io/IOException;
    :catch_8
    move-exception v13

    .line 388
    .local v13, e:Ljava/lang/IllegalArgumentException;
    const-string v4, "VCardImport"

    const-string v5, "IllegalArgumentException during unbindService"

    invoke-static {v4, v5, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 387
    .end local v13           #e:Ljava/lang/IllegalArgumentException;
    .restart local v20       #request:Lcom/android/contacts/vcard/ImportRequest;
    :catch_9
    move-exception v13

    .line 388
    .restart local v13       #e:Ljava/lang/IllegalArgumentException;
    const-string v4, "VCardImport"

    const-string v5, "IllegalArgumentException during unbindService"

    invoke-static {v4, v5, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b

    .line 365
    .end local v13           #e:Ljava/lang/IllegalArgumentException;
    :cond_d
    :try_start_19
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_6

    .line 371
    .end local v2           #resolver:Landroid/content/ContentResolver;
    .end local v3           #sourceUri:Landroid/net/Uri;
    .end local v8           #arr$:[Landroid/net/Uri;
    .end local v11           #cursor:Landroid/database/Cursor;
    .end local v12           #displayName:Ljava/lang/String;
    .end local v14           #file:Ljava/io/File;
    .end local v15           #filename:Ljava/lang/String;
    .end local v16           #i$:I
    .end local v18           #len$:I
    .end local v19           #localDataUri:Landroid/net/Uri;
    .end local v20           #request:Lcom/android/contacts/vcard/ImportRequest;
    :cond_e
    const-string v4, "VCardImport"

    const-string v5, "Empty import requests. Ignore it."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_19 .. :try_end_19} :catch_3
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_4

    goto/16 :goto_3

    .line 387
    :catch_a
    move-exception v13

    .line 388
    .restart local v13       #e:Ljava/lang/IllegalArgumentException;
    const-string v4, "VCardImport"

    const-string v5, "IllegalArgumentException during unbindService"

    invoke-static {v4, v5, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 387
    .end local v9           #cache_index:I
    .end local v10           #context:Landroid/content/Context;
    .end local v21           #requests:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/vcard/ImportRequest;>;"
    .local v13, e:Ljava/lang/OutOfMemoryError;
    :catch_b
    move-exception v13

    .line 388
    .local v13, e:Ljava/lang/IllegalArgumentException;
    const-string v4, "VCardImport"

    const-string v5, "IllegalArgumentException during unbindService"

    invoke-static {v4, v5, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8

    .line 387
    .local v13, e:Ljava/io/IOException;
    :catch_c
    move-exception v13

    .line 388
    .local v13, e:Ljava/lang/IllegalArgumentException;
    const-string v4, "VCardImport"

    const-string v5, "IllegalArgumentException during unbindService"

    invoke-static {v4, v5, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9

    .line 387
    .end local v13           #e:Ljava/lang/IllegalArgumentException;
    :catch_d
    move-exception v13

    .line 388
    .restart local v13       #e:Ljava/lang/IllegalArgumentException;
    const-string v5, "VCardImport"

    const-string v6, "IllegalArgumentException during unbindService"

    invoke-static {v5, v6, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_a
.end method
