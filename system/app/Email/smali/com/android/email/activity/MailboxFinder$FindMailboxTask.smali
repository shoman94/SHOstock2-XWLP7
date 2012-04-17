.class Lcom/android/email/activity/MailboxFinder$FindMailboxTask;
.super Landroid/os/AsyncTask;
.source "MailboxFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MailboxFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FindMailboxTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private final mOkToRecurse:Z

.field private mResult:I

.field final synthetic this$0:Lcom/android/email/activity/MailboxFinder;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MailboxFinder;Z)V
    .locals 1
    .parameter
    .parameter "okToRecurse"

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->this$0:Lcom/android/email/activity/MailboxFinder;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 176
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->mResult:I

    .line 182
    iput-boolean p2, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->mOkToRecurse:Z

    .line 183
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Long;
    .locals 9
    .parameter "params"

    .prologue
    const-wide/16 v7, -0x1

    .line 188
    iget-object v3, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->this$0:Lcom/android/email/activity/MailboxFinder;

    #getter for: Lcom/android/email/activity/MailboxFinder;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/email/activity/MailboxFinder;->access$600(Lcom/android/email/activity/MailboxFinder;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->this$0:Lcom/android/email/activity/MailboxFinder;

    #getter for: Lcom/android/email/activity/MailboxFinder;->mAccountId:J
    invoke-static {v4}, Lcom/android/email/activity/MailboxFinder;->access$200(Lcom/android/email/activity/MailboxFinder;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->isSecurityHold(Landroid/content/Context;J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 189
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->mResult:I

    .line 190
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 212
    :goto_0
    return-object v3

    .line 194
    :cond_0
    iget-object v3, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->this$0:Lcom/android/email/activity/MailboxFinder;

    #getter for: Lcom/android/email/activity/MailboxFinder;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/email/activity/MailboxFinder;->access$600(Lcom/android/email/activity/MailboxFinder;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->this$0:Lcom/android/email/activity/MailboxFinder;

    #getter for: Lcom/android/email/activity/MailboxFinder;->mAccountId:J
    invoke-static {v4}, Lcom/android/email/activity/MailboxFinder;->access$200(Lcom/android/email/activity/MailboxFinder;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->this$0:Lcom/android/email/activity/MailboxFinder;

    #getter for: Lcom/android/email/activity/MailboxFinder;->mMailboxType:I
    invoke-static {v6}, Lcom/android/email/activity/MailboxFinder;->access$700(Lcom/android/email/activity/MailboxFinder;)I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v1

    .line 195
    .local v1, mailboxId:J
    cmp-long v3, v1, v7

    if-eqz v3, :cond_1

    .line 196
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->mResult:I

    .line 197
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_0

    .line 201
    :cond_1
    iget-object v3, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->this$0:Lcom/android/email/activity/MailboxFinder;

    #getter for: Lcom/android/email/activity/MailboxFinder;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/email/activity/MailboxFinder;->access$600(Lcom/android/email/activity/MailboxFinder;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->this$0:Lcom/android/email/activity/MailboxFinder;

    #getter for: Lcom/android/email/activity/MailboxFinder;->mAccountId:J
    invoke-static {v4}, Lcom/android/email/activity/MailboxFinder;->access$200(Lcom/android/email/activity/MailboxFinder;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->isValidId(Landroid/content/Context;J)Z

    move-result v0

    .line 202
    .local v0, accountExists:Z
    if-eqz v0, :cond_3

    .line 203
    iget-boolean v3, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->mOkToRecurse:Z

    if-eqz v3, :cond_2

    .line 205
    const/4 v3, 0x4

    iput v3, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->mResult:I

    .line 212
    :goto_1
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_0

    .line 207
    :cond_2
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->mResult:I

    goto :goto_1

    .line 210
    :cond_3
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->mResult:I

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .locals 6
    .parameter "mailboxId"

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    :goto_0
    return-void

    .line 220
    :cond_0
    iget v0, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->mResult:I

    packed-switch v0, :pswitch_data_0

    .line 266
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 222
    :pswitch_0
    const-string v0, "Email"

    const-string v1, "MailboxFinder: Account security hold."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->this$0:Lcom/android/email/activity/MailboxFinder;

    #getter for: Lcom/android/email/activity/MailboxFinder;->mCallback:Lcom/android/email/activity/MailboxFinder$Callback;
    invoke-static {v0}, Lcom/android/email/activity/MailboxFinder;->access$300(Lcom/android/email/activity/MailboxFinder;)Lcom/android/email/activity/MailboxFinder$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->this$0:Lcom/android/email/activity/MailboxFinder;

    #getter for: Lcom/android/email/activity/MailboxFinder;->mAccountId:J
    invoke-static {v1}, Lcom/android/email/activity/MailboxFinder;->access$200(Lcom/android/email/activity/MailboxFinder;)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/android/email/activity/MailboxFinder$Callback;->onAccountSecurityHold(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    iget-object v0, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->this$0:Lcom/android/email/activity/MailboxFinder;

    #calls: Lcom/android/email/activity/MailboxFinder;->close()V
    invoke-static {v0}, Lcom/android/email/activity/MailboxFinder;->access$400(Lcom/android/email/activity/MailboxFinder;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->this$0:Lcom/android/email/activity/MailboxFinder;

    #calls: Lcom/android/email/activity/MailboxFinder;->close()V
    invoke-static {v1}, Lcom/android/email/activity/MailboxFinder;->access$400(Lcom/android/email/activity/MailboxFinder;)V

    throw v0

    .line 230
    :pswitch_1
    const-string v0, "Email"

    const-string v1, "MailboxFinder: Account not found."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :try_start_1
    iget-object v0, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->this$0:Lcom/android/email/activity/MailboxFinder;

    #getter for: Lcom/android/email/activity/MailboxFinder;->mCallback:Lcom/android/email/activity/MailboxFinder$Callback;
    invoke-static {v0}, Lcom/android/email/activity/MailboxFinder;->access$300(Lcom/android/email/activity/MailboxFinder;)Lcom/android/email/activity/MailboxFinder$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/email/activity/MailboxFinder$Callback;->onAccountNotFound()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 234
    iget-object v0, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->this$0:Lcom/android/email/activity/MailboxFinder;

    #calls: Lcom/android/email/activity/MailboxFinder;->close()V
    invoke-static {v0}, Lcom/android/email/activity/MailboxFinder;->access$400(Lcom/android/email/activity/MailboxFinder;)V

    goto :goto_0

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->this$0:Lcom/android/email/activity/MailboxFinder;

    #calls: Lcom/android/email/activity/MailboxFinder;->close()V
    invoke-static {v1}, Lcom/android/email/activity/MailboxFinder;->access$400(Lcom/android/email/activity/MailboxFinder;)V

    throw v0

    .line 238
    :pswitch_2
    const-string v0, "Email"

    const-string v1, "MailboxFinder: Mailbox not found."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :try_start_2
    iget-object v0, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->this$0:Lcom/android/email/activity/MailboxFinder;

    #getter for: Lcom/android/email/activity/MailboxFinder;->mCallback:Lcom/android/email/activity/MailboxFinder$Callback;
    invoke-static {v0}, Lcom/android/email/activity/MailboxFinder;->access$300(Lcom/android/email/activity/MailboxFinder;)Lcom/android/email/activity/MailboxFinder$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->this$0:Lcom/android/email/activity/MailboxFinder;

    #getter for: Lcom/android/email/activity/MailboxFinder;->mAccountId:J
    invoke-static {v1}, Lcom/android/email/activity/MailboxFinder;->access$200(Lcom/android/email/activity/MailboxFinder;)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/android/email/activity/MailboxFinder$Callback;->onMailboxNotFound(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 242
    iget-object v0, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->this$0:Lcom/android/email/activity/MailboxFinder;

    #calls: Lcom/android/email/activity/MailboxFinder;->close()V
    invoke-static {v0}, Lcom/android/email/activity/MailboxFinder;->access$400(Lcom/android/email/activity/MailboxFinder;)V

    goto :goto_0

    :catchall_2
    move-exception v0

    iget-object v1, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->this$0:Lcom/android/email/activity/MailboxFinder;

    #calls: Lcom/android/email/activity/MailboxFinder;->close()V
    invoke-static {v1}, Lcom/android/email/activity/MailboxFinder;->access$400(Lcom/android/email/activity/MailboxFinder;)V

    throw v0

    .line 253
    :pswitch_3
    :try_start_3
    iget-object v0, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->this$0:Lcom/android/email/activity/MailboxFinder;

    #getter for: Lcom/android/email/activity/MailboxFinder;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/email/activity/MailboxFinder;->access$600(Lcom/android/email/activity/MailboxFinder;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/RefreshManager;->getInstance(Landroid/content/Context;)Lcom/android/email/RefreshManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->this$0:Lcom/android/email/activity/MailboxFinder;

    #getter for: Lcom/android/email/activity/MailboxFinder;->mAccountId:J
    invoke-static {v1}, Lcom/android/email/activity/MailboxFinder;->access$200(Lcom/android/email/activity/MailboxFinder;)J

    move-result-wide v1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/RefreshManager;->refreshMessageList(JJZ)Z

    .line 255
    iget-object v0, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->this$0:Lcom/android/email/activity/MailboxFinder;

    #getter for: Lcom/android/email/activity/MailboxFinder;->mCallback:Lcom/android/email/activity/MailboxFinder$Callback;
    invoke-static {v0}, Lcom/android/email/activity/MailboxFinder;->access$300(Lcom/android/email/activity/MailboxFinder;)Lcom/android/email/activity/MailboxFinder$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->this$0:Lcom/android/email/activity/MailboxFinder;

    #getter for: Lcom/android/email/activity/MailboxFinder;->mAccountId:J
    invoke-static {v1}, Lcom/android/email/activity/MailboxFinder;->access$200(Lcom/android/email/activity/MailboxFinder;)J

    move-result-wide v1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/email/activity/MailboxFinder$Callback;->onMailboxFound(JJ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 257
    iget-object v0, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->this$0:Lcom/android/email/activity/MailboxFinder;

    #calls: Lcom/android/email/activity/MailboxFinder;->close()V
    invoke-static {v0}, Lcom/android/email/activity/MailboxFinder;->access$400(Lcom/android/email/activity/MailboxFinder;)V

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    iget-object v1, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->this$0:Lcom/android/email/activity/MailboxFinder;

    #calls: Lcom/android/email/activity/MailboxFinder;->close()V
    invoke-static {v1}, Lcom/android/email/activity/MailboxFinder;->access$400(Lcom/android/email/activity/MailboxFinder;)V

    throw v0

    .line 262
    :pswitch_4
    const-string v0, "Email"

    const-string v1, "MailboxFinder: Starting network lookup."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v0, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->this$0:Lcom/android/email/activity/MailboxFinder;

    #getter for: Lcom/android/email/activity/MailboxFinder;->mController:Lcom/android/email/Controller;
    invoke-static {v0}, Lcom/android/email/activity/MailboxFinder;->access$800(Lcom/android/email/activity/MailboxFinder;)Lcom/android/email/Controller;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->this$0:Lcom/android/email/activity/MailboxFinder;

    #getter for: Lcom/android/email/activity/MailboxFinder;->mAccountId:J
    invoke-static {v1}, Lcom/android/email/activity/MailboxFinder;->access$200(Lcom/android/email/activity/MailboxFinder;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/email/Controller;->updateMailboxList(J)V

    goto/16 :goto_0

    .line 220
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 163
    check-cast p1, Ljava/lang/Long;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method
