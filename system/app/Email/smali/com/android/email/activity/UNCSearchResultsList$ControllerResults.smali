.class Lcom/android/email/activity/UNCSearchResultsList$ControllerResults;
.super Lcom/android/email/Controller$Result;
.source "UNCSearchResultsList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/UNCSearchResultsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ControllerResults"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/UNCSearchResultsList;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/UNCSearchResultsList;)V
    .locals 0
    .parameter

    .prologue
    .line 941
    iput-object p1, p0, Lcom/android/email/activity/UNCSearchResultsList$ControllerResults;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    invoke-direct {p0}, Lcom/android/email/Controller$Result;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/UNCSearchResultsList;Lcom/android/email/activity/UNCSearchResultsList$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 941
    invoke-direct {p0, p1}, Lcom/android/email/activity/UNCSearchResultsList$ControllerResults;-><init>(Lcom/android/email/activity/UNCSearchResultsList;)V

    return-void
.end method


# virtual methods
.method public loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJI)V
    .locals 5
    .parameter "result"
    .parameter "accountId"
    .parameter "messageId"
    .parameter "docId"
    .parameter "progress"

    .prologue
    const/4 v4, 0x1

    .line 947
    const-string v1, "UNCSearchResultsList"

    const-string v2, "Inside loadAttachmentCallback"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    if-nez p1, :cond_3

    .line 949
    sparse-switch p8, :sswitch_data_0

    .line 993
    iget-object v1, p0, Lcom/android/email/activity/UNCSearchResultsList$ControllerResults;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    #getter for: Lcom/android/email/activity/UNCSearchResultsList;->mDownloadProgress:Lcom/android/email/ExtendedProgressDialog;
    invoke-static {v1}, Lcom/android/email/activity/UNCSearchResultsList;->access$2000(Lcom/android/email/activity/UNCSearchResultsList;)Lcom/android/email/ExtendedProgressDialog;

    move-result-object v1

    invoke-virtual {v1, p8}, Lcom/android/email/ExtendedProgressDialog;->setProgress(I)V

    .line 1004
    :cond_0
    :goto_0
    return-void

    .line 951
    :sswitch_0
    const-string v1, "UNCSearchResultsList"

    const-string v2, "Progress:0"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 954
    :sswitch_1
    const-string v1, "UNCSearchResultsList"

    const-string v2, "Progress:100"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    const-string v1, "UNCSearchResultsList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loadattachment done messageId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    iget-object v1, p0, Lcom/android/email/activity/UNCSearchResultsList$ControllerResults;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    invoke-virtual {v1, v4}, Lcom/android/email/activity/UNCSearchResultsList;->dismissDialog(I)V

    .line 957
    iget-object v1, p0, Lcom/android/email/activity/UNCSearchResultsList$ControllerResults;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    #getter for: Lcom/android/email/activity/UNCSearchResultsList;->mode:I
    invoke-static {v1}, Lcom/android/email/activity/UNCSearchResultsList;->access$700(Lcom/android/email/activity/UNCSearchResultsList;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 959
    :pswitch_0
    iget-object v1, p0, Lcom/android/email/activity/UNCSearchResultsList$ControllerResults;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    #calls: Lcom/android/email/activity/UNCSearchResultsList;->viewDocument(J)V
    invoke-static {v1, p6, p7}, Lcom/android/email/activity/UNCSearchResultsList;->access$1800(Lcom/android/email/activity/UNCSearchResultsList;J)V

    .line 960
    iget-object v1, p0, Lcom/android/email/activity/UNCSearchResultsList$ControllerResults;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    #getter for: Lcom/android/email/activity/UNCSearchResultsList;->directFileOpen:Z
    invoke-static {v1}, Lcom/android/email/activity/UNCSearchResultsList;->access$800(Lcom/android/email/activity/UNCSearchResultsList;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 961
    iget-object v1, p0, Lcom/android/email/activity/UNCSearchResultsList$ControllerResults;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    const/4 v2, 0x0

    #setter for: Lcom/android/email/activity/UNCSearchResultsList;->directFileOpen:Z
    invoke-static {v1, v2}, Lcom/android/email/activity/UNCSearchResultsList;->access$802(Lcom/android/email/activity/UNCSearchResultsList;Z)Z

    .line 962
    iget-object v1, p0, Lcom/android/email/activity/UNCSearchResultsList$ControllerResults;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    invoke-virtual {v1}, Lcom/android/email/activity/UNCSearchResultsList;->finish()V

    goto :goto_0

    .line 966
    :pswitch_1
    iget-object v1, p0, Lcom/android/email/activity/UNCSearchResultsList$ControllerResults;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    invoke-static {v1, p6, p7}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    .line 968
    .local v0, attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    iget-object v1, p0, Lcom/android/email/activity/UNCSearchResultsList$ControllerResults;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    #getter for: Lcom/android/email/activity/UNCSearchResultsList;->mUNCDocSaveHandler:Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;
    invoke-static {v1}, Lcom/android/email/activity/UNCSearchResultsList;->access$1900(Lcom/android/email/activity/UNCSearchResultsList;)Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/email/activity/UNCSearchResultsList$ControllerResults;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    #getter for: Lcom/android/email/activity/UNCSearchResultsList;->mUNCDocSaveHandler:Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;
    invoke-static {v1}, Lcom/android/email/activity/UNCSearchResultsList;->access$1900(Lcom/android/email/activity/UNCSearchResultsList;)Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;->isAlive()Z

    move-result v1

    if-nez v1, :cond_2

    .line 969
    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/UNCSearchResultsList$ControllerResults;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    new-instance v2, Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;

    iget-object v3, p0, Lcom/android/email/activity/UNCSearchResultsList$ControllerResults;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    const-string v4, "UNCDocSaveHandler"

    invoke-direct {v2, v3, v4}, Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;-><init>(Lcom/android/email/activity/UNCSearchResultsList;Ljava/lang/String;)V

    #setter for: Lcom/android/email/activity/UNCSearchResultsList;->mUNCDocSaveHandler:Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;
    invoke-static {v1, v2}, Lcom/android/email/activity/UNCSearchResultsList;->access$1902(Lcom/android/email/activity/UNCSearchResultsList;Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;)Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;

    .line 970
    iget-object v1, p0, Lcom/android/email/activity/UNCSearchResultsList$ControllerResults;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    #getter for: Lcom/android/email/activity/UNCSearchResultsList;->mUNCDocSaveHandler:Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;
    invoke-static {v1}, Lcom/android/email/activity/UNCSearchResultsList;->access$1900(Lcom/android/email/activity/UNCSearchResultsList;)Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;->start()V

    .line 972
    :cond_2
    iget-object v1, p0, Lcom/android/email/activity/UNCSearchResultsList$ControllerResults;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    #getter for: Lcom/android/email/activity/UNCSearchResultsList;->mUNCDocSaveHandler:Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;
    invoke-static {v1}, Lcom/android/email/activity/UNCSearchResultsList;->access$1900(Lcom/android/email/activity/UNCSearchResultsList;)Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;

    move-result-object v1

    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v2, v3}, Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;->finishLoadAttachment(J)V

    goto/16 :goto_0

    .line 975
    .end local v0           #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :pswitch_2
    iget-object v1, p0, Lcom/android/email/activity/UNCSearchResultsList$ControllerResults;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    invoke-static {v1, p4, p5}, Lcom/android/email/activity/MessageCompose;->actionEmailDoc(Landroid/content/Context;J)V

    goto/16 :goto_0

    .line 997
    :cond_3
    iget-object v1, p0, Lcom/android/email/activity/UNCSearchResultsList$ControllerResults;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    invoke-static {p1}, Lcom/android/email/activity/ActivityResourceInterface;->getMessagingExceptionErrorStringResourceId(Lcom/android/emailcommon/mail/MessagingException;)I

    move-result v2

    #calls: Lcom/android/email/activity/UNCSearchResultsList;->runOnUiThread(II)V
    invoke-static {v1, v2, v4}, Lcom/android/email/activity/UNCSearchResultsList;->access$1700(Lcom/android/email/activity/UNCSearchResultsList;II)V

    .line 1001
    iget-object v1, p0, Lcom/android/email/activity/UNCSearchResultsList$ControllerResults;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    invoke-virtual {v1, v4}, Lcom/android/email/activity/UNCSearchResultsList;->dismissDialog(I)V

    goto/16 :goto_0

    .line 949
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x64 -> :sswitch_1
    .end sparse-switch

    .line 957
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
