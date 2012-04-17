.class Lcom/android/email/adapter/SncAdapter$SncResults$1;
.super Ljava/lang/Object;
.source "SncAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/adapter/SncAdapter$SncResults;->onNewMailNotificationReceived(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/adapter/SncAdapter$SncResults;

.field final synthetic val$newMailCount:I


# direct methods
.method constructor <init>(Lcom/android/email/adapter/SncAdapter$SncResults;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/email/adapter/SncAdapter$SncResults$1;->this$1:Lcom/android/email/adapter/SncAdapter$SncResults;

    iput p2, p0, Lcom/android/email/adapter/SncAdapter$SncResults$1;->val$newMailCount:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 155
    const/4 v11, 0x0

    .line 156
    .local v11, resendFakeSMS:Z
    sget-object v0, Lcom/android/email/adapter/ProtocolAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getAllSncAccounts(Landroid/content/Context;)Ljava/util/List;

    move-result-object v12

    .line 157
    .local v12, sncAccountList:Ljava/util/List;,"Ljava/util/List<Lcom/android/emailcommon/provider/EmailContent$Account;>;"
    if-eqz v12, :cond_b

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 158
    sget-object v0, Lcom/android/email/adapter/ProtocolAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreUnifiedAccount(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v13

    .line 160
    .local v13, unifiedAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-virtual {v13}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncScheduleData()Lcom/android/emailcommon/utility/SyncScheduleData;

    move-result-object v0

    sget-object v1, Lcom/android/email/adapter/ProtocolAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/utility/SyncScheduleData;->isManualScheduledNow(Landroid/content/Context;)Z

    move-result v9

    .line 162
    .local v9, isManual:Z
    sget-object v0, Lcom/android/email/adapter/ProtocolAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreUnifiedMailbox(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v14

    .line 164
    .local v14, unifiedMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    invoke-static {v14}, Lcom/android/email/EmailUtility;->isAccountAddedRecently(Lcom/android/emailcommon/provider/EmailContent$Mailbox;)Landroid/util/Pair;

    move-result-object v8

    .line 166
    .local v8, isAccAddedRecently:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Boolean;>;"
    if-eqz v13, :cond_a

    if-eqz v14, :cond_a

    .line 169
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 170
    .local v6, a:Lcom/android/emailcommon/provider/EmailContent$Account;
    sget-object v0, Lcom/android/email/adapter/ProtocolAdapter;->mContext:Landroid/content/Context;

    iget-wide v1, v6, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v1, v2, v4}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v10

    .line 172
    .local v10, mb:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    if-eqz v10, :cond_0

    .line 181
    iget-object v0, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    const-string v0, "SncAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Account recently added. so qeresyncing - ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v6, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v10, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/android/email/adapter/SncAdapter$SncResults$1;->this$1:Lcom/android/email/adapter/SncAdapter$SncResults;

    iget-object v0, v0, Lcom/android/email/adapter/SncAdapter$SncResults;->this$0:Lcom/android/email/adapter/SncAdapter;

    invoke-virtual {v0, v6, v10}, Lcom/android/email/adapter/SncAdapter;->qreSyncMailbox(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    goto :goto_0

    .line 187
    :cond_1
    iget-object v0, v10, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncStatus:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, v10, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncStatus:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, v10, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncStatus:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    :cond_2
    iget v0, p0, Lcom/android/email/adapter/SncAdapter$SncResults$1;->val$newMailCount:I

    if-ltz v0, :cond_4

    .line 194
    iget-object v0, v10, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncStatus:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 197
    sget-object v0, Lcom/android/email/adapter/ProtocolAdapter;->mContext:Landroid/content/Context;

    iget-wide v1, v10, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v1, v2, v4}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->setSyncStatus(Landroid/content/Context;JI)V

    .line 207
    :cond_3
    :goto_1
    const-string v0, "SncAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SMS triggers the initial sync for acc - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v6, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/android/email/adapter/SncAdapter$SncResults$1;->this$1:Lcom/android/email/adapter/SncAdapter$SncResults;

    iget-object v0, v0, Lcom/android/email/adapter/SncAdapter$SncResults;->this$0:Lcom/android/email/adapter/SncAdapter;

    #getter for: Lcom/android/email/adapter/SncAdapter;->mMessagingController:Lcom/android/email/SncMessagingController;
    invoke-static {v0}, Lcom/android/email/adapter/SncAdapter;->access$200(Lcom/android/email/adapter/SncAdapter;)Lcom/android/email/SncMessagingController;

    move-result-object v0

    invoke-virtual {v0, v6, v10}, Lcom/android/email/SncMessagingController;->synchronizeMailbox(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    goto/16 :goto_0

    .line 205
    :cond_4
    const/4 v11, 0x1

    goto :goto_1

    .line 222
    .end local v6           #a:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v10           #mb:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :cond_5
    iget-object v0, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v5, :cond_8

    iget-object v0, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v5, :cond_8

    .line 226
    iget-object v0, p0, Lcom/android/email/adapter/SncAdapter$SncResults$1;->this$1:Lcom/android/email/adapter/SncAdapter$SncResults;

    iget-object v0, v0, Lcom/android/email/adapter/SncAdapter$SncResults;->this$0:Lcom/android/email/adapter/SncAdapter;

    #getter for: Lcom/android/email/adapter/SncAdapter;->mMessagingController:Lcom/android/email/SncMessagingController;
    invoke-static {v0}, Lcom/android/email/adapter/SncAdapter;->access$200(Lcom/android/email/adapter/SncAdapter;)Lcom/android/email/SncMessagingController;

    move-result-object v0

    invoke-virtual {v0, v13, v14}, Lcom/android/email/SncMessagingController;->resetQresyncMailbox(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    .line 236
    :goto_2
    iget-object v0, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_6

    iget v0, p0, Lcom/android/email/adapter/SncAdapter$SncResults$1;->val$newMailCount:I

    if-ltz v0, :cond_6

    iget-object v0, p0, Lcom/android/email/adapter/SncAdapter$SncResults$1;->this$1:Lcom/android/email/adapter/SncAdapter$SncResults;

    iget-object v0, v0, Lcom/android/email/adapter/SncAdapter$SncResults;->this$0:Lcom/android/email/adapter/SncAdapter;

    iget-wide v1, v14, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/adapter/SncAdapter;->getMailboxSyncState(J)I

    move-result v0

    const/4 v1, -0x3

    if-eq v0, v1, :cond_6

    .line 239
    iget-object v0, p0, Lcom/android/email/adapter/SncAdapter$SncResults$1;->this$1:Lcom/android/email/adapter/SncAdapter$SncResults;

    iget-object v0, v0, Lcom/android/email/adapter/SncAdapter$SncResults;->this$0:Lcom/android/email/adapter/SncAdapter;

    iget-wide v1, v13, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v3, v14, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/adapter/SncAdapter;->setMailboxSyncable(JJZ)V

    .line 243
    :cond_6
    if-eqz v11, :cond_7

    iget v0, p0, Lcom/android/email/adapter/SncAdapter$SncResults$1;->val$newMailCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    .line 244
    iget-object v0, p0, Lcom/android/email/adapter/SncAdapter$SncResults$1;->this$1:Lcom/android/email/adapter/SncAdapter$SncResults;

    iget-object v0, v0, Lcom/android/email/adapter/SncAdapter$SncResults;->this$0:Lcom/android/email/adapter/SncAdapter;

    #getter for: Lcom/android/email/adapter/SncAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/email/adapter/SncAdapter;->access$300(Lcom/android/email/adapter/SncAdapter;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/email/adapter/SncAdapter$SncResults$1$1;

    invoke-direct {v1, p0}, Lcom/android/email/adapter/SncAdapter$SncResults$1$1;-><init>(Lcom/android/email/adapter/SncAdapter$SncResults$1;)V

    const-wide/32 v2, 0x3a980

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 265
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #isAccAddedRecently:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Boolean;>;"
    .end local v9           #isManual:Z
    .end local v13           #unifiedAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v14           #unifiedMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :cond_7
    :goto_3
    return-void

    .line 228
    .restart local v7       #i$:Ljava/util/Iterator;
    .restart local v8       #isAccAddedRecently:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Boolean;>;"
    .restart local v9       #isManual:Z
    .restart local v13       #unifiedAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    .restart local v14       #unifiedMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :cond_8
    if-nez v9, :cond_9

    iget v0, p0, Lcom/android/email/adapter/SncAdapter$SncResults$1;->val$newMailCount:I

    if-ltz v0, :cond_9

    .line 229
    iget-object v0, p0, Lcom/android/email/adapter/SncAdapter$SncResults$1;->this$1:Lcom/android/email/adapter/SncAdapter$SncResults;

    iget-object v0, v0, Lcom/android/email/adapter/SncAdapter$SncResults;->this$0:Lcom/android/email/adapter/SncAdapter;

    invoke-virtual {v0, v13, v14}, Lcom/android/email/adapter/SncAdapter;->qreSyncMailbox(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    goto :goto_2

    .line 231
    :cond_9
    const-string v0, "SncAdapter"

    const-string v1, "Fail. New mail SMS is ignored to qResync since PUSH is not configured or fake SMS"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 257
    .end local v7           #i$:Ljava/util/Iterator;
    :cond_a
    const-string v0, "SncAdapter"

    const-string v1, "New mail notification ignored as Unified acount is not configured "

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 261
    .end local v8           #isAccAddedRecently:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Boolean;>;"
    .end local v9           #isManual:Z
    .end local v13           #unifiedAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v14           #unifiedMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :cond_b
    const-string v0, "SncAdapter"

    const-string v1, "New mail notification ignored as SNC acount is not configured "

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method
