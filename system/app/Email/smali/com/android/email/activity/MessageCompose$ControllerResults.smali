.class Lcom/android/email/activity/MessageCompose$ControllerResults;
.super Lcom/android/email/Controller$Result;
.source "MessageCompose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageCompose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ControllerResults"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose;)V
    .locals 0
    .parameter

    .prologue
    .line 12286
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$ControllerResults;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {p0}, Lcom/android/email/Controller$Result;-><init>()V

    return-void
.end method


# virtual methods
.method public loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJI)V
    .locals 3
    .parameter "result"
    .parameter "accountId"
    .parameter "messageId"
    .parameter "attachmentId"
    .parameter "progress"

    .prologue
    .line 12329
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$ControllerResults;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mMessageId:J
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$9200(Lcom/android/email/activity/MessageCompose;)J

    move-result-wide v0

    cmp-long v0, p4, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$ControllerResults;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageCompose;->getIsSyncedDraftMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$ControllerResults;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->IsEAS()Z
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$4500(Lcom/android/email/activity/MessageCompose;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 12330
    :cond_0
    const-string v0, "Compose >>"

    const-string v1, "MessageCompose. ignore loadMoreCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12362
    :cond_1
    :goto_0
    return-void

    .line 12334
    :cond_2
    if-nez p1, :cond_5

    .line 12335
    sparse-switch p8, :sswitch_data_0

    goto :goto_0

    .line 12338
    :sswitch_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$ControllerResults;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDownloadSmimeAttachment:Z
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$8800(Lcom/android/email/activity/MessageCompose;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12339
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$ControllerResults;->this$0:Lcom/android/email/activity/MessageCompose;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageCompose;->attachmentProgress(Z)V

    .line 12344
    :cond_3
    :sswitch_1
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$ControllerResults;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDownloadSmimeAttachment:Z
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$8800(Lcom/android/email/activity/MessageCompose;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12345
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$ControllerResults;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v0, p6, p7}, Lcom/android/email/activity/MessageCompose;->finishLoadAttachment(J)V

    goto :goto_0

    .line 12346
    :cond_4
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$ControllerResults;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mEmbeddedImageDownload:Z
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$4900(Lcom/android/email/activity/MessageCompose;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12347
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$ControllerResults;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$5008(Lcom/android/email/activity/MessageCompose;)I

    .line 12348
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$ControllerResults;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageCompose;->finishLoadInlineAttachment()V

    goto :goto_0

    .line 12355
    :cond_5
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$ControllerResults;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDownloadSmimeAttachment:Z
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$8800(Lcom/android/email/activity/MessageCompose;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 12356
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$ControllerResults;->this$0:Lcom/android/email/activity/MessageCompose;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MessageCompose;->finishLoadAttachment(J)V

    goto :goto_0

    .line 12357
    :cond_6
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$ControllerResults;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mEmbeddedImageDownload:Z
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$4900(Lcom/android/email/activity/MessageCompose;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12358
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$ControllerResults;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$5008(Lcom/android/email/activity/MessageCompose;)I

    .line 12359
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$ControllerResults;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageCompose;->finishLoadInlineAttachment()V

    goto :goto_0

    .line 12335
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x64 -> :sswitch_1
        0xc8 -> :sswitch_1
    .end sparse-switch
.end method

.method public loadMoreCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V
    .locals 7
    .parameter "result"
    .parameter "messageId"
    .parameter "progress"

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 12288
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$ControllerResults;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mMessageId:J
    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$9200(Lcom/android/email/activity/MessageCompose;)J

    move-result-wide v2

    cmp-long v2, p2, v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$ControllerResults;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageCompose;->getIsSyncedDraftMessage()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$ControllerResults;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->IsEAS()Z
    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$4500(Lcom/android/email/activity/MessageCompose;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 12289
    :cond_0
    const-string v2, "Compose >>"

    const-string v3, "MessageCompose. ignore loadMoreCallback"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12324
    :goto_0
    return-void

    .line 12292
    :cond_1
    if-nez p1, :cond_2

    .line 12293
    sparse-switch p4, :sswitch_data_0

    goto :goto_0

    .line 12295
    :sswitch_0
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$ControllerResults;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageCompose;->startLoadMore()V

    .line 12296
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$ControllerResults;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v2, v6}, Lcom/android/email/activity/MessageCompose;->progressLoadMore(I)V

    goto :goto_0

    .line 12301
    :sswitch_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 12302
    .local v0, cv:Landroid/content/ContentValues;
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$ControllerResults;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 12303
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v2, "isMimeLoaded"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 12305
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_id=?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 12310
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$ControllerResults;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageCompose;->finishLoadMore()V

    goto :goto_0

    .line 12317
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v1           #resolver:Landroid/content/ContentResolver;
    :cond_2
    const-string v2, "Compose >>"

    const-string v3, "MessageCompose. Loadmore failed"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12318
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$ControllerResults;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$9300(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$ControllerResults;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$9300(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 12319
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$ControllerResults;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$9300(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 12322
    :cond_3
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$ControllerResults;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageCompose;->finish()V

    goto :goto_0

    .line 12293
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x64 -> :sswitch_1
    .end sparse-switch
.end method
