.class Lcom/android/email/SncMessagingController$1;
.super Ljava/lang/Object;
.source "SncMessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/SncMessagingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/SncMessagingController;

.field final synthetic val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

.field final synthetic val$accountId:J


# virtual methods
.method public run()V
    .locals 27

    .prologue
    .line 336
    const/4 v14, 0x0

    .line 343
    .local v14, localFolderCursor:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/SncMessagingController$1;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/SncMessagingController$1;->this$0:Lcom/android/email/SncMessagingController;

    #getter for: Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/email/SncMessagingController;->access$100(Lcom/android/email/SncMessagingController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/SncMessagingController$1;->this$0:Lcom/android/email/SncMessagingController;

    #getter for: Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/email/SncMessagingController;->access$100(Lcom/android/email/SncMessagingController;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/email/mail/BaseSncStore;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/BaseSncStore$PersistentDataCallbacks;)Lcom/android/email/mail/BaseSncStore;

    move-result-object v23

    .line 347
    .local v23, store:Lcom/android/email/mail/BaseSncStore;
    invoke-virtual/range {v23 .. v23}, Lcom/android/email/mail/BaseSncStore;->getPersonalNamespaces()[Lcom/android/emailcommon/mail/Folder;

    move-result-object v21

    .line 349
    .local v21, remoteFolders:[Lcom/android/emailcommon/mail/Folder;
    new-instance v20, Ljava/util/HashSet;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashSet;-><init>()V

    .line 350
    .local v20, remoteFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v21, :cond_0

    .line 351
    const/4 v11, 0x0

    .local v11, i:I
    move-object/from16 v0, v21

    array-length v9, v0

    .local v9, count:I
    :goto_0
    if-ge v11, v9, :cond_0

    .line 352
    aget-object v2, v21, v11

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 351
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 355
    .end local v9           #count:I
    .end local v11           #i:I
    :cond_0
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 356
    .local v16, localFolders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/SncMessagingController$LocalMailboxInfo;>;"
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 357
    .local v15, localFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/SncMessagingController$1;->this$0:Lcom/android/email/SncMessagingController;

    #getter for: Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/SncMessagingController;->access$100(Lcom/android/email/SncMessagingController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/email/SncMessagingController$LocalMailboxInfo;->PROJECTION:[Ljava/lang/String;

    const-string v5, "accountKey=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SncMessagingController$1;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v25, v0

    invoke-static/range {v25 .. v26}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 362
    :goto_1
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 363
    new-instance v13, Lcom/android/email/SncMessagingController$LocalMailboxInfo;

    invoke-direct {v13, v14}, Lcom/android/email/SncMessagingController$LocalMailboxInfo;-><init>(Landroid/database/Cursor;)V

    .line 364
    .local v13, info:Lcom/android/email/SncMessagingController$LocalMailboxInfo;
    iget-object v2, v13, Lcom/android/email/SncMessagingController$LocalMailboxInfo;->mDisplayName:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    iget-object v2, v13, Lcom/android/email/SncMessagingController$LocalMailboxInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v15, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 430
    .end local v13           #info:Lcom/android/email/SncMessagingController$LocalMailboxInfo;
    .end local v15           #localFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v16           #localFolders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/SncMessagingController$LocalMailboxInfo;>;"
    .end local v20           #remoteFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v21           #remoteFolders:[Lcom/android/emailcommon/mail/Folder;
    .end local v23           #store:Lcom/android/email/mail/BaseSncStore;
    :catch_0
    move-exception v10

    .line 431
    .local v10, e:Ljava/lang/Exception;
    :try_start_1
    const-string v2, "EVENT@LEGACY"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "listFolders [accId - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/email/SncMessagingController$1;->val$accountId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] Got exception - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/SncMessagingController$1;->this$0:Lcom/android/email/SncMessagingController;

    #getter for: Lcom/android/email/SncMessagingController;->mListener:Lcom/android/email/Controller$ServiceCallback;
    invoke-static {v2}, Lcom/android/email/SncMessagingController;->access$200(Lcom/android/email/SncMessagingController;)Lcom/android/email/Controller$ServiceCallback;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/SncMessagingController$1;->val$accountId:J

    const/16 v5, 0x21

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/email/Controller$ServiceCallback;->syncMailboxListStatus(JII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 435
    if-eqz v14, :cond_1

    .line 436
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 439
    .end local v10           #e:Ljava/lang/Exception;
    :cond_1
    :goto_2
    return-void

    .line 370
    .restart local v15       #localFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v16       #localFolders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/SncMessagingController$LocalMailboxInfo;>;"
    .restart local v20       #remoteFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v21       #remoteFolders:[Lcom/android/emailcommon/mail/Folder;
    .restart local v23       #store:Lcom/android/email/mail/BaseSncStore;
    :cond_2
    :try_start_2
    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 377
    new-instance v19, Ljava/util/HashSet;

    move-object/from16 v0, v19

    invoke-direct {v0, v15}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 378
    .local v19, localsToDrop:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual/range {v19 .. v20}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 379
    invoke-virtual/range {v19 .. v19}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_3
    :pswitch_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 380
    .local v18, localNameToDrop:Ljava/lang/String;
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/email/SncMessagingController$LocalMailboxInfo;

    .line 384
    .local v17, localInfo:Lcom/android/email/SncMessagingController$LocalMailboxInfo;
    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/email/SncMessagingController$LocalMailboxInfo;->mType:I

    packed-switch v2, :pswitch_data_0

    .line 394
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/SncMessagingController$1;->this$0:Lcom/android/email/SncMessagingController;

    #getter for: Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/SncMessagingController;->access$100(Lcom/android/email/SncMessagingController;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/SncMessagingController$1;->val$accountId:J

    move-object/from16 v0, v17

    iget-wide v5, v0, Lcom/android/email/SncMessagingController$LocalMailboxInfo;->mId:J

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/email/provider/AttachmentProvider;->deleteAllMailboxAttachmentFiles(Landroid/content/Context;JJ)V

    .line 400
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v17

    iget-wide v3, v0, Lcom/android/email/SncMessagingController$LocalMailboxInfo;->mId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v24

    .line 402
    .local v24, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/SncMessagingController$1;->this$0:Lcom/android/email/SncMessagingController;

    #getter for: Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/SncMessagingController;->access$100(Lcom/android/email/SncMessagingController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 435
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v15           #localFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v16           #localFolders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/SncMessagingController$LocalMailboxInfo;>;"
    .end local v17           #localInfo:Lcom/android/email/SncMessagingController$LocalMailboxInfo;
    .end local v18           #localNameToDrop:Ljava/lang/String;
    .end local v19           #localsToDrop:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v20           #remoteFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v21           #remoteFolders:[Lcom/android/emailcommon/mail/Folder;
    .end local v23           #store:Lcom/android/email/mail/BaseSncStore;
    .end local v24           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v2

    if-eqz v14, :cond_3

    .line 436
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2

    .line 408
    .restart local v12       #i$:Ljava/util/Iterator;
    .restart local v15       #localFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v16       #localFolders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/SncMessagingController$LocalMailboxInfo;>;"
    .restart local v19       #localsToDrop:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v20       #remoteFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v21       #remoteFolders:[Lcom/android/emailcommon/mail/Folder;
    .restart local v23       #store:Lcom/android/email/mail/BaseSncStore;
    :cond_4
    :try_start_3
    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 409
    invoke-virtual/range {v20 .. v20}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 410
    .local v22, remoteNameToAdd:Ljava/lang/String;
    new-instance v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    invoke-direct {v8}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;-><init>()V

    .line 411
    .local v8, box:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    move-object/from16 v0, v22

    iput-object v0, v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    .line 414
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/SncMessagingController$1;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v2, v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    .line 415
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/SncMessagingController$1;->this$0:Lcom/android/email/SncMessagingController;

    #getter for: Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/SncMessagingController;->access$100(Lcom/android/email/SncMessagingController;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-static {v2, v0}, Lcom/android/email/LegacyConversions;->inferMailboxTypeFromName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iput v2, v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    .line 423
    const/4 v2, 0x1

    iput-boolean v2, v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mFlagVisible:Z

    .line 425
    const/16 v2, 0x19

    iput v2, v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mVisibleLimit:I

    .line 426
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/SncMessagingController$1;->this$0:Lcom/android/email/SncMessagingController;

    #getter for: Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/SncMessagingController;->access$100(Lcom/android/email/SncMessagingController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->save(Landroid/content/Context;)Landroid/net/Uri;

    goto :goto_4

    .line 429
    .end local v8           #box:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v19           #localsToDrop:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v22           #remoteNameToAdd:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/SncMessagingController$1;->this$0:Lcom/android/email/SncMessagingController;

    #getter for: Lcom/android/email/SncMessagingController;->mListener:Lcom/android/email/Controller$ServiceCallback;
    invoke-static {v2}, Lcom/android/email/SncMessagingController;->access$200(Lcom/android/email/SncMessagingController;)Lcom/android/email/Controller$ServiceCallback;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/SncMessagingController$1;->val$accountId:J

    const/4 v5, 0x0

    const/16 v6, 0x64

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/email/Controller$ServiceCallback;->syncMailboxListStatus(JII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 435
    if-eqz v14, :cond_1

    .line 436
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 384
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
