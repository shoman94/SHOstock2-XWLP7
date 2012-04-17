.class Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;
.super Landroid/os/AsyncTask;
.source "MessageViewFragmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadAttachmentsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Long;",
        "Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;",
        "[",
        "Lcom/android/emailcommon/provider/EmailContent$Attachment;",
        ">;"
    }
.end annotation


# instance fields
.field bCheckedLoadAttachment:Z

.field bEnableShow:Z

.field htmlChanged:Z

.field info:Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;

.field isAddingAttachment:Z

.field mLoadAttach:Z

.field numDisplayedAttachments:I

.field numProcessed:I

.field numPublished:I

.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragmentBase;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;Z)V
    .locals 1
    .parameter
    .parameter "loadAttachment"

    .prologue
    const/4 v0, 0x0

    .line 4147
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    .line 4148
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4140
    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->htmlChanged:Z

    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->bCheckedLoadAttachment:Z

    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->bEnableShow:Z

    .line 4142
    iput v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numDisplayedAttachments:I

    iput v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numProcessed:I

    iput v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numPublished:I

    .line 4149
    iput-boolean p2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->mLoadAttach:Z

    .line 4150
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4134
    check-cast p1, [Ljava/lang/Long;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->doInBackground([Ljava/lang/Long;)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Long;)[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .locals 13
    .parameter "messageIds"

    .prologue
    const/4 v12, 0x1

    const/4 v6, 0x0

    const/4 v11, 0x0

    .line 4158
    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v7, v7, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    aget-object v8, p1, v11

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentsWithMessageId(Landroid/content/Context;J)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v2

    .line 4161
    .local v2, attachments:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentTab:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/android/email/activity/MessageViewFragmentBase;->access$4000(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setClickable(Z)V

    .line 4163
    move-object v0, v2

    .local v0, arr$:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_4

    aget-object v1, v0, v4

    .line 4164
    .local v1, attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    new-instance v7, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;

    iget-object v8, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-direct {v7, v8, v6}, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$1;)V

    iput-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->info:Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;

    .line 4166
    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->info:Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;

    iput-object v1, v7, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;->attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 4167
    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->info:Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;

    iput-object v6, v7, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 4168
    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->info:Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;

    iput-boolean v11, v7, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;->checkBitmap:Z

    .line 4169
    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->info:Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;

    iput-boolean v11, v7, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;->isLoaded:Z

    .line 4171
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v2, v6

    .line 4202
    .end local v1           #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v2           #attachments:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :goto_1
    return-object v2

    .line 4175
    .restart local v1       #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .restart local v2       #attachments:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_0
    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v7, v7, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v7, v1}, Lcom/android/emailcommon/utility/Utility;->attachmentExists(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 4176
    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->info:Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;

    iput-boolean v12, v7, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;->isLoaded:Z

    .line 4179
    :cond_1
    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->info:Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;

    iget-boolean v7, v7, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;->isLoaded:Z

    if-eqz v7, :cond_2

    .line 4180
    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->info:Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;

    iget-object v8, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-wide v9, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->getPreviewIconById(J)Landroid/graphics/Bitmap;
    invoke-static {v8, v9, v10}, Lcom/android/email/activity/MessageViewFragmentBase;->access$4200(Lcom/android/email/activity/MessageViewFragmentBase;J)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, v7, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 4183
    :cond_2
    new-array v7, v12, [Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;

    iget-object v8, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->info:Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;

    aput-object v8, v7, v11

    invoke-virtual {p0, v7}, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->publishProgress([Ljava/lang/Object;)V

    .line 4184
    iget v7, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numPublished:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numPublished:I

    .line 4186
    iget v7, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numPublished:I

    iget v8, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numProcessed:I

    add-int/lit8 v8, v8, 0x5

    if-le v7, v8, :cond_3

    .line 4188
    const-wide/16 v7, 0x64

    :try_start_0
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4163
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4189
    :catch_0
    move-exception v3

    .line 4190
    .local v3, e:Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 4195
    .end local v1           #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v3           #e:Ljava/lang/InterruptedException;
    :cond_4
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_5

    move-object v2, v6

    .line 4196
    goto :goto_1

    .line 4200
    :cond_5
    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentTab:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/email/activity/MessageViewFragmentBase;->access$4000(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setClickable(Z)V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 4134
    check-cast p1, [Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->onPostExecute([Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    return-void
.end method

.method protected onPostExecute([Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .locals 10
    .parameter "attachments"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 4395
    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->controlTabFocus()V
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$4700(Lcom/android/email/activity/MessageViewFragmentBase;)V

    .line 4400
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadAttachmentsTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3400(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4401
    const-string v0, "Email"

    const-string v1, "onPostExecute : LoadAttachmentTask is already is canceled!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4500
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    :goto_0
    invoke-virtual {v0, v8, v7}, Lcom/android/email/activity/MessageViewFragmentBase;->showContent(ZZ)V

    .line 4520
    :cond_0
    :goto_1
    return-void

    .line 4406
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->isCancelled()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_3

    .line 4500
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    goto :goto_0

    .line 4410
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-boolean v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mIsDestoryStart:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v0, v8, :cond_4

    .line 4500
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    goto :goto_0

    .line 4474
    :cond_4
    :try_start_3
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mEmbeddedImageDownload:Z

    .line 4477
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$4300(Lcom/android/email/activity/MessageViewFragmentBase;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextWebView:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$4802(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;)Ljava/lang/String;

    .line 4478
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v1, 0x0

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$4302(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;)Ljava/lang/String;

    .line 4479
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->htmlChanged:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    if-eqz v0, :cond_6

    .line 4482
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->policySet:Lcom/android/emailcommon/service/PolicySet;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->policySet:Lcom/android/emailcommon/service/PolicySet;

    iget-boolean v0, v0, Lcom/android/emailcommon/service/PolicySet;->mAllowHTMLEmail:Z

    if-nez v0, :cond_5

    .line 4483
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->showHTMLITPolicyToast()V

    .line 4486
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextWebView:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$4800(Lcom/android/email/activity/MessageViewFragmentBase;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 4488
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextWebView:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$4800(Lcom/android/email/activity/MessageViewFragmentBase;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->extractTextFromHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4490
    .local v6, tempStr:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 4491
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextWebView:Ljava/lang/String;
    invoke-static {v0, v6}, Lcom/android/email/activity/MessageViewFragmentBase;->access$4802(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;)Ljava/lang/String;

    .line 4496
    .end local v6           #tempStr:Ljava/lang/String;
    :cond_5
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    const-string v1, "email://"

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextWebView:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$4800(Lcom/android/email/activity/MessageViewFragmentBase;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/activity/MessageWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4500
    :cond_6
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v0, v8, v7}, Lcom/android/email/activity/MessageViewFragmentBase;->showContent(ZZ)V

    .line 4503
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$400(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4508
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J
    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1600(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MessageViewForSeven;->isPremiumUser(J)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4509
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$400(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v1

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSevenAccountKey:J

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$400(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v3

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mSevenMessageKey:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/activity/MessageViewForSeven;->startDownloadEmbeddedAttachments(JJ)V

    goto/16 :goto_1

    .line 4500
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v1, v8, v7}, Lcom/android/email/activity/MessageViewFragmentBase;->showContent(ZZ)V

    throw v0

    .line 4516
    :cond_7
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    new-instance v1, Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-direct {v1, v2, v9}, Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$1;)V

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadEmbeddedAttachmentsTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$4902(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;)Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;

    .line 4517
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadEmbeddedAttachmentsTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$4900(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Long;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$400(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v2

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1
.end method

.method protected varargs onProgressUpdate([Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;)V
    .locals 7
    .parameter "info"

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 4212
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadAttachmentsTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;
    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3400(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;

    move-result-object v1

    if-nez v1, :cond_0

    .line 4213
    const-string v1, "Email"

    const-string v2, "onProgressUpdate : LoadAttachmentTask is already is canceled!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4389
    :goto_0
    return-void

    .line 4220
    :cond_0
    iget v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numProcessed:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numProcessed:I

    .line 4222
    iget-boolean v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->bCheckedLoadAttachment:Z

    if-nez v1, :cond_1

    .line 4223
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1200(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_4

    .line 4224
    iput-boolean v5, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->isAddingAttachment:Z

    .line 4229
    :goto_1
    iput-boolean v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->bCheckedLoadAttachment:Z

    .line 4232
    :cond_1
    iget-boolean v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->bEnableShow:Z

    if-nez v1, :cond_2

    .line 4233
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v1, v2, v5}, Lcom/android/email/activity/MessageViewFragmentBase;->showContent(ZZ)V

    .line 4234
    iput-boolean v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->bEnableShow:Z

    .line 4237
    :cond_2
    aget-object v1, p1, v5

    iget-object v0, v1, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;->attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 4240
    .local v0, attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->isCancelled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_5

    .line 4385
    :cond_3
    :goto_2
    const/4 v0, 0x0

    .line 4386
    aput-object v6, p1, v5

    goto :goto_0

    .line 4226
    .end local v0           #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_4
    iput-boolean v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->isAddingAttachment:Z

    goto :goto_1

    .line 4255
    .restart local v0       #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_5
    :try_start_1
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->IsEAS()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 4256
    const-string v1, "Attmt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attachment mFileName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4257
    const-string v1, "Attmt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attachment mMimeType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4258
    const-string v1, "Attmt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attachment mSize:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4259
    const-string v1, "Attmt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attachment mContentId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4260
    const-string v1, "Attmt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attachment mContentUri:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4261
    const-string v1, "Attmt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attachment mMessageKey:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4262
    const-string v1, "Attmt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attachment mLocation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4263
    const-string v1, "Attmt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attachment mEncoding:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mEncoding:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4264
    const-string v1, "Attmt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attachment mContent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4265
    const-string v1, "Attmt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attachment mFlags:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4266
    const-string v1, "Attmt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attachment mContentBytes:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentBytes:[B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4267
    const-string v1, "Attmt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attachment mAccountKey:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mAccountKey:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4268
    const-string v1, "Attmt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attachment mVoiceMailAttOrder:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mVoiceMailAttOrder:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4270
    const-string v1, "Attmt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attachment mVoiceMailAttDuration:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mVoiceMailAttDuration:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4272
    const-string v1, "Attmt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attachment isInline:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mIsInline:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4274
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$4300(Lcom/android/email/activity/MessageViewFragmentBase;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 4276
    iget-boolean v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->mLoadAttach:Z

    if-eqz v1, :cond_6

    iget v1, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mIsInline:I

    if-nez v1, :cond_6

    .line 4278
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    iget-object v2, v2, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;->bitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    aget-object v3, p1, v3

    iget-boolean v3, v3, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;->checkBitmap:Z

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;Landroid/graphics/Bitmap;Z)V
    invoke-static {v1, v0, v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$4400(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/emailcommon/provider/EmailContent$Attachment;Landroid/graphics/Bitmap;Z)V

    .line 4279
    iget v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numDisplayedAttachments:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numDisplayedAttachments:I

    .line 4376
    :cond_6
    :goto_3
    iget-boolean v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->mLoadAttach:Z

    if-eqz v1, :cond_3

    .line 4377
    iget v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numDisplayedAttachments:I

    if-nez v1, :cond_13

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1200(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_13

    .line 4378
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1200(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->setAttachmentCount(I)V
    invoke-static {v1, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$4500(Lcom/android/email/activity/MessageViewFragmentBase;I)V

    .line 4381
    :goto_4
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numDisplayedAttachments:I

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->arrangeAttachments(I)V
    invoke-static {v1, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$4600(Lcom/android/email/activity/MessageViewFragmentBase;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 4385
    :catchall_0
    move-exception v1

    const/4 v0, 0x0

    .line 4386
    aput-object v6, p1, v5

    .line 4385
    throw v1

    .line 4297
    :cond_7
    :try_start_2
    sget-object v1, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    if-eqz v1, :cond_9

    sget-object v1, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    iget-object v1, v1, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J
    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1600(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/email/activity/MessageViewForSeven;->isPremiumUser(J)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 4299
    iget-boolean v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->mLoadAttach:Z

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->isAddingAttachment:Z

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-nez v1, :cond_8

    .line 4301
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    iget-object v2, v2, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;->bitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    aget-object v3, p1, v3

    iget-boolean v3, v3, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;->checkBitmap:Z

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;Landroid/graphics/Bitmap;Z)V
    invoke-static {v1, v0, v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$4400(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/emailcommon/provider/EmailContent$Attachment;Landroid/graphics/Bitmap;Z)V

    .line 4303
    :cond_8
    iget v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numDisplayedAttachments:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numDisplayedAttachments:I

    goto :goto_3

    .line 4310
    :cond_9
    iget-boolean v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->mLoadAttach:Z

    if-eqz v1, :cond_b

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v1, :cond_a

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v1, :cond_b

    iget v1, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mIsInline:I

    if-nez v1, :cond_b

    .line 4311
    :cond_a
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    iget-object v2, v2, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;->bitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    aget-object v3, p1, v3

    iget-boolean v3, v3, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;->checkBitmap:Z

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;Landroid/graphics/Bitmap;Z)V
    invoke-static {v1, v0, v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$4400(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/emailcommon/provider/EmailContent$Attachment;Landroid/graphics/Bitmap;Z)V

    .line 4312
    iget v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numDisplayedAttachments:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numDisplayedAttachments:I

    goto/16 :goto_3

    .line 4313
    :cond_b
    iget-boolean v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->mLoadAttach:Z

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    const-string v2, "@namo.co.kr"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 4315
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    iget-object v2, v2, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;->bitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    aget-object v3, p1, v3

    iget-boolean v3, v3, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;->checkBitmap:Z

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;Landroid/graphics/Bitmap;Z)V
    invoke-static {v1, v0, v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$4400(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/emailcommon/provider/EmailContent$Attachment;Landroid/graphics/Bitmap;Z)V

    .line 4316
    iget v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numDisplayedAttachments:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numDisplayedAttachments:I

    goto/16 :goto_3

    .line 4323
    :cond_c
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseInlineTag()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 4324
    iget v1, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_6

    .line 4325
    sget-object v1, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    if-eqz v1, :cond_d

    sget-object v1, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    iget-object v1, v1, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J
    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1600(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/email/activity/MessageViewForSeven;->isPremiumUser(J)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 4327
    iget-boolean v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->mLoadAttach:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->isAddingAttachment:Z

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-nez v1, :cond_6

    .line 4329
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    iget-object v2, v2, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;->bitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    aget-object v3, p1, v3

    iget-boolean v3, v3, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;->checkBitmap:Z

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;Landroid/graphics/Bitmap;Z)V
    invoke-static {v1, v0, v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$4400(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/emailcommon/provider/EmailContent$Attachment;Landroid/graphics/Bitmap;Z)V

    .line 4331
    iget v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numDisplayedAttachments:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numDisplayedAttachments:I

    goto/16 :goto_3

    .line 4335
    :cond_d
    iget-boolean v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->mLoadAttach:Z

    if-eqz v1, :cond_e

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-nez v1, :cond_e

    .line 4336
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    iget-object v2, v2, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;->bitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    aget-object v3, p1, v3

    iget-boolean v3, v3, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;->checkBitmap:Z

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;Landroid/graphics/Bitmap;Z)V
    invoke-static {v1, v0, v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$4400(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/emailcommon/provider/EmailContent$Attachment;Landroid/graphics/Bitmap;Z)V

    .line 4338
    iget v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numDisplayedAttachments:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numDisplayedAttachments:I

    goto/16 :goto_3

    .line 4339
    :cond_e
    iget-boolean v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->mLoadAttach:Z

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    const-string v2, "@namo.co.kr"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 4341
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    iget-object v2, v2, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;->bitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    aget-object v3, p1, v3

    iget-boolean v3, v3, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;->checkBitmap:Z

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;Landroid/graphics/Bitmap;Z)V
    invoke-static {v1, v0, v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$4400(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/emailcommon/provider/EmailContent$Attachment;Landroid/graphics/Bitmap;Z)V

    .line 4343
    iget v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numDisplayedAttachments:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numDisplayedAttachments:I

    goto/16 :goto_3

    .line 4348
    :cond_f
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$4300(Lcom/android/email/activity/MessageViewFragmentBase;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-nez v1, :cond_6

    .line 4350
    :cond_10
    sget-object v1, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    if-eqz v1, :cond_11

    sget-object v1, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    iget-object v1, v1, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J
    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1600(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/email/activity/MessageViewForSeven;->isPremiumUser(J)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 4352
    iget-boolean v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->mLoadAttach:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->isAddingAttachment:Z

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-nez v1, :cond_6

    .line 4354
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    iget-object v2, v2, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;->bitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    aget-object v3, p1, v3

    iget-boolean v3, v3, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;->checkBitmap:Z

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;Landroid/graphics/Bitmap;Z)V
    invoke-static {v1, v0, v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$4400(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/emailcommon/provider/EmailContent$Attachment;Landroid/graphics/Bitmap;Z)V

    .line 4356
    iget v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numDisplayedAttachments:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numDisplayedAttachments:I

    goto/16 :goto_3

    .line 4360
    :cond_11
    iget-boolean v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->mLoadAttach:Z

    if-eqz v1, :cond_12

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-nez v1, :cond_12

    .line 4361
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    iget-object v2, v2, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;->bitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    aget-object v3, p1, v3

    iget-boolean v3, v3, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;->checkBitmap:Z

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;Landroid/graphics/Bitmap;Z)V
    invoke-static {v1, v0, v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$4400(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/emailcommon/provider/EmailContent$Attachment;Landroid/graphics/Bitmap;Z)V

    .line 4363
    iget v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numDisplayedAttachments:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numDisplayedAttachments:I

    goto/16 :goto_3

    .line 4364
    :cond_12
    iget-boolean v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->mLoadAttach:Z

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    const-string v2, "@namo.co.kr"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 4366
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    iget-object v2, v2, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;->bitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    aget-object v3, p1, v3

    iget-boolean v3, v3, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;->checkBitmap:Z

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;Landroid/graphics/Bitmap;Z)V
    invoke-static {v1, v0, v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$4400(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/emailcommon/provider/EmailContent$Attachment;Landroid/graphics/Bitmap;Z)V

    .line 4368
    iget v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numDisplayedAttachments:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numDisplayedAttachments:I

    goto/16 :goto_3

    .line 4380
    :cond_13
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numDisplayedAttachments:I

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->setAttachmentCount(I)V
    invoke-static {v1, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$4500(Lcom/android/email/activity/MessageViewFragmentBase;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_4
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 4134
    check-cast p1, [Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->onProgressUpdate([Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;)V

    return-void
.end method
