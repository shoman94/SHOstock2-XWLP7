.class Lcom/android/email/activity/MessageListFragment$MessageOpenTask;
.super Landroid/os/AsyncTask;
.source "MessageListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageOpenTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final mMessageId:J

.field private final mMessageMailboxId:J

.field final synthetic this$0:Lcom/android/email/activity/MessageListFragment;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageListFragment;JJ)V
    .locals 0
    .parameter
    .parameter "messageMailboxId"
    .parameter "messageId"

    .prologue
    .line 2234
    iput-object p1, p0, Lcom/android/email/activity/MessageListFragment$MessageOpenTask;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2235
    iput-wide p2, p0, Lcom/android/email/activity/MessageListFragment$MessageOpenTask;->mMessageMailboxId:J

    .line 2236
    iput-wide p4, p0, Lcom/android/email/activity/MessageListFragment$MessageOpenTask;->mMessageId:J

    .line 2237
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 3
    .parameter "params"

    .prologue
    .line 2245
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$MessageOpenTask;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/email/activity/MessageListFragment;->access$200(Lcom/android/email/activity/MessageListFragment;)Landroid/app/Activity;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/activity/MessageListFragment$MessageOpenTask;->mMessageMailboxId:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getMailboxType(Landroid/content/Context;J)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2251
    :pswitch_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0

    .line 2247
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 2249
    :pswitch_2
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 2245
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2229
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageListFragment$MessageOpenTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 8
    .parameter "type"

    .prologue
    .line 2257
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment$MessageOpenTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 2261
    :cond_0
    :goto_0
    return-void

    .line 2260
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$MessageOpenTask;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;
    invoke-static {v0}, Lcom/android/email/activity/MessageListFragment;->access$300(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessageListFragment$Callback;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/activity/MessageListFragment$MessageOpenTask;->mMessageId:J

    iget-wide v3, p0, Lcom/android/email/activity/MessageListFragment$MessageOpenTask;->mMessageMailboxId:J

    iget-object v5, p0, Lcom/android/email/activity/MessageListFragment$MessageOpenTask;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListFragment;->getMailboxId()J

    move-result-wide v5

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface/range {v0 .. v7}, Lcom/android/email/activity/MessageListFragment$Callback;->onMessageOpen(JJJI)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2229
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageListFragment$MessageOpenTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
