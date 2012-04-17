.class Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer$1;
.super Ljava/lang/Object;
.source "SyncNConnStore.java"

# interfaces
.implements Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->downloadUnSyncedMessages(Lcom/android/emailcommon/mail/Folder;Ljava/util/ArrayList;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;

.field final synthetic val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

.field final synthetic val$folder:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

.field final synthetic val$localMapCopy:Ljava/util/HashMap;

.field final synthetic val$opsList:Ljava/util/ArrayList;

.field final synthetic val$opsMessage:Ljava/util/ArrayList;

.field final synthetic val$unsyncedMessages:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;Ljava/util/HashMap;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/provider/EmailContent$Account;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1030
    iput-object p1, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer$1;->this$1:Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;

    iput-object p2, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer$1;->val$localMapCopy:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer$1;->val$folder:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iput-object p4, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer$1;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    iput-object p5, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer$1;->val$unsyncedMessages:Ljava/util/ArrayList;

    iput-object p6, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer$1;->val$opsMessage:Ljava/util/ArrayList;

    iput-object p7, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer$1;->val$opsList:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadAttachmentProgress(ILcom/android/emailcommon/mail/Folder$MessageRetrievalListener$DOWNLOAD_STATUS;)V
    .locals 0
    .parameter "progress"
    .parameter "status"

    .prologue
    .line 1167
    return-void
.end method

.method public messageRetrieved(Lcom/android/emailcommon/mail/Message;)V
    .locals 16
    .parameter "message"

    .prologue
    .line 1034
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer$1;->this$1:Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;

    iget-object v1, v1, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->this$0:Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;

    #getter for: Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->mRemoteSync:Z
    invoke-static {v1}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->access$100(Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1035
    const-string v1, "SyncNConnStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Remote Sync is not enabled: remoteSync -"

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer$1;->this$1:Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;

    iget-object v14, v14, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->this$0:Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;

    #getter for: Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->mRemoteSync:Z
    invoke-static {v14}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->access$100(Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;)Z

    move-result v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    :cond_0
    :goto_0
    return-void

    .line 1045
    :cond_1
    const/4 v2, 0x0

    .line 1046
    .local v2, localMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer$1;->val$localMapCopy:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/email/MessagingController$LocalMessageInfo;

    .line 1048
    .local v10, localMessageInfo:Lcom/android/email/MessagingController$LocalMessageInfo;
    if-nez v10, :cond_2

    .line 1049
    new-instance v9, Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-direct {v9}, Lcom/android/emailcommon/provider/EmailContent$Message;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .end local v2           #localMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    .local v9, localMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    move-object v2, v9

    .line 1056
    .end local v9           #localMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    .restart local v2       #localMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    :goto_1
    if-eqz v2, :cond_0

    .line 1058
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer$1;->val$folder:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v6, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 1059
    .local v6, folderId:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer$1;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v4, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 1060
    .local v4, accoutId:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer$1;->val$folder:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v8, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    .line 1068
    .local v8, folderType:I
    sget-boolean v1, Lcom/android/email/activity/utils/AppPreferences;->ENABLE_SNC_GET_TAGS:Z

    if-eqz v1, :cond_3

    .line 1069
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer$1;->val$folder:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v1, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-nez v1, :cond_3

    sget-object v1, Lcom/android/emailcommon/mail/Flag;->SENT:Lcom/android/emailcommon/mail/Flag;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/Message;->isSet(Lcom/android/emailcommon/mail/Flag;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/android/emailcommon/mail/Flag;->DRAFT:Lcom/android/emailcommon/mail/Flag;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/Message;->isSet(Lcom/android/emailcommon/mail/Flag;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1072
    invoke-virtual/range {p1 .. p1}, Lcom/android/emailcommon/mail/Message;->getTagsMap()Ljava/util/HashMap;

    move-result-object v13

    .line 1090
    .local v13, tagMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v13}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 1091
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer$1;->val$unsyncedMessages:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1150
    .end local v4           #accoutId:J
    .end local v6           #folderId:J
    .end local v8           #folderType:I
    .end local v13           #tagMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v11

    .line 1151
    .local v11, me:Lcom/android/emailcommon/mail/MessagingException;
    :try_start_2
    const-string v1, "SyncNConnStore"

    const-string v3, "SynchronizeMailBox | Erroor while copying downloaded message."

    invoke-static {v1, v11, v3}, Lcom/android/email/EmailLog;->dumpException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1158
    .end local v10           #localMessageInfo:Lcom/android/email/MessagingController$LocalMessageInfo;
    .end local v11           #me:Lcom/android/emailcommon/mail/MessagingException;
    :catch_1
    move-exception v11

    .line 1159
    .local v11, me:Ljava/lang/Exception;
    const-string v1, "SyncNConnStore"

    const-string v3, "SynchronizeMailBox | Error while storing downloaded message."

    invoke-static {v1, v11, v3}, Lcom/android/email/EmailLog;->dumpException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0

    .line 1051
    .end local v11           #me:Ljava/lang/Exception;
    .restart local v10       #localMessageInfo:Lcom/android/email/MessagingController$LocalMessageInfo;
    :cond_2
    :try_start_3
    invoke-static {}, Lcom/android/email/mail/store/SyncNConnStore;->access$000()Landroid/content/Context;

    move-result-object v1

    iget-wide v14, v10, Lcom/android/email/MessagingController$LocalMessageInfo;->mId:J

    invoke-static {v1, v14, v15}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v2

    goto :goto_1

    .line 1096
    .restart local v4       #accoutId:J
    .restart local v6       #folderId:J
    .restart local v8       #folderType:I
    :cond_3
    :try_start_4
    const-string v1, "SyncNConnStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Updating local message with remote message for "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer$1;->val$folder:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v1, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-nez v1, :cond_5

    sget-object v1, Lcom/android/emailcommon/mail/Flag;->SEEN:Lcom/android/emailcommon/mail/Flag;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/Message;->isSet(Lcom/android/emailcommon/mail/Flag;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1102
    const/4 v12, 0x0

    .line 1103
    .local v12, newMessageCount:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer$1;->this$1:Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;

    #getter for: Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->mNewMessageCountMap:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->access$200(Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;)Ljava/util/HashMap;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer$1;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v14, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1104
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer$1;->this$1:Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;

    #getter for: Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->mNewMessageCountMap:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->access$200(Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;)Ljava/util/HashMap;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer$1;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v14, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 1107
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer$1;->this$1:Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;

    #getter for: Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->mNewMessageCountMap:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->access$200(Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;)Ljava/util/HashMap;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer$1;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v14, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    add-int/lit8 v12, v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v3, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1110
    const-string v1, "SyncNConnStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " MessageCount: "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v14, " "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v14, " "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer$1;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v14, v14, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/email/EmailLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    .end local v12           #newMessageCount:I
    :cond_5
    invoke-static {}, Lcom/android/email/mail/store/SyncNConnStore;->access$000()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v3, p1

    invoke-static/range {v1 .. v8}, Lcom/android/email/LegacyConversions;->updateMessageFields(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/mail/Message;JJI)Z

    .line 1135
    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1136
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer$1;->val$opsMessage:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->toContentValues()Landroid/content/ContentValues;

    move-result-object v14

    invoke-virtual {v3, v14}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1145
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer$1;->this$1:Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer$1;->val$opsList:Ljava/util/ArrayList;

    const/4 v14, 0x5

    invoke-virtual {v1, v3, v14}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->applyBatchOperationInIntervals(Ljava/util/ArrayList;I)V

    .line 1146
    const-string v1, "SyncNConnStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Added to an array for the batch update: - localMessage.isSaved:"

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->isSaved()Z

    move-result v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1142
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer$1;->val$opsMessage:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Lcom/android/emailcommon/provider/EmailContent$Message;->addSaveOps(Ljava/util/ArrayList;)I
    :try_end_4
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2
.end method
