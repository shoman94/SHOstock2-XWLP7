.class Lcom/android/email/MessagingController$3;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/MessagingController;->renameFolder(Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/lang/String;Lcom/android/email/MessagingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/MessagingController;

.field final synthetic val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

.field final synthetic val$mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

.field final synthetic val$newMailboxName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/lang/String;Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 808
    iput-object p1, p0, Lcom/android/email/MessagingController$3;->this$0:Lcom/android/email/MessagingController;

    iput-object p2, p0, Lcom/android/email/MessagingController$3;->val$mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iput-object p3, p0, Lcom/android/email/MessagingController$3;->val$newMailboxName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/email/MessagingController$3;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 47

    .prologue
    .line 810
    const/16 v20, 0x0

    .line 812
    .local v20, localFolderCursor:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController$3;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/MessagingController$3;->val$mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v5, v5, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mParentKey:J

    invoke-static {v4, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v33

    .line 815
    .local v33, parentMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController$3;->val$mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v0, v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    move-object/from16 v30, v0

    .line 816
    .local v30, orgMailboxName:Ljava/lang/String;
    const/16 v29, 0x0

    .line 817
    .local v29, newName:Ljava/lang/String;
    const-string v15, ""

    .line 818
    .local v15, delimiter:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController$3;->val$mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v10, v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    .line 820
    .local v10, accountId:J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController$3;->val$mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v4, v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDelimiter:I

    if-eqz v4, :cond_2

    .line 821
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController$3;->val$mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v4, v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDelimiter:I

    int-to-char v4, v4

    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v15

    .line 825
    :goto_0
    if-eqz v33, :cond_3

    move-object/from16 v0, v33

    iget-object v4, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 826
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/MessagingController$3;->val$newMailboxName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 830
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController$3;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/MessagingController$3;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/MessagingController$3;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v40

    .line 831
    .local v40, store:Lcom/android/email/mail/Store;
    move-object/from16 v0, v40

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v35

    .line 832
    .local v35, remoteFolder:Lcom/android/emailcommon/mail/Folder;
    const/16 v38, 0x0

    .line 833
    .local v38, remoteFolders:[Lcom/android/emailcommon/mail/Folder;
    new-instance v23, Ljava/util/HashMap;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    .line 834
    .local v23, localFolders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/MessagingController$LocalMailboxInfo;>;"
    new-instance v22, Ljava/util/HashSet;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashSet;-><init>()V

    .line 835
    .local v22, localFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/16 v44, 0x0

    .line 837
    .local v44, uri:Landroid/net/Uri;
    if-nez v35, :cond_4

    .line 838
    sget-boolean v4, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 839
    const-string v4, "MsgControl >>>"

    const-string v5, "renameFolder : remoteFolder is NULL"

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController$3;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v4}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController$3;->val$mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    const/4 v6, 0x3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/email/MessagingController$3;->val$newMailboxName:Ljava/lang/String;

    new-instance v8, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v9, 0x68

    invoke-direct {v8, v9}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    invoke-virtual/range {v3 .. v8}, Lcom/android/email/GroupMessagingListener;->foldersCommandFinished(JILjava/lang/String;Lcom/android/emailcommon/mail/MessagingException;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1024
    if-eqz v20, :cond_1

    .line 1025
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 1028
    .end local v10           #accountId:J
    .end local v15           #delimiter:Ljava/lang/String;
    .end local v22           #localFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v23           #localFolders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/MessagingController$LocalMailboxInfo;>;"
    .end local v29           #newName:Ljava/lang/String;
    .end local v30           #orgMailboxName:Ljava/lang/String;
    .end local v33           #parentMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .end local v35           #remoteFolder:Lcom/android/emailcommon/mail/Folder;
    .end local v38           #remoteFolders:[Lcom/android/emailcommon/mail/Folder;
    .end local v40           #store:Lcom/android/email/mail/Store;
    .end local v44           #uri:Landroid/net/Uri;
    :cond_1
    :goto_2
    return-void

    .line 823
    .restart local v10       #accountId:J
    .restart local v15       #delimiter:Ljava/lang/String;
    .restart local v29       #newName:Ljava/lang/String;
    .restart local v30       #orgMailboxName:Ljava/lang/String;
    .restart local v33       #parentMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :cond_2
    :try_start_1
    const-string v15, "/"

    goto/16 :goto_0

    .line 828
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController$3;->val$newMailboxName:Ljava/lang/String;

    move-object/from16 v29, v0

    goto :goto_1

    .line 847
    .restart local v22       #localFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v23       #localFolders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/MessagingController$LocalMailboxInfo;>;"
    .restart local v35       #remoteFolder:Lcom/android/emailcommon/mail/Folder;
    .restart local v38       #remoteFolders:[Lcom/android/emailcommon/mail/Folder;
    .restart local v40       #store:Lcom/android/email/mail/Store;
    .restart local v44       #uri:Landroid/net/Uri;
    :cond_4
    invoke-virtual/range {v35 .. v35}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 848
    move-object/from16 v0, v35

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/Folder;->rename(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 849
    move-object/from16 v0, v40

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/Store;->renameFolder(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    sget-boolean v4, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v4, :cond_5

    .line 851
    const-string v4, "MsgControl >>>"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rename Folder - mailboxId :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/MessagingController$3;->val$mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v6, v6, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mMailboxKey:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    :cond_5
    invoke-virtual/range {v40 .. v40}, Lcom/android/email/mail/Store;->getAllFolders()[Lcom/android/emailcommon/mail/Folder;

    move-result-object v38

    .line 855
    new-instance v36, Ljava/util/HashSet;

    invoke-direct/range {v36 .. v36}, Ljava/util/HashSet;-><init>()V

    .line 856
    .local v36, remoteFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/16 v17, 0x0

    .local v17, i:I
    move-object/from16 v0, v38

    array-length v13, v0

    .local v13, count:I
    :goto_3
    move/from16 v0, v17

    if-ge v0, v13, :cond_6

    .line 857
    aget-object v4, v38, v17

    invoke-virtual {v4}, Lcom/android/emailcommon/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 856
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 859
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController$3;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/email/MessagingController$LocalMailboxInfo;->PROJECTION:[Ljava/lang/String;

    const-string v6, "accountKey=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/email/MessagingController$3;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v0, v9, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v45, v0

    invoke-static/range {v45 .. v46}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 864
    :goto_4
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 865
    new-instance v3, Lcom/android/email/MessagingController$LocalMailboxInfo;

    move-object/from16 v0, v20

    invoke-direct {v3, v0}, Lcom/android/email/MessagingController$LocalMailboxInfo;-><init>(Landroid/database/Cursor;)V

    .line 866
    .local v3, info:Lcom/android/email/MessagingController$LocalMailboxInfo;
    iget-object v4, v3, Lcom/android/email/MessagingController$LocalMailboxInfo;->mDisplayName:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 867
    iget-object v4, v3, Lcom/android/email/MessagingController$LocalMailboxInfo;->mDisplayName:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 1015
    .end local v3           #info:Lcom/android/email/MessagingController$LocalMailboxInfo;
    .end local v10           #accountId:J
    .end local v13           #count:I
    .end local v15           #delimiter:Ljava/lang/String;
    .end local v17           #i:I
    .end local v22           #localFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v23           #localFolders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/MessagingController$LocalMailboxInfo;>;"
    .end local v29           #newName:Ljava/lang/String;
    .end local v30           #orgMailboxName:Ljava/lang/String;
    .end local v33           #parentMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .end local v35           #remoteFolder:Lcom/android/emailcommon/mail/Folder;
    .end local v36           #remoteFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v38           #remoteFolders:[Lcom/android/emailcommon/mail/Folder;
    .end local v40           #store:Lcom/android/email/mail/Store;
    .end local v44           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v16

    .line 1019
    .local v16, e:Ljava/lang/Exception;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController$3;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v4}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/MessagingController$3;->val$mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v5, v5, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    const/4 v7, 0x3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/email/MessagingController$3;->val$newMailboxName:Ljava/lang/String;

    new-instance v9, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v45, 0x68

    move/from16 v0, v45

    invoke-direct {v9, v0}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    invoke-virtual/range {v4 .. v9}, Lcom/android/email/GroupMessagingListener;->foldersCommandFinished(JILjava/lang/String;Lcom/android/emailcommon/mail/MessagingException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1024
    if-eqz v20, :cond_1

    .line 1025
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 873
    .end local v16           #e:Ljava/lang/Exception;
    .restart local v10       #accountId:J
    .restart local v13       #count:I
    .restart local v15       #delimiter:Ljava/lang/String;
    .restart local v17       #i:I
    .restart local v22       #localFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v23       #localFolders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/MessagingController$LocalMailboxInfo;>;"
    .restart local v29       #newName:Ljava/lang/String;
    .restart local v30       #orgMailboxName:Ljava/lang/String;
    .restart local v33       #parentMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .restart local v35       #remoteFolder:Lcom/android/emailcommon/mail/Folder;
    .restart local v36       #remoteFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v38       #remoteFolders:[Lcom/android/emailcommon/mail/Folder;
    .restart local v40       #store:Lcom/android/email/mail/Store;
    .restart local v44       #uri:Landroid/net/Uri;
    :cond_7
    :try_start_3
    move-object/from16 v0, v36

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 882
    new-instance v26, Ljava/util/HashSet;

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 883
    .local v26, localsToDrop:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, v26

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 884
    invoke-virtual/range {v26 .. v26}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    :goto_5
    :pswitch_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 885
    .local v25, localNameToDrop:Ljava/lang/String;
    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/email/MessagingController$LocalMailboxInfo;

    .line 890
    .local v24, localInfo:Lcom/android/email/MessagingController$LocalMailboxInfo;
    move-object/from16 v0, v24

    iget v4, v0, Lcom/android/email/MessagingController$LocalMailboxInfo;->mType:I

    packed-switch v4, :pswitch_data_0

    .line 901
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController$3;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v24

    iget-wide v5, v0, Lcom/android/email/MessagingController$LocalMailboxInfo;->mId:J

    invoke-static {v4, v10, v11, v5, v6}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllMailboxAttachmentFiles(Landroid/content/Context;JJ)V

    .line 909
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v24

    iget-wide v5, v0, Lcom/android/email/MessagingController$LocalMailboxInfo;->mId:J

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v44

    .line 913
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController$3;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v44

    invoke-virtual {v4, v0, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    .line 1024
    .end local v10           #accountId:J
    .end local v13           #count:I
    .end local v15           #delimiter:Ljava/lang/String;
    .end local v17           #i:I
    .end local v18           #i$:Ljava/util/Iterator;
    .end local v22           #localFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v23           #localFolders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/MessagingController$LocalMailboxInfo;>;"
    .end local v24           #localInfo:Lcom/android/email/MessagingController$LocalMailboxInfo;
    .end local v25           #localNameToDrop:Ljava/lang/String;
    .end local v26           #localsToDrop:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v29           #newName:Ljava/lang/String;
    .end local v30           #orgMailboxName:Ljava/lang/String;
    .end local v33           #parentMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .end local v35           #remoteFolder:Lcom/android/emailcommon/mail/Folder;
    .end local v36           #remoteFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v38           #remoteFolders:[Lcom/android/emailcommon/mail/Folder;
    .end local v40           #store:Lcom/android/email/mail/Store;
    .end local v44           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v4

    if-eqz v20, :cond_8

    .line 1025
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v4

    .line 919
    .restart local v10       #accountId:J
    .restart local v13       #count:I
    .restart local v15       #delimiter:Ljava/lang/String;
    .restart local v17       #i:I
    .restart local v18       #i$:Ljava/util/Iterator;
    .restart local v22       #localFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v23       #localFolders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/MessagingController$LocalMailboxInfo;>;"
    .restart local v26       #localsToDrop:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v29       #newName:Ljava/lang/String;
    .restart local v30       #orgMailboxName:Ljava/lang/String;
    .restart local v33       #parentMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .restart local v35       #remoteFolder:Lcom/android/emailcommon/mail/Folder;
    .restart local v36       #remoteFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v38       #remoteFolders:[Lcom/android/emailcommon/mail/Folder;
    .restart local v40       #store:Lcom/android/email/mail/Store;
    .restart local v44       #uri:Landroid/net/Uri;
    :cond_9
    :try_start_4
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 922
    .local v27, mailboxList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Mailbox;>;"
    move-object/from16 v0, v36

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 923
    invoke-virtual/range {v36 .. v36}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_6
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/String;

    .line 924
    .local v39, remoteNameToAdd:Ljava/lang/String;
    new-instance v12, Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    invoke-direct {v12}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;-><init>()V

    .line 926
    .local v12, box:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v37

    .line 927
    .local v37, remoteFolderToAdd:Lcom/android/emailcommon/mail/Folder;
    move-object/from16 v0, v39

    iput-object v0, v12, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    .line 930
    const-wide/16 v4, -0x1

    iput-wide v4, v12, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mParentKey:J

    .line 931
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController$3;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v4, v12, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    .line 932
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController$3;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v39

    invoke-static {v4, v0}, Lcom/android/email/LegacyConversions;->inferMailboxTypeFromName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    iput v4, v12, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    .line 934
    invoke-virtual/range {v37 .. v37}, Lcom/android/emailcommon/mail/Folder;->getDelimiter()I

    move-result v4

    iput v4, v12, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDelimiter:I

    .line 940
    const/4 v4, 0x0

    iput-boolean v4, v12, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mFlagVisible:Z

    .line 942
    const/16 v4, 0x19

    iput v4, v12, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mVisibleLimit:I

    .line 943
    invoke-virtual/range {v37 .. v37}, Lcom/android/emailcommon/mail/Folder;->getSelect()Z

    move-result v4

    iput-boolean v4, v12, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mFlagNoSelect:Z

    .line 944
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController$3;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v12, v4}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 946
    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 948
    new-instance v3, Lcom/android/email/MessagingController$LocalMailboxInfo;

    iget-wide v4, v12, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-object v6, v12, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    iget-wide v7, v12, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    iget v9, v12, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    invoke-direct/range {v3 .. v9}, Lcom/android/email/MessagingController$LocalMailboxInfo;-><init>(JLjava/lang/String;JI)V

    .line 950
    .restart local v3       #info:Lcom/android/email/MessagingController$LocalMailboxInfo;
    move-object/from16 v0, v22

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 951
    move-object/from16 v0, v23

    move-object/from16 v1, v39

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 956
    .end local v3           #info:Lcom/android/email/MessagingController$LocalMailboxInfo;
    .end local v12           #box:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .end local v37           #remoteFolderToAdd:Lcom/android/emailcommon/mail/Folder;
    .end local v39           #remoteNameToAdd:Ljava/lang/String;
    :cond_a
    const/16 v17, 0x0

    :goto_7
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v17

    if-ge v0, v4, :cond_10

    .line 957
    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    .line 958
    .restart local v12       #box:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    iget-object v0, v12, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    move-object/from16 v43, v0

    .line 959
    .local v43, tempDisplayName:Ljava/lang/String;
    iget v4, v12, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDelimiter:I

    int-to-char v4, v4

    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v42

    .line 961
    .local v42, tempDelimiter:Ljava/lang/String;
    iget v4, v12, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDelimiter:I

    if-eqz v4, :cond_f

    .line 962
    move-object/from16 v0, v43

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    .line 963
    .local v28, nameArray:[Ljava/lang/String;
    new-instance v41, Ljava/lang/StringBuffer;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuffer;-><init>()V

    .line 964
    .local v41, strBuf:Ljava/lang/StringBuffer;
    move-object/from16 v0, v28

    array-length v4, v0

    const/4 v5, 0x1

    if-le v4, v5, :cond_f

    .line 966
    const-wide/16 v31, -0x1

    .line 967
    .local v31, parentKey:J
    move-object/from16 v0, v28

    array-length v4, v0

    add-int/lit8 v13, v4, -0x1

    .line 968
    const/16 v19, 0x0

    .local v19, j:I
    :goto_8
    move/from16 v0, v19

    if-ge v0, v13, :cond_c

    .line 969
    aget-object v4, v28, v19

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 970
    add-int/lit8 v4, v13, -0x1

    move/from16 v0, v19

    if-ge v0, v4, :cond_b

    .line 971
    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 968
    :cond_b
    add-int/lit8 v19, v19, 0x1

    goto :goto_8

    .line 974
    :cond_c
    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v34

    .line 975
    .local v34, parentName:Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_d
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 976
    .local v21, localFolderName:Ljava/lang/String;
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/email/MessagingController$LocalMailboxInfo;

    .line 978
    .restart local v24       #localInfo:Lcom/android/email/MessagingController$LocalMailboxInfo;
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/email/MessagingController$LocalMailboxInfo;->mDisplayName:Ljava/lang/String;

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 979
    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/android/email/MessagingController$LocalMailboxInfo;->mId:J

    move-wide/from16 v31, v0

    .line 983
    .end local v21           #localFolderName:Ljava/lang/String;
    .end local v24           #localInfo:Lcom/android/email/MessagingController$LocalMailboxInfo;
    :cond_e
    move-wide/from16 v0, v31

    iput-wide v0, v12, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mParentKey:J

    .line 986
    .end local v19           #j:I
    .end local v28           #nameArray:[Ljava/lang/String;
    .end local v31           #parentKey:J
    .end local v34           #parentName:Ljava/lang/String;
    .end local v41           #strBuf:Ljava/lang/StringBuffer;
    :cond_f
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 987
    .local v14, cv:Landroid/content/ContentValues;
    const/4 v4, 0x1

    iput-boolean v4, v12, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mFlagVisible:Z

    .line 988
    const-string v4, "flagVisible"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v14, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 989
    const-string v4, "parentKey"

    iget-wide v5, v12, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mParentKey:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v14, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 990
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController$3;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v12, v4, v14}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 956
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_7

    .line 992
    .end local v12           #box:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .end local v14           #cv:Landroid/content/ContentValues;
    .end local v42           #tempDelimiter:Ljava/lang/String;
    .end local v43           #tempDisplayName:Ljava/lang/String;
    :cond_10
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->clear()V

    .line 995
    .end local v18           #i$:Ljava/util/Iterator;
    .end local v26           #localsToDrop:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v27           #mailboxList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Mailbox;>;"
    :cond_11
    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->clear()V

    .line 996
    const/16 v23, 0x0

    .line 997
    invoke-virtual/range {v22 .. v22}, Ljava/util/HashSet;->clear()V

    .line 998
    const/16 v22, 0x0

    .line 999
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController$3;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v4}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/MessagingController$3;->val$mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v5, v5, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    const/4 v7, 0x3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/email/MessagingController$3;->val$newMailboxName:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/android/email/GroupMessagingListener;->foldersCommandFinished(JILjava/lang/String;Lcom/android/emailcommon/mail/MessagingException;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 1024
    if-eqz v20, :cond_1

    .line 1025
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 1002
    .end local v13           #count:I
    .end local v17           #i:I
    .end local v36           #remoteFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_12
    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController$3;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v4}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/MessagingController$3;->val$mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v5, v5, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    const/4 v7, 0x3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/email/MessagingController$3;->val$newMailboxName:Ljava/lang/String;

    new-instance v9, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v45, 0x68

    move/from16 v0, v45

    invoke-direct {v9, v0}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    invoke-virtual/range {v4 .. v9}, Lcom/android/email/GroupMessagingListener;->foldersCommandFinished(JILjava/lang/String;Lcom/android/emailcommon/mail/MessagingException;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 1024
    if-eqz v20, :cond_1

    .line 1025
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 1009
    :cond_13
    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController$3;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v4}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/MessagingController$3;->val$mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v5, v5, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    const/4 v7, 0x3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/email/MessagingController$3;->val$newMailboxName:Ljava/lang/String;

    new-instance v9, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v45, 0x68

    move/from16 v0, v45

    invoke-direct {v9, v0}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    invoke-virtual/range {v4 .. v9}, Lcom/android/email/GroupMessagingListener;->foldersCommandFinished(JILjava/lang/String;Lcom/android/emailcommon/mail/MessagingException;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 1024
    if-eqz v20, :cond_1

    .line 1025
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 890
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
