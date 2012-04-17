.class Lcom/android/email/combined/MessageBehavior$9;
.super Ljava/lang/Object;
.source "MessageBehavior.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/combined/MessageBehavior;->listFolders(JLjava/util/Hashtable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/combined/MessageBehavior;

.field final synthetic val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

.field final synthetic val$accountId:J

.field final synthetic val$isPush:Z

.field final synthetic val$remoteFolders:Ljava/util/Hashtable;


# direct methods
.method constructor <init>(Lcom/android/email/combined/MessageBehavior;Ljava/util/Hashtable;Lcom/android/emailcommon/provider/EmailContent$Account;ZJ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1008
    iput-object p1, p0, Lcom/android/email/combined/MessageBehavior$9;->this$0:Lcom/android/email/combined/MessageBehavior;

    iput-object p2, p0, Lcom/android/email/combined/MessageBehavior$9;->val$remoteFolders:Ljava/util/Hashtable;

    iput-object p3, p0, Lcom/android/email/combined/MessageBehavior$9;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    iput-boolean p4, p0, Lcom/android/email/combined/MessageBehavior$9;->val$isPush:Z

    iput-wide p5, p0, Lcom/android/email/combined/MessageBehavior$9;->val$accountId:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 27

    .prologue
    .line 1010
    const/4 v13, 0x0

    .line 1011
    .local v13, localFolderCursor:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/combined/MessageBehavior$9;->this$0:Lcom/android/email/combined/MessageBehavior;

    invoke-virtual {v2}, Lcom/android/email/combined/MessageBehavior;->notifyFolderStarted()V

    .line 1013
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1015
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/combined/MessageBehavior$9;->val$remoteFolders:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v21

    .line 1017
    .local v21, remoteFolderNames:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 1018
    .local v15, localFolders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/combined/MessageBehavior$LocalMailboxInfo;>;"
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 1019
    .local v14, localFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/combined/MessageBehavior$9;->this$0:Lcom/android/email/combined/MessageBehavior;

    #getter for: Lcom/android/email/combined/MessageBehavior;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/combined/MessageBehavior;->access$000(Lcom/android/email/combined/MessageBehavior;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/email/combined/MessageBehavior$LocalMailboxInfo;->access$100()[Ljava/lang/String;

    move-result-object v4

    const-string v5, "accountKey=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/combined/MessageBehavior$9;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v25, v0

    invoke-static/range {v25 .. v26}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 1024
    :goto_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1025
    new-instance v12, Lcom/android/email/combined/MessageBehavior$LocalMailboxInfo;

    invoke-direct {v12, v13}, Lcom/android/email/combined/MessageBehavior$LocalMailboxInfo;-><init>(Landroid/database/Cursor;)V

    .line 1026
    .local v12, info:Lcom/android/email/combined/MessageBehavior$LocalMailboxInfo;
    iget-object v2, v12, Lcom/android/email/combined/MessageBehavior$LocalMailboxInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v15, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1027
    iget-object v2, v12, Lcom/android/email/combined/MessageBehavior$LocalMailboxInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v14, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1103
    .end local v12           #info:Lcom/android/email/combined/MessageBehavior$LocalMailboxInfo;
    .end local v14           #localFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v15           #localFolders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/combined/MessageBehavior$LocalMailboxInfo;>;"
    .end local v21           #remoteFolderNames:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1104
    :catch_0
    move-exception v9

    .line 1105
    .local v9, e:Ljava/lang/Exception;
    :try_start_3
    const-string v2, "MessageBehavior"

    const-string v3, "create mailbox: "

    invoke-static {v2, v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1106
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/combined/MessageBehavior$9;->this$0:Lcom/android/email/combined/MessageBehavior;

    new-instance v3, Lcom/android/email/combined/EmailException;

    invoke-direct {v3, v9}, Lcom/android/email/combined/EmailException;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {v2, v3}, Lcom/android/email/combined/MessageBehavior;->notifyFolderFailed(Lcom/android/email/combined/EmailException;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1108
    if-eqz v13, :cond_0

    .line 1109
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1112
    .end local v9           #e:Ljava/lang/Exception;
    :cond_0
    :goto_1
    return-void

    .line 1029
    .restart local v14       #localFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v15       #localFolders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/combined/MessageBehavior$LocalMailboxInfo;>;"
    .restart local v21       #remoteFolderNames:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    :try_start_4
    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1032
    new-instance v18, Ljava/util/HashSet;

    move-object/from16 v0, v18

    invoke-direct {v0, v14}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1033
    .local v18, localsToDrop:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 1034
    invoke-virtual/range {v18 .. v18}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_2
    :pswitch_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 1035
    .local v17, localNameToDrop:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/email/combined/MessageBehavior$9;->val$isPush:Z

    if-eqz v2, :cond_4

    .line 1065
    .end local v17           #localNameToDrop:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, v21

    invoke-interface {v0, v14}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1066
    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 1067
    .local v22, remoteNameToAdd:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/combined/MessageBehavior$9;->val$remoteFolders:Ljava/util/Hashtable;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v20

    .line 1068
    .local v20, remoteFolderId:I
    const/4 v2, 0x1

    move/from16 v0, v20

    if-lt v0, v2, :cond_3

    .line 1071
    new-instance v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    invoke-direct {v8}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;-><init>()V

    .line 1072
    .local v8, box:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    move-object/from16 v0, v22

    iput-object v0, v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    .line 1075
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/combined/MessageBehavior$9;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v2, v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    .line 1076
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/combined/MessageBehavior$9;->this$0:Lcom/android/email/combined/MessageBehavior;

    #getter for: Lcom/android/email/combined/MessageBehavior;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/combined/MessageBehavior;->access$000(Lcom/android/email/combined/MessageBehavior;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-static {v2, v0}, Lcom/android/email/LegacyConversions;->inferMailboxTypeFromName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iput v2, v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    .line 1084
    const/4 v2, 0x1

    iput-boolean v2, v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mFlagVisible:Z

    .line 1086
    const/16 v2, 0x19

    iput v2, v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mVisibleLimit:I

    .line 1087
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/combined/MessageBehavior$9;->this$0:Lcom/android/email/combined/MessageBehavior;

    #getter for: Lcom/android/email/combined/MessageBehavior;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/combined/MessageBehavior;->access$000(Lcom/android/email/combined/MessageBehavior;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->save(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v19

    .line 1089
    .local v19, mailboxUri:Landroid/net/Uri;
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1090
    .local v11, id:Ljava/lang/String;
    new-instance v23, Landroid/content/ContentValues;

    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    .line 1091
    .local v23, updateValues:Landroid/content/ContentValues;
    const-string v2, "sevenMailboxKey"

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1093
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/combined/MessageBehavior$9;->this$0:Lcom/android/email/combined/MessageBehavior;

    #getter for: Lcom/android/email/combined/MessageBehavior;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/combined/MessageBehavior;->access$000(Lcom/android/email/combined/MessageBehavior;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$MailboxCB;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "mailboxKey=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v11, v5, v6

    move-object/from16 v0, v23

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1099
    const-string v2, "MessageBehavior"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "create mailbox >> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/combined/MessageBehavior$9;->this$0:Lcom/android/email/combined/MessageBehavior;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/combined/MessageBehavior$9;->val$accountId:J

    invoke-virtual {v2, v3, v4}, Lcom/android/email/combined/MessageBehavior;->notifyFolderFinished(J)V

    goto/16 :goto_3

    .line 1037
    .end local v8           #box:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .end local v11           #id:Ljava/lang/String;
    .end local v19           #mailboxUri:Landroid/net/Uri;
    .end local v20           #remoteFolderId:I
    .end local v22           #remoteNameToAdd:Ljava/lang/String;
    .end local v23           #updateValues:Landroid/content/ContentValues;
    .restart local v17       #localNameToDrop:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/email/combined/MessageBehavior$LocalMailboxInfo;

    .line 1041
    .local v16, localInfo:Lcom/android/email/combined/MessageBehavior$LocalMailboxInfo;
    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/email/combined/MessageBehavior$LocalMailboxInfo;->mType:I

    packed-switch v2, :pswitch_data_0

    .line 1051
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/combined/MessageBehavior$9;->this$0:Lcom/android/email/combined/MessageBehavior;

    #getter for: Lcom/android/email/combined/MessageBehavior;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/combined/MessageBehavior;->access$000(Lcom/android/email/combined/MessageBehavior;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/combined/MessageBehavior$9;->val$accountId:J

    move-object/from16 v0, v16

    iget-wide v5, v0, Lcom/android/email/combined/MessageBehavior$LocalMailboxInfo;->mId:J

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllMailboxAttachmentFiles(Landroid/content/Context;JJ)V

    .line 1057
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v16

    iget-wide v3, v0, Lcom/android/email/combined/MessageBehavior$LocalMailboxInfo;->mId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v24

    .line 1059
    .local v24, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/combined/MessageBehavior$9;->this$0:Lcom/android/email/combined/MessageBehavior;

    #getter for: Lcom/android/email/combined/MessageBehavior;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/combined/MessageBehavior;->access$000(Lcom/android/email/combined/MessageBehavior;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1060
    const-string v2, "MessageBehavior"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remove Folder >> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/email/combined/MessageBehavior$LocalMailboxInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1103
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v16           #localInfo:Lcom/android/email/combined/MessageBehavior$LocalMailboxInfo;
    .end local v17           #localNameToDrop:Ljava/lang/String;
    .end local v18           #localsToDrop:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v24           #uri:Landroid/net/Uri;
    :cond_5
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1108
    if-eqz v13, :cond_0

    .line 1109
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 1108
    .end local v14           #localFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v15           #localFolders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/combined/MessageBehavior$LocalMailboxInfo;>;"
    .end local v21           #remoteFolderNames:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_1
    move-exception v2

    if-eqz v13, :cond_6

    .line 1109
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v2

    .line 1041
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
