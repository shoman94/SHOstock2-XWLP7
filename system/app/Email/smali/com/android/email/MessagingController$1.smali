.class Lcom/android/email/MessagingController$1;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/MessagingController;->listFolders(JLcom/android/email/MessagingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/MessagingController;

.field final synthetic val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

.field final synthetic val$accountId:J


# direct methods
.method constructor <init>(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;J)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 395
    iput-object p1, p0, Lcom/android/email/MessagingController$1;->this$0:Lcom/android/email/MessagingController;

    iput-object p2, p0, Lcom/android/email/MessagingController$1;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    iput-wide p3, p0, Lcom/android/email/MessagingController$1;->val$accountId:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 40

    .prologue
    .line 397
    const/16 v18, 0x0

    .line 403
    .local v18, localFolderCursor:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$1;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$1;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$1;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v35

    .line 405
    .local v35, store:Lcom/android/email/mail/Store;
    invoke-virtual/range {v35 .. v35}, Lcom/android/email/mail/Store;->getAllFolders()[Lcom/android/emailcommon/mail/Folder;

    move-result-object v33

    .line 407
    .local v33, remoteFolders:[Lcom/android/emailcommon/mail/Folder;
    new-instance v31, Ljava/util/HashSet;

    invoke-direct/range {v31 .. v31}, Ljava/util/HashSet;-><init>()V

    .line 408
    .local v31, remoteFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v14, 0x0

    .local v14, i:I
    move-object/from16 v0, v33

    array-length v9, v0

    .local v9, count:I
    :goto_0
    if-ge v14, v9, :cond_0

    .line 409
    aget-object v2, v33, v14

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 408
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 412
    :cond_0
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    .line 413
    .local v21, localFolders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/MessagingController$LocalMailboxInfo;>;"
    new-instance v20, Ljava/util/HashSet;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashSet;-><init>()V

    .line 414
    .local v20, localFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$1;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/email/MessagingController$LocalMailboxInfo;->PROJECTION:[Ljava/lang/String;

    const-string v5, "accountKey=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController$1;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v38, v0

    invoke-static/range {v38 .. v39}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v38

    aput-object v38, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 419
    :goto_1
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 420
    new-instance v16, Lcom/android/email/MessagingController$LocalMailboxInfo;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/email/MessagingController$LocalMailboxInfo;-><init>(Landroid/database/Cursor;)V

    .line 421
    .local v16, info:Lcom/android/email/MessagingController$LocalMailboxInfo;
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/email/MessagingController$LocalMailboxInfo;->mDisplayName:Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/email/MessagingController$LocalMailboxInfo;->mDisplayName:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 547
    .end local v9           #count:I
    .end local v14           #i:I
    .end local v16           #info:Lcom/android/email/MessagingController$LocalMailboxInfo;
    .end local v20           #localFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v21           #localFolders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/MessagingController$LocalMailboxInfo;>;"
    .end local v31           #remoteFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v33           #remoteFolders:[Lcom/android/emailcommon/mail/Folder;
    .end local v35           #store:Lcom/android/email/mail/Store;
    :catch_0
    move-exception v13

    .line 549
    .local v13, e:Ljava/lang/Exception;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$1;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/MessagingController$1;->val$accountId:J

    const-string v5, ""

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/email/GroupMessagingListener;->listFoldersFailed(JLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 551
    if-eqz v18, :cond_1

    .line 552
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 555
    .end local v13           #e:Ljava/lang/Exception;
    :cond_1
    :goto_2
    return-void

    .line 427
    .restart local v9       #count:I
    .restart local v14       #i:I
    .restart local v20       #localFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v21       #localFolders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/MessagingController$LocalMailboxInfo;>;"
    .restart local v31       #remoteFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v33       #remoteFolders:[Lcom/android/emailcommon/mail/Folder;
    .restart local v35       #store:Lcom/android/email/mail/Store;
    :cond_2
    :try_start_2
    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 434
    new-instance v24, Ljava/util/HashSet;

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 435
    .local v24, localsToDrop:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 436
    invoke-virtual/range {v24 .. v24}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :goto_3
    :pswitch_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 437
    .local v23, localNameToDrop:Ljava/lang/String;
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/email/MessagingController$LocalMailboxInfo;

    .line 441
    .local v22, localInfo:Lcom/android/email/MessagingController$LocalMailboxInfo;
    move-object/from16 v0, v22

    iget v2, v0, Lcom/android/email/MessagingController$LocalMailboxInfo;->mType:I

    packed-switch v2, :pswitch_data_0

    .line 451
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$1;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/MessagingController$1;->val$accountId:J

    move-object/from16 v0, v22

    iget-wide v5, v0, Lcom/android/email/MessagingController$LocalMailboxInfo;->mId:J

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllMailboxAttachmentFiles(Landroid/content/Context;JJ)V

    .line 457
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v22

    iget-wide v3, v0, Lcom/android/email/MessagingController$LocalMailboxInfo;->mId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v37

    .line 459
    .local v37, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$1;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v37

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 551
    .end local v9           #count:I
    .end local v14           #i:I
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v20           #localFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v21           #localFolders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/MessagingController$LocalMailboxInfo;>;"
    .end local v22           #localInfo:Lcom/android/email/MessagingController$LocalMailboxInfo;
    .end local v23           #localNameToDrop:Ljava/lang/String;
    .end local v24           #localsToDrop:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v31           #remoteFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v33           #remoteFolders:[Lcom/android/emailcommon/mail/Folder;
    .end local v35           #store:Lcom/android/email/mail/Store;
    .end local v37           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v2

    if-eqz v18, :cond_3

    .line 552
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2

    .line 465
    .restart local v9       #count:I
    .restart local v14       #i:I
    .restart local v15       #i$:Ljava/util/Iterator;
    .restart local v20       #localFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v21       #localFolders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/MessagingController$LocalMailboxInfo;>;"
    .restart local v24       #localsToDrop:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v31       #remoteFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v33       #remoteFolders:[Lcom/android/emailcommon/mail/Folder;
    .restart local v35       #store:Lcom/android/email/mail/Store;
    :cond_4
    :try_start_3
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 468
    .local v25, mailboxList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Mailbox;>;"
    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 469
    invoke-virtual/range {v31 .. v31}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/String;

    .line 470
    .local v34, remoteNameToAdd:Ljava/lang/String;
    new-instance v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    invoke-direct {v8}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;-><init>()V

    .line 471
    .local v8, box:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v32

    .line 472
    .local v32, remoteFolderToAdd:Lcom/android/emailcommon/mail/Folder;
    move-object/from16 v0, v34

    iput-object v0, v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    .line 475
    const-wide/16 v2, -0x1

    iput-wide v2, v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mParentKey:J

    .line 476
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$1;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v2, v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    .line 477
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$1;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v34

    invoke-static {v2, v0}, Lcom/android/email/LegacyConversions;->inferMailboxTypeFromName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iput v2, v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    .line 479
    invoke-virtual/range {v32 .. v32}, Lcom/android/emailcommon/mail/Folder;->getDelimiter()I

    move-result v2

    iput v2, v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDelimiter:I

    .line 485
    const/4 v2, 0x0

    iput-boolean v2, v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mFlagVisible:Z

    .line 487
    const/16 v2, 0x19

    iput v2, v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mVisibleLimit:I

    .line 488
    invoke-virtual/range {v32 .. v32}, Lcom/android/emailcommon/mail/Folder;->getSelect()Z

    move-result v2

    iput-boolean v2, v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mFlagNoSelect:Z

    .line 489
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$1;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 490
    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 495
    .end local v8           #box:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .end local v32           #remoteFolderToAdd:Lcom/android/emailcommon/mail/Folder;
    .end local v34           #remoteNameToAdd:Ljava/lang/String;
    :cond_5
    const/4 v14, 0x0

    :goto_5
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v14, v2, :cond_d

    .line 496
    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    .line 497
    .restart local v8       #box:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    iget-object v12, v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    .line 498
    .local v12, displayName:Ljava/lang/String;
    iget v2, v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDelimiter:I

    int-to-char v2, v2

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v11

    .line 499
    .local v11, delimiter:Ljava/lang/String;
    iget v2, v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDelimiter:I

    if-eqz v2, :cond_a

    .line 500
    invoke-virtual {v12, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v26

    .line 501
    .local v26, nameArray:[Ljava/lang/String;
    new-instance v36, Ljava/lang/StringBuffer;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuffer;-><init>()V

    .line 502
    .local v36, strBuf:Ljava/lang/StringBuffer;
    move-object/from16 v0, v26

    array-length v2, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_a

    .line 503
    const-wide/16 v27, -0x1

    .line 504
    .local v27, parentKey:J
    move-object/from16 v0, v26

    array-length v2, v0

    add-int/lit8 v9, v2, -0x1

    .line 505
    const/16 v17, 0x0

    .local v17, j:I
    :goto_6
    move/from16 v0, v17

    if-ge v0, v9, :cond_7

    .line 506
    aget-object v2, v26, v17

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 507
    add-int/lit8 v2, v9, -0x1

    move/from16 v0, v17

    if-ge v0, v2, :cond_6

    .line 508
    move-object/from16 v0, v36

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 505
    :cond_6
    add-int/lit8 v17, v17, 0x1

    goto :goto_6

    .line 511
    :cond_7
    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v30

    .line 512
    .local v30, parentName:Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_b

    .line 513
    invoke-virtual/range {v20 .. v20}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_8
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 514
    .local v19, localFolderName:Ljava/lang/String;
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/email/MessagingController$LocalMailboxInfo;

    .line 516
    .restart local v22       #localInfo:Lcom/android/email/MessagingController$LocalMailboxInfo;
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/email/MessagingController$LocalMailboxInfo;->mDisplayName:Ljava/lang/String;

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 517
    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/android/email/MessagingController$LocalMailboxInfo;->mId:J

    move-wide/from16 v27, v0

    .line 530
    .end local v19           #localFolderName:Ljava/lang/String;
    .end local v22           #localInfo:Lcom/android/email/MessagingController$LocalMailboxInfo;
    :cond_9
    :goto_7
    move-wide/from16 v0, v27

    iput-wide v0, v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mParentKey:J

    .line 533
    .end local v17           #j:I
    .end local v26           #nameArray:[Ljava/lang/String;
    .end local v27           #parentKey:J
    .end local v30           #parentName:Ljava/lang/String;
    .end local v36           #strBuf:Ljava/lang/StringBuffer;
    :cond_a
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 534
    .local v10, cv:Landroid/content/ContentValues;
    const/4 v2, 0x1

    iput-boolean v2, v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mFlagVisible:Z

    .line 535
    const-string v2, "flagVisible"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 536
    const-string v2, "parentKey"

    iget-wide v3, v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mParentKey:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 537
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$1;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v8, v2, v10}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 495
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_5

    .line 522
    .end local v10           #cv:Landroid/content/ContentValues;
    .restart local v17       #j:I
    .restart local v26       #nameArray:[Ljava/lang/String;
    .restart local v27       #parentKey:J
    .restart local v30       #parentName:Ljava/lang/String;
    .restart local v36       #strBuf:Ljava/lang/StringBuffer;
    :cond_b
    const/16 v17, 0x0

    :goto_8
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_9

    .line 523
    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    .line 524
    .local v29, parentMailBox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    move-object/from16 v0, v29

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 525
    move-object/from16 v0, v29

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v27, v0

    .line 526
    goto :goto_7

    .line 522
    :cond_c
    add-int/lit8 v17, v17, 0x1

    goto :goto_8

    .line 539
    .end local v8           #box:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .end local v11           #delimiter:Ljava/lang/String;
    .end local v12           #displayName:Ljava/lang/String;
    .end local v17           #j:I
    .end local v26           #nameArray:[Ljava/lang/String;
    .end local v27           #parentKey:J
    .end local v29           #parentMailBox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .end local v30           #parentName:Ljava/lang/String;
    .end local v36           #strBuf:Ljava/lang/StringBuffer;
    :cond_d
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->clear()V

    .line 542
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v24           #localsToDrop:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v25           #mailboxList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Mailbox;>;"
    :cond_e
    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->clear()V

    .line 543
    const/16 v21, 0x0

    .line 544
    invoke-virtual/range {v20 .. v20}, Ljava/util/HashSet;->clear()V

    .line 545
    const/16 v20, 0x0

    .line 546
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$1;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/MessagingController$1;->val$accountId:J

    invoke-virtual {v2, v3, v4}, Lcom/android/email/GroupMessagingListener;->listFoldersFinished(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 551
    if-eqz v18, :cond_1

    .line 552
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 441
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
