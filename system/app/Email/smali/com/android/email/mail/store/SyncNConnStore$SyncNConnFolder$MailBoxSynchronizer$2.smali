.class Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer$2;
.super Ljava/lang/Object;
.source "SyncNConnStore.java"

# interfaces
.implements Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->downloadQSyncUnSyncedMessages(Lcom/android/emailcommon/mail/Folder;Ljava/util/ArrayList;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;

.field final synthetic val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

.field final synthetic val$folder:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

.field final synthetic val$isTrash:Z

.field final synthetic val$opList:Ljava/util/ArrayList;

.field final synthetic val$opsMessage:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;ZLcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/provider/EmailContent$Account;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1216
    iput-object p1, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer$2;->this$1:Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;

    iput-boolean p2, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer$2;->val$isTrash:Z

    iput-object p3, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer$2;->val$folder:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iput-object p4, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer$2;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    iput-object p5, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer$2;->val$opsMessage:Ljava/util/ArrayList;

    iput-object p6, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer$2;->val$opList:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadAttachmentProgress(ILcom/android/emailcommon/mail/Folder$MessageRetrievalListener$DOWNLOAD_STATUS;)V
    .locals 0
    .parameter "progress"
    .parameter "status"

    .prologue
    .line 1364
    return-void
.end method

.method public messageRetrieved(Lcom/android/emailcommon/mail/Message;)V
    .locals 18
    .parameter "message"

    .prologue
    .line 1220
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer$2;->this$1:Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;

    iget-object v1, v1, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->this$0:Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;

    #getter for: Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->mRemoteSync:Z
    invoke-static {v1}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->access$100(Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1221
    const-string v1, "SyncNConnStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote Sync is not enabled: remoteSync -"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer$2;->this$1:Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;

    iget-object v4, v4, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->this$0:Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;

    #getter for: Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->mRemoteSync:Z
    invoke-static {v4}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;->access$100(Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1360
    :cond_0
    :goto_0
    return-void

    .line 1226
    :cond_1
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v17

    .line 1232
    .local v17, uId:Ljava/lang/String;
    invoke-static {}, Lcom/android/email/mail/store/SyncNConnStore;->access$000()Landroid/content/Context;

    move-result-object v1

    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer$2;->val$isTrash:Z

    invoke-static {v1, v3, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreUnifiedMessageWithUid(Landroid/content/Context;JZ)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v2

    .line 1235
    .local v2, localMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-nez v2, :cond_2

    .line 1236
    new-instance v2, Lcom/android/emailcommon/provider/EmailContent$Message;

    .end local v2           #localMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-direct {v2}, Lcom/android/emailcommon/provider/EmailContent$Message;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1238
    .restart local v2       #localMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_2
    if-eqz v2, :cond_0

    .line 1240
    const/4 v13, 0x0

    .line 1241
    .local v13, sncMsgInfo:Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;
    :try_start_1
    const-string v1, "X-VZW-SOURCE-USER"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/Message;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 1243
    .local v15, srcUser:[Ljava/lang/String;
    if-eqz v15, :cond_3

    array-length v1, v15

    if-nez v1, :cond_4

    .line 1244
    :cond_3
    const-string v1, "SyncNConnStore"

    const-string v3, "VZW_SRCUSR header is null"

    invoke-static {v1, v3}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1348
    .end local v15           #srcUser:[Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 1349
    .local v11, me:Lcom/android/emailcommon/mail/MessagingException;
    :try_start_2
    const-string v1, "SyncNConnStore"

    const-string v3, "SynchronizeMailBox | Erroor while copying downloaded message."

    invoke-static {v1, v11, v3}, Lcom/android/email/EmailLog;->dumpException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1356
    .end local v2           #localMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v11           #me:Lcom/android/emailcommon/mail/MessagingException;
    .end local v13           #sncMsgInfo:Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;
    .end local v17           #uId:Ljava/lang/String;
    :catch_1
    move-exception v11

    .line 1357
    .local v11, me:Ljava/lang/Exception;
    const-string v1, "SyncNConnStore"

    const-string v3, "SynchronizeMailBox | Error while storing downloaded message."

    invoke-static {v1, v11, v3}, Lcom/android/email/EmailLog;->dumpException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0

    .line 1247
    .end local v11           #me:Ljava/lang/Exception;
    .restart local v2       #localMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    .restart local v13       #sncMsgInfo:Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;
    .restart local v15       #srcUser:[Ljava/lang/String;
    .restart local v17       #uId:Ljava/lang/String;
    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer$2;->val$folder:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v1, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v3, 0x6

    if-eq v1, v3, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer$2;->val$folder:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v1, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/16 v3, 0x103

    if-ne v1, v3, :cond_7

    .line 1256
    :cond_5
    new-instance v14, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;

    const/4 v1, 0x0

    aget-object v1, v15, v1

    const/4 v3, 0x6

    invoke-direct {v14, v1, v3}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;-><init>(Ljava/lang/String;I)V

    .end local v13           #sncMsgInfo:Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;
    .local v14, sncMsgInfo:Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;
    move-object v13, v14

    .line 1281
    .end local v14           #sncMsgInfo:Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;
    .restart local v13       #sncMsgInfo:Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;
    :cond_6
    :goto_1
    if-nez v13, :cond_b

    .line 1282
    const-string v1, "TAG"

    const-string v3, "Failed to create Local Message Info"

    invoke-static {v1, v3}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1258
    :cond_7
    sget-object v1, Lcom/android/emailcommon/mail/Flag;->SENT:Lcom/android/emailcommon/mail/Flag;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/Message;->isSet(Lcom/android/emailcommon/mail/Flag;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1259
    new-instance v14, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;

    const/4 v1, 0x0

    aget-object v1, v15, v1

    const/4 v3, 0x5

    invoke-direct {v14, v1, v3}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;-><init>(Ljava/lang/String;I)V

    .end local v13           #sncMsgInfo:Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;
    .restart local v14       #sncMsgInfo:Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;
    move-object v13, v14

    .end local v14           #sncMsgInfo:Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;
    .restart local v13       #sncMsgInfo:Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;
    goto :goto_1

    .line 1261
    :cond_8
    sget-object v1, Lcom/android/emailcommon/mail/Flag;->DRAFT:Lcom/android/emailcommon/mail/Flag;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/Message;->isSet(Lcom/android/emailcommon/mail/Flag;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1262
    new-instance v14, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;

    const/4 v1, 0x0

    aget-object v1, v15, v1

    const/4 v3, 0x3

    invoke-direct {v14, v1, v3}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;-><init>(Ljava/lang/String;I)V

    .end local v13           #sncMsgInfo:Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;
    .restart local v14       #sncMsgInfo:Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;
    move-object v13, v14

    .end local v14           #sncMsgInfo:Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;
    .restart local v13       #sncMsgInfo:Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;
    goto :goto_1

    .line 1265
    :cond_9
    sget-boolean v1, Lcom/android/email/activity/utils/AppPreferences;->ENABLE_SNC_GET_TAGS:Z

    if-eqz v1, :cond_a

    .line 1266
    invoke-virtual/range {p1 .. p1}, Lcom/android/emailcommon/mail/Message;->getTagsMap()Ljava/util/HashMap;

    move-result-object v16

    .line 1268
    .local v16, tagMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 1269
    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 1271
    .local v9, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v14, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;

    const/4 v1, 0x0

    aget-object v3, v15, v1

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v14, v3, v1}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .end local v13           #sncMsgInfo:Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;
    .restart local v14       #sncMsgInfo:Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;
    move-object v13, v14

    .line 1273
    .end local v14           #sncMsgInfo:Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;
    .restart local v13       #sncMsgInfo:Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;
    goto :goto_1

    .line 1277
    .end local v9           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v16           #tagMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_a
    new-instance v14, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;

    const/4 v1, 0x0

    aget-object v1, v15, v1

    invoke-direct {v14, v1}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;-><init>(Ljava/lang/String;)V

    .end local v13           #sncMsgInfo:Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;
    .restart local v14       #sncMsgInfo:Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;
    move-object v13, v14

    .end local v14           #sncMsgInfo:Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;
    .restart local v13       #sncMsgInfo:Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;
    goto :goto_1

    .line 1286
    :cond_b
    invoke-virtual {v13}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;->initSNCMessageInfo()Z

    move-result v1

    if-nez v1, :cond_c

    .line 1287
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer$2;->this$1:Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;

    const/4 v3, 0x1

    #setter for: Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->mUpdateAccountList:Z
    invoke-static {v1, v3}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->access$302(Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;Z)Z

    goto/16 :goto_0

    .line 1290
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer$2;->this$1:Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;

    #getter for: Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->mlocalMessageCopy:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->access$400(Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1298
    sget-object v1, Lcom/android/emailcommon/mail/Flag;->SEEN:Lcom/android/emailcommon/mail/Flag;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/Message;->isSet(Lcom/android/emailcommon/mail/Flag;)Z

    move-result v1

    if-nez v1, :cond_e

    #getter for: Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;->mFolderType:I
    invoke-static {v13}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;->access$500(Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;)I

    move-result v1

    if-nez v1, :cond_e

    .line 1300
    const/4 v12, 0x0

    .line 1302
    .local v12, newMessageCount:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer$2;->this$1:Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;

    #getter for: Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->mNewMessageCountMap:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->access$200(Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;)Ljava/util/HashMap;

    move-result-object v1

    #getter for: Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;->mAccountId:J
    invoke-static {v13}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;->access$600(Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 1304
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer$2;->this$1:Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;

    #getter for: Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->mNewMessageCountMap:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->access$200(Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;)Ljava/util/HashMap;

    move-result-object v1

    #getter for: Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;->mAccountId:J
    invoke-static {v13}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;->access$600(Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 1307
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer$2;->this$1:Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;

    #getter for: Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->mNewMessageCountMap:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->access$200(Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;)Ljava/util/HashMap;

    move-result-object v1

    #getter for: Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;->mAccountId:J
    invoke-static {v13}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;->access$600(Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    add-int/lit8 v12, v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1310
    const-string v1, "SyncNConnStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " QSyncMessageCount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer$2;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/email/EmailLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1317
    .end local v12           #newMessageCount:I
    :cond_e
    const-string v1, "SyncNConnStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating local message with QSync remote message for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1320
    invoke-static {}, Lcom/android/email/mail/store/SyncNConnStore;->access$000()Landroid/content/Context;

    move-result-object v1

    #getter for: Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;->mAccountId:J
    invoke-static {v13}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;->access$600(Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;)J

    move-result-wide v4

    #getter for: Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;->mFolderId:J
    invoke-static {v13}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;->access$700(Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;)J

    move-result-wide v6

    #getter for: Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;->mFolderType:I
    invoke-static {v13}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;->access$500(Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;)I

    move-result v8

    move-object/from16 v3, p1

    invoke-static/range {v1 .. v8}, Lcom/android/email/LegacyConversions;->updateMessageFields(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/mail/Message;JJI)Z

    .line 1337
    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1338
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer$2;->val$opsMessage:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->toContentValues()Landroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1346
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer$2;->this$1:Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer$2;->val$opList:Ljava/util/ArrayList;

    const/4 v4, 0x5

    invoke-virtual {v1, v3, v4}, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer;->applyBatchOperationInIntervals(Ljava/util/ArrayList;I)V

    goto/16 :goto_0

    .line 1344
    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$MailBoxSynchronizer$2;->val$opsMessage:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Lcom/android/emailcommon/provider/EmailContent$Message;->addSaveOps(Ljava/util/ArrayList;)I
    :try_end_3
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2
.end method
