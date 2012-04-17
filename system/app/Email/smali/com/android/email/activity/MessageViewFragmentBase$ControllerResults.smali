.class Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;
.super Lcom/android/email/Controller$Result;
.source "MessageViewFragmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ControllerResults"
.end annotation


# instance fields
.field private mWaitForLoadMessageId:J

.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragmentBase;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;)V
    .locals 0
    .parameter

    .prologue
    .line 7875
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-direct {p0}, Lcom/android/email/Controller$Result;-><init>()V

    return-void
.end method

.method private showAttachmentProgress(JI)V
    .locals 4
    .parameter "attachmentId"
    .parameter "progress"

    .prologue
    const/4 v3, 0x0

    .line 8518
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->findAttachmentInfo(J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    invoke-static {v2, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5400(Lcom/android/email/activity/MessageViewFragmentBase;J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    move-result-object v0

    .line 8519
    .local v0, attachment:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    if-eqz v0, :cond_1

    .line 8520
    iget-object v1, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->progressView:Landroid/widget/ProgressBar;

    .line 8521
    .local v1, bar:Landroid/widget/ProgressBar;
    if-ltz p3, :cond_0

    .line 8524
    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 8525
    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 8527
    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->cancelButton:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8529
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->bStartDownload:Z

    .line 8531
    :cond_0
    invoke-virtual {v1, p3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 8533
    .end local v1           #bar:Landroid/widget/ProgressBar;
    :cond_1
    return-void
.end method


# virtual methods
.method public loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJI)V
    .locals 24
    .parameter "result"
    .parameter "accountId"
    .parameter "messageId"
    .parameter "attachmentId"
    .parameter "progress"

    .prologue
    .line 8029
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J
    invoke-static {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1500(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v4

    cmp-long v4, p4, v4

    if-nez v4, :cond_0

    .line 8030
    if-nez p1, :cond_d

    .line 8031
    move-object/from16 v0, p0

    move-wide/from16 v1, p6

    move/from16 v3, p8

    invoke-direct {v0, v1, v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->showAttachmentProgress(JI)V

    .line 8032
    sparse-switch p8, :sswitch_data_0

    .line 8279
    :cond_0
    :goto_0
    return-void

    .line 8034
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-wide/from16 v0, p6

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->updateAttachmentThumbnail(J)V
    invoke-static {v4, v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7600(Lcom/android/email/activity/MessageViewFragmentBase;J)V

    .line 8035
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mDownloadSmimeAttachment:Z
    invoke-static {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7700(Lcom/android/email/activity/MessageViewFragmentBase;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 8036
    const-string v4, "SMIME"

    const-string v5, "Smime attachment downloaded, starting decrypting"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8039
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v4, v4, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p6

    invoke-static {v4, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v12

    .line 8042
    .local v12, attmt:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 8043
    .local v13, cv:Landroid/content/ContentValues;
    const/16 v15, 0x22

    .line 8045
    .local v15, flags:I
    const-string v4, "flags"

    iget v5, v12, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v5, v5, -0x23

    iput v5, v12, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v13, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 8047
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v4, v4, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v4, v13}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 8048
    new-instance v4, Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-wide/from16 v0, p6

    invoke-direct {v4, v5, v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;J)V

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {v4, v5}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 8050
    .end local v12           #attmt:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v13           #cv:Landroid/content/ContentValues;
    .end local v15           #flags:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v4, v4, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p6

    invoke-static {v4, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v11

    .line 8052
    .local v11, attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->IsEAS()Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v11, :cond_4

    .line 8053
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v4, v4, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v5}, Lcom/android/email/activity/MessageViewFragmentBase;->access$400(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v5

    iget-wide v5, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v4, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v21

    .line 8055
    .local v21, mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 8057
    .local v22, protocolVer:Ljava/lang/String;
    iget-object v4, v11, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 8058
    if-eqz v22, :cond_2

    const-string v4, "2.5"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 8061
    iget v4, v11, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mIsInline:I

    if-nez v4, :cond_2

    .line 8062
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-wide/from16 v0, p6

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->doFinishLoadAttachment(J)V
    invoke-static {v4, v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7800(Lcom/android/email/activity/MessageViewFragmentBase;J)V

    goto/16 :goto_0

    .line 8067
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v4, v4, Lcom/android/email/activity/MessageViewFragmentBase;->policySet:Lcom/android/emailcommon/service/PolicySet;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v4, v4, Lcom/android/email/activity/MessageViewFragmentBase;->policySet:Lcom/android/emailcommon/service/PolicySet;

    iget-boolean v4, v4, Lcom/android/emailcommon/service/PolicySet;->mAllowHTMLEmail:Z

    if-eqz v4, :cond_0

    .line 8068
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v4, v4, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p6

    invoke-static {v4, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v12

    .line 8071
    .restart local v12       #attmt:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 8072
    .restart local v13       #cv:Landroid/content/ContentValues;
    const/16 v15, 0x22

    .line 8074
    .restart local v15       #flags:I
    const-string v4, "flags"

    iget v5, v12, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v5, v5, -0x23

    iput v5, v12, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v13, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 8076
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v4, v4, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v4, v13}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 8077
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-wide/from16 v0, p6

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->reloadUiFromBodyFromAttachmentCB(J)V
    invoke-static {v4, v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7900(Lcom/android/email/activity/MessageViewFragmentBase;J)V

    goto/16 :goto_0

    .line 8081
    .end local v12           #attmt:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v13           #cv:Landroid/content/ContentValues;
    .end local v15           #flags:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-wide/from16 v0, p6

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->doFinishLoadAttachment(J)V
    invoke-static {v4, v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7800(Lcom/android/email/activity/MessageViewFragmentBase;J)V

    goto/16 :goto_0

    .line 8086
    .end local v21           #mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v22           #protocolVer:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-wide/from16 v0, p6

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->findAttachmentInfo(J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    invoke-static {v4, v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5400(Lcom/android/email/activity/MessageViewFragmentBase;J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    move-result-object v19

    .line 8087
    .local v19, info:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    if-eqz v19, :cond_5

    move-object/from16 v0, v19

    iget-boolean v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->bDownloadCompleted:Z

    if-nez v4, :cond_5

    .line 8088
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-wide/from16 v0, p6

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->doFinishLoadAttachment(J)V
    invoke-static {v4, v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7800(Lcom/android/email/activity/MessageViewFragmentBase;J)V

    .line 8089
    const/4 v4, 0x1

    move-object/from16 v0, v19

    iput-boolean v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->bDownloadCompleted:Z

    goto/16 :goto_0

    .line 8090
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageAttachmentId:[J
    invoke-static {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5300(Lcom/android/email/activity/MessageViewFragmentBase;)[J

    move-result-object v4

    if-eqz v4, :cond_0

    .line 8091
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageAttachmentId:[J
    invoke-static {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5300(Lcom/android/email/activity/MessageViewFragmentBase;)[J

    move-result-object v10

    .local v10, arr$:[J
    array-length v0, v10

    move/from16 v20, v0

    .local v20, len$:I
    const/16 v16, 0x0

    .local v16, i$:I
    :goto_1
    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    aget-wide v17, v10, v16

    .line 8092
    .local v17, id:J
    cmp-long v4, v17, p6

    if-nez v4, :cond_6

    .line 8093
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5208(Lcom/android/email/activity/MessageViewFragmentBase;)I

    .line 8091
    :cond_6
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 8101
    .end local v10           #arr$:[J
    .end local v11           #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v16           #i$:I
    .end local v17           #id:J
    .end local v19           #info:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    .end local v20           #len$:I
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->IsEAS()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 8102
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    new-instance v5, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v7, 0x0

    move-wide/from16 v0, p4

    invoke-direct {v5, v6, v0, v1, v7}, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;JZ)V

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadBodyTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;
    invoke-static {v4, v5}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3102(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;)Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;

    .line 8103
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadBodyTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;
    invoke-static {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3100(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {v4, v5}, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 8112
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5208(Lcom/android/email/activity/MessageViewFragmentBase;)I

    .line 8113
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageDownloadCnt:I
    invoke-static {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5200(Lcom/android/email/activity/MessageViewFragmentBase;)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageCnt:I
    invoke-static {v5}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5100(Lcom/android/email/activity/MessageViewFragmentBase;)I

    move-result v5

    if-ne v4, v5, :cond_8

    .line 8114
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    new-instance v5, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v7, 0x0

    move-wide/from16 v0, p4

    invoke-direct {v5, v6, v0, v1, v7}, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;JZ)V

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadBodyTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;
    invoke-static {v4, v5}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3102(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;)Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;

    .line 8115
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadBodyTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;
    invoke-static {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3100(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {v4, v5}, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 8117
    :cond_8
    const-string v4, "loadAttachmentCallback"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadAttachmentCallback - case 200 : attachmentId["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p6

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "], mBodyImageDownloadCnt["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageDownloadCnt:I
    invoke-static {v6}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5200(Lcom/android/email/activity/MessageViewFragmentBase;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "], mBodyImageCnt["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageCnt:I
    invoke-static {v6}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5100(Lcom/android/email/activity/MessageViewFragmentBase;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 8128
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;
    invoke-static {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v23

    new-instance v4, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults$1;

    move-object/from16 v5, p0

    move-wide/from16 v6, p6

    move-wide/from16 v8, p4

    invoke-direct/range {v4 .. v9}, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults$1;-><init>(Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;JJ)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 8146
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mDownloadSmimeAttachment:Z
    invoke-static {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7700(Lcom/android/email/activity/MessageViewFragmentBase;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 8147
    const-string v4, "SMIME"

    const-string v5, "Smime attachment downloaded, starting decrypting"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8150
    new-instance v4, Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-wide/from16 v0, p6

    invoke-direct {v4, v5, v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;J)V

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {v4, v5}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 8169
    :cond_9
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1000(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 8170
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1000(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    .line 8172
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1000(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1200(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-lt v4, v5, :cond_0

    .line 8173
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1000(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 8175
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v5, 0x0

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase;->downloadAttachmentAllTaskTaskReportInfo:Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;
    invoke-static {v4, v5}, Lcom/android/email/activity/MessageViewFragmentBase;->access$802(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;)Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;

    goto/16 :goto_0

    .line 8152
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v4, v4, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p6

    invoke-static {v4, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v11

    .line 8154
    .restart local v11       #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->IsEAS()Z

    move-result v4

    if-eqz v4, :cond_c

    if-eqz v11, :cond_c

    .line 8155
    iget-object v4, v11, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v4, :cond_b

    .line 8156
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-wide/from16 v0, p6

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->reloadUiFromBodyFromAttachmentCB(J)V
    invoke-static {v4, v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7900(Lcom/android/email/activity/MessageViewFragmentBase;J)V

    goto/16 :goto_0

    .line 8158
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v5, 0x1

    move-wide/from16 v0, p6

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->doFinishLoadAttachment(JZ)V
    invoke-static {v4, v0, v1, v5}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8000(Lcom/android/email/activity/MessageViewFragmentBase;JZ)V

    goto/16 :goto_0

    .line 8163
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-wide/from16 v0, p6

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->findAttachmentInfo(J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    invoke-static {v4, v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5400(Lcom/android/email/activity/MessageViewFragmentBase;J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    move-result-object v19

    .line 8164
    .restart local v19       #info:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    if-eqz v19, :cond_9

    move-object/from16 v0, v19

    iget-boolean v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->bDownloadCompleted:Z

    if-nez v4, :cond_9

    .line 8165
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v5, 0x1

    move-wide/from16 v0, p6

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->doFinishLoadAttachment(JZ)V
    invoke-static {v4, v0, v1, v5}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8000(Lcom/android/email/activity/MessageViewFragmentBase;JZ)V

    goto/16 :goto_2

    .line 8192
    .end local v11           #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v19           #info:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_e

    .line 8193
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-wide/from16 v0, p6

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->findAttachmentInfo(J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    invoke-static {v4, v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5400(Lcom/android/email/activity/MessageViewFragmentBase;J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    move-result-object v11

    .line 8194
    .local v11, attachment:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    if-eqz v11, :cond_0

    .line 8199
    iget-object v4, v11, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->cancelButton:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8202
    iget-object v4, v11, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->progressView:Landroid/widget/ProgressBar;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 8204
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->showDownloadITPolicyToast()V

    goto/16 :goto_0

    .line 8211
    .end local v11           #attachment:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v4

    const/16 v5, 0x63

    if-ne v4, v5, :cond_f

    .line 8212
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-wide/from16 v0, p6

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->findAttachmentInfo(J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    invoke-static {v4, v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5400(Lcom/android/email/activity/MessageViewFragmentBase;J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    move-result-object v11

    .line 8214
    .restart local v11       #attachment:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    if-eqz v11, :cond_0

    .line 8217
    iget-object v4, v11, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->cancelButton:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8218
    iget-object v4, v11, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->progressView:Landroid/widget/ProgressBar;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 8220
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v4, v4, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v5, 0x7f0802ff

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, v11, Lcom/android/email/AttachmentInfo;->mName:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 8223
    .local v14, error:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v14, v5}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 8225
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mCallback:Lcom/android/email/activity/MessageViewFragmentBase$Callback;
    invoke-static {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2200(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$Callback;

    move-result-object v4

    invoke-interface {v4, v14}, Lcom/android/email/activity/MessageViewFragmentBase$Callback;->onLoadMessageError(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 8227
    .end local v11           #attachment:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    .end local v14           #error:Ljava/lang/String;
    :cond_f
    const-string v4, "ATTACHMENT_DOWNLOAD_CANCEL"

    invoke-virtual/range {p1 .. p1}, Lcom/android/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 8228
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-wide/from16 v0, p6

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->findAttachmentInfo(J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    invoke-static {v4, v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5400(Lcom/android/email/activity/MessageViewFragmentBase;J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    move-result-object v11

    .line 8230
    .restart local v11       #attachment:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    if-eqz v11, :cond_0

    .line 8233
    iget-object v4, v11, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->cancelButton:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8234
    iget-object v4, v11, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->progressView:Landroid/widget/ProgressBar;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_0

    .line 8239
    .end local v11           #attachment:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-wide/from16 v0, p6

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->findAttachmentInfo(J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    invoke-static {v4, v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5400(Lcom/android/email/activity/MessageViewFragmentBase;J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    move-result-object v11

    .line 8240
    .restart local v11       #attachment:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    if-nez v11, :cond_12

    .line 8244
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageAttachmentId:[J
    invoke-static {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5300(Lcom/android/email/activity/MessageViewFragmentBase;)[J

    move-result-object v4

    if-eqz v4, :cond_0

    .line 8245
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageAttachmentId:[J
    invoke-static {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5300(Lcom/android/email/activity/MessageViewFragmentBase;)[J

    move-result-object v10

    .restart local v10       #arr$:[J
    array-length v0, v10

    move/from16 v20, v0

    .restart local v20       #len$:I
    const/16 v16, 0x0

    .restart local v16       #i$:I
    :goto_3
    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    aget-wide v17, v10, v16

    .line 8246
    .restart local v17       #id:J
    cmp-long v4, v17, p6

    if-nez v4, :cond_11

    .line 8247
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5208(Lcom/android/email/activity/MessageViewFragmentBase;)I

    .line 8245
    :cond_11
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 8253
    .end local v10           #arr$:[J
    .end local v16           #i$:I
    .end local v17           #id:J
    .end local v20           #len$:I
    :cond_12
    iget-object v4, v11, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->cancelButton:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8256
    iget-object v4, v11, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->progressView:Landroid/widget/ProgressBar;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 8258
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1000(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v4

    if-eqz v4, :cond_13

    .line 8259
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1000(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    .line 8261
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1000(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1200(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-lt v4, v5, :cond_13

    .line 8262
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1000(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 8264
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v5, 0x0

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase;->downloadAttachmentAllTaskTaskReportInfo:Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;
    invoke-static {v4, v5}, Lcom/android/email/activity/MessageViewFragmentBase;->access$802(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;)Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;

    .line 8269
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lcom/android/emailcommon/mail/MessagingException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    instance-of v4, v4, Ljava/io/IOException;

    if-eqz v4, :cond_14

    .line 8270
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v4, v4, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v5, 0x7f0800b4

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 8276
    .restart local v14       #error:Ljava/lang/String;
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mCallback:Lcom/android/email/activity/MessageViewFragmentBase$Callback;
    invoke-static {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2200(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$Callback;

    move-result-object v4

    invoke-interface {v4, v14}, Lcom/android/email/activity/MessageViewFragmentBase$Callback;->onLoadMessageError(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 8272
    .end local v14           #error:Ljava/lang/String;
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v4, v4, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v5, 0x7f0800bd

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, v11, Lcom/android/email/AttachmentInfo;->mName:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .restart local v14       #error:Ljava/lang/String;
    goto :goto_4

    .line 8032
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
        0x12c -> :sswitch_2
        0x190 -> :sswitch_3
    .end sparse-switch
.end method

.method public loadMessageForViewCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V
    .locals 7
    .parameter "result"
    .parameter "messageId"
    .parameter "progress"

    .prologue
    const/4 v6, 0x1

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    .line 7940
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1500(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mWaitForLoadMessageId:J
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7400(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_2

    .line 7944
    :cond_0
    if-nez p1, :cond_1

    .line 7945
    const/4 p1, 0x0

    .line 8019
    :cond_1
    :goto_0
    return-void

    .line 7949
    :cond_2
    if-nez p1, :cond_6

    .line 7950
    sparse-switch p4, :sswitch_data_0

    goto :goto_0

    .line 7960
    :sswitch_0
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J
    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1600(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MessageViewForSeven;->isPremiumUser(J)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewForSeven;->isSecondLoading()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7963
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    invoke-virtual {v0, v6}, Lcom/android/email/activity/MessageViewForSeven;->setBusyIndicator(Z)V

    goto :goto_0

    .line 7966
    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->progress(Z)V

    goto :goto_0

    .line 7974
    :sswitch_1
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J
    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1600(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MessageViewForSeven;->isPremiumUser(J)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7976
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    invoke-virtual {v0, v5}, Lcom/android/email/activity/MessageViewForSeven;->setBusyIndicator(Z)V

    .line 7979
    :cond_4
    iput-wide v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->mWaitForLoadMessageId:J

    .line 7980
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->progress(Z)V

    .line 7983
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7300(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 7984
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7300(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    move-result-object v0

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->cancelTask(Landroid/os/AsyncTask;)V
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7500(Landroid/os/AsyncTask;)V

    .line 7985
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v1, 0x0

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7302(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;)Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    .line 7987
    :cond_5
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    new-instance v1, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J
    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1500(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;JZ)V

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7302(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;)Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    .line 7988
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7300(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 7997
    :cond_6
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_7

    .line 7998
    iput-wide v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->mWaitForLoadMessageId:J

    .line 7999
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->progress(Z)V

    .line 8000
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->securityRequiredError()V

    .line 8002
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v0

    invoke-static {}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2600()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->loadData(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 8006
    :cond_7
    iput-wide v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->mWaitForLoadMessageId:J

    .line 8007
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->progress(Z)V

    .line 8008
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->networkError()V

    .line 8010
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v0

    invoke-static {}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2600()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->loadData(Ljava/lang/String;)V

    .line 8014
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J
    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1600(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MessageViewForSeven;->isPremiumUser(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8015
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    invoke-virtual {v0, v5}, Lcom/android/email/activity/MessageViewForSeven;->setBusyIndicator(Z)V

    goto/16 :goto_0

    .line 7950
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x64 -> :sswitch_1
    .end sparse-switch
.end method

.method public loadMessageForViewCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V
    .locals 7
    .parameter "result"
    .parameter "accountId"
    .parameter "messageId"
    .parameter "progress"

    .prologue
    const-wide/16 v5, -0x1

    const/4 v4, 0x0

    .line 7885
    iget-wide v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->mWaitForLoadMessageId:J

    cmp-long v1, p4, v1

    if-eqz v1, :cond_0

    .line 7926
    :goto_0
    return-void

    .line 7890
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v1

    const/16 v2, 0x6f

    if-ne v1, v2, :cond_2

    .line 7891
    :cond_1
    sparse-switch p6, :sswitch_data_0

    goto :goto_0

    .line 7893
    :sswitch_0
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mCallback:Lcom/android/email/activity/MessageViewFragmentBase$Callback;
    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2200(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$Callback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/email/activity/MessageViewFragmentBase$Callback;->onLoadMessageStarted()V

    .line 7895
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v2, 0x1

    invoke-virtual {v1, v4, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->showContent(ZZ)V

    goto :goto_0

    .line 7898
    :sswitch_1
    iput-wide v5, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->mWaitForLoadMessageId:J

    .line 7899
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mCallback:Lcom/android/email/activity/MessageViewFragmentBase$Callback;
    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2200(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$Callback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/email/activity/MessageViewFragmentBase$Callback;->onLoadMessageFinished()V

    .line 7902
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->cancelAllTasks()V
    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7200(Lcom/android/email/activity/MessageViewFragmentBase;)V

    .line 7903
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    new-instance v2, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-direct {v2, v3, v4}, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Z)V

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;
    invoke-static {v1, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7302(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;)Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    .line 7904
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;
    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7300(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 7913
    :cond_2
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_3

    .line 7914
    iput-wide v5, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->mWaitForLoadMessageId:J

    .line 7915
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->showPop3ImapITPolicyToast()V

    .line 7916
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->resetView()V

    goto :goto_0

    .line 7921
    :cond_3
    iput-wide v5, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->mWaitForLoadMessageId:J

    .line 7922
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v1, v1, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v2, 0x7f0800b4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 7923
    .local v0, error:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mCallback:Lcom/android/email/activity/MessageViewFragmentBase$Callback;
    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2200(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$Callback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/email/activity/MessageViewFragmentBase$Callback;->onLoadMessageError(Ljava/lang/String;)V

    .line 7924
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->resetView()V

    goto :goto_0

    .line 7891
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x64 -> :sswitch_1
    .end sparse-switch
.end method

.method public loadMoreCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V
    .locals 19
    .parameter "result"
    .parameter "messageId"
    .parameter "progress"

    .prologue
    .line 8282
    const-string v2, "SMIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadMoreCallback, start progress "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " messageId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8284
    if-nez p1, :cond_8

    .line 8285
    sparse-switch p4, :sswitch_data_0

    .line 8515
    :cond_0
    :goto_0
    return-void

    .line 8288
    :sswitch_0
    sget v2, Lcom/android/email/activity/MessageViewFragment;->sRemoveIrmProtectionFlag:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 8289
    sget-boolean v2, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v2, :cond_1

    .line 8290
    const-string v2, "IRM"

    const-string v3, "messageviewfragmentBase: irm remove start"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8292
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;
    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->startIrmRemoval()V

    goto :goto_0

    .line 8295
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;
    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->startLoadMore()V

    .line 8296
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;
    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->progress(Z)V

    goto :goto_0

    .line 8302
    :sswitch_1
    sget v2, Lcom/android/email/activity/MessageViewFragment;->sRemoveIrmProtectionFlag:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 8303
    const/4 v2, 0x0

    sput v2, Lcom/android/email/activity/MessageViewFragment;->sRemoveIrmProtectionFlag:I

    .line 8304
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 8305
    .local v9, cv:Landroid/content/ContentValues;
    const-string v2, "IRMRemovalFlag"

    sget v3, Lcom/android/email/activity/MessageViewFragment;->sRemoveIrmProtectionFlag:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 8307
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J
    invoke-static {v5}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1500(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v9, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 8309
    sget-boolean v2, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v2, :cond_3

    .line 8310
    const-string v2, "IRM"

    const-string v3, "messageviewfragmentBase: irm remove done"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8312
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;
    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->finishIrmRemoval()V

    .line 8313
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;
    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->progress(Z)V

    .line 8314
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 8315
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 8316
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->cancelAllTasks()V
    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7200(Lcom/android/email/activity/MessageViewFragmentBase;)V

    .line 8317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v18, v0

    new-instance v2, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J
    invoke-static {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1500(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;JZZ)V

    move-object/from16 v0, v18

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;
    invoke-static {v0, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7302(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;)Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    .line 8318
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;
    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7300(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 8324
    .end local v9           #cv:Landroid/content/ContentValues;
    :cond_5
    :try_start_0
    const-string v2, "Email"

    const-string v3, "Inside loadMoreCallback() : case 100"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8325
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;
    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->finishLoadMore()V

    .line 8326
    const-wide/16 v2, -0x1

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->mWaitForLoadMessageId:J

    .line 8327
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;
    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->progress(Z)V

    .line 8328
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->cancelAllTasks()V
    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7200(Lcom/android/email/activity/MessageViewFragmentBase;)V

    .line 8330
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v11

    .line 8331
    .local v11, fm:Landroid/app/FragmentManager;
    const-string v2, "LoadMoreDialog"

    invoke-virtual {v11, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v12

    .line 8332
    .local v12, lmDialog:Landroid/app/Fragment;
    if-eqz v12, :cond_6

    .line 8333
    const-string v2, "Email"

    const-string v3, " case 100: LoadMoreDialog!=null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8334
    invoke-virtual {v11}, Landroid/app/FragmentManager;->popBackStack()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8343
    .end local v11           #fm:Landroid/app/FragmentManager;
    .end local v12           #lmDialog:Landroid/app/Fragment;
    :cond_6
    :goto_1
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 8344
    .local v15, msg:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v2, v2, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    .line 8345
    .local v17, resolver:Landroid/content/ContentResolver;
    const-string v2, "isMimeLoaded"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 8346
    const-string v2, "Message.ISMIMELOADED = "

    const-string v3, "isMimeLoaded"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8350
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v15, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 8355
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v2, v2, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J
    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1500(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v14

    .line 8357
    .local v14, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v14, :cond_0

    .line 8360
    iget-boolean v2, v14, Lcom/android/emailcommon/provider/EmailContent$Message;->mSigned:Z

    if-eqz v2, :cond_7

    iget-boolean v2, v14, Lcom/android/emailcommon/provider/EmailContent$Message;->mProcessed:Z

    if-nez v2, :cond_7

    .line 8372
    new-instance v2, Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-direct {v2, v3, v14}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 8336
    .end local v14           #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v15           #msg:Landroid/content/ContentValues;
    .end local v17           #resolver:Landroid/content/ContentResolver;
    :catch_0
    move-exception v10

    .line 8337
    .local v10, e:Ljava/lang/IllegalStateException;
    const-string v2, "MessageViewFragmentBase >>"

    const-string v3, "Caught exception in loadmore case100"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 8374
    .end local v10           #e:Ljava/lang/IllegalStateException;
    .restart local v14       #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    .restart local v15       #msg:Landroid/content/ContentValues;
    .restart local v17       #resolver:Landroid/content/ContentResolver;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v18, v0

    new-instance v2, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J
    invoke-static {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1500(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;JZZ)V

    move-object/from16 v0, v18

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;
    invoke-static {v0, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7302(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;)Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    .line 8375
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;
    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7300(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 8388
    .end local v14           #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v15           #msg:Landroid/content/ContentValues;
    .end local v17           #resolver:Landroid/content/ContentResolver;
    :cond_8
    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/android/emailcommon/utility/DeviceAccessException;

    if-eqz v2, :cond_a

    .line 8389
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;
    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->DeviceAccessError(I)V

    .line 8390
    const-wide/16 v2, -0x1

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->mWaitForLoadMessageId:J

    .line 8391
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;
    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->progress(Z)V

    .line 8392
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 8393
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 8394
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->cancelAllTasks()V
    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7200(Lcom/android/email/activity/MessageViewFragmentBase;)V

    .line 8395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v18, v0

    new-instance v2, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J
    invoke-static {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1500(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;JZZ)V

    move-object/from16 v0, v18

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;
    invoke-static {v0, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7302(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;)Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    .line 8396
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;
    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7300(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 8399
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_b

    invoke-virtual/range {p1 .. p1}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v2

    const/16 v3, 0x5d

    if-ne v2, v3, :cond_e

    .line 8402
    :cond_b
    const-wide/16 v2, -0x1

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->mWaitForLoadMessageId:J

    .line 8403
    sget-boolean v2, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v2, :cond_c

    .line 8404
    const-string v2, "IRM"

    const-string v3, "messageviewfragment: network error"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8406
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;
    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->networkError()V

    .line 8407
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;
    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->progress(Z)V

    .line 8408
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 8409
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 8410
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->cancelAllTasks()V
    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7200(Lcom/android/email/activity/MessageViewFragmentBase;)V

    .line 8411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v18, v0

    new-instance v2, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J
    invoke-static {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1500(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;JZZ)V

    move-object/from16 v0, v18

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;
    invoke-static {v0, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7302(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;)Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    .line 8412
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;
    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7300(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 8413
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v2

    const v3, 0x50006

    if-ne v2, v3, :cond_11

    .line 8415
    const-wide/16 v2, -0x1

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->mWaitForLoadMessageId:J

    .line 8416
    sget-boolean v2, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v2, :cond_f

    .line 8417
    const-string v2, "IRM"

    const-string v3, "messageviewfragmentBase: irm remove error"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8419
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;
    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->errorIrmRemoval()V

    .line 8420
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;
    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->progress(Z)V

    .line 8421
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 8422
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 8423
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->cancelAllTasks()V
    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7200(Lcom/android/email/activity/MessageViewFragmentBase;)V

    .line 8424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v18, v0

    new-instance v2, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J
    invoke-static {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1500(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;JZZ)V

    move-object/from16 v0, v18

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;
    invoke-static {v0, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7302(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;)Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    .line 8425
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;
    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7300(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 8434
    :cond_11
    const-wide/16 v2, -0x1

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->mWaitForLoadMessageId:J

    .line 8435
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;
    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->progress(Z)V

    .line 8437
    invoke-virtual/range {p1 .. p1}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 8478
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->cancelAllTasks()V
    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7200(Lcom/android/email/activity/MessageViewFragmentBase;)V

    .line 8481
    const/4 v13, 0x0

    .line 8482
    .local v13, mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$400(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 8483
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v2, v2, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$400(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v3

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v13

    .line 8487
    :goto_2
    const/16 v16, 0x0

    .line 8488
    .local v16, protocolVer:Ljava/lang/String;
    if-eqz v13, :cond_15

    .line 8489
    iget-object v0, v13, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 8494
    :goto_3
    if-eqz v16, :cond_12

    const-string v2, "2.5"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 8495
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 8496
    .restart local v15       #msg:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v2, v2, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    .line 8497
    .restart local v17       #resolver:Landroid/content/ContentResolver;
    const-string v2, "isMimeLoaded"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 8500
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v15, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 8507
    .end local v15           #msg:Landroid/content/ContentValues;
    .end local v17           #resolver:Landroid/content/ContentResolver;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v18, v0

    new-instance v2, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J
    invoke-static {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1500(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;JZZ)V

    move-object/from16 v0, v18

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;
    invoke-static {v0, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7302(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;)Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    .line 8508
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;
    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7300(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 8440
    .end local v13           #mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v16           #protocolVer:Ljava/lang/String;
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 8441
    .local v8, code:I
    const/high16 v2, 0x5

    if-eq v8, v2, :cond_13

    const/high16 v2, 0x7

    if-eq v8, v2, :cond_13

    const/high16 v2, 0x10

    if-eq v8, v2, :cond_13

    const/high16 v2, 0x4

    if-eq v8, v2, :cond_13

    const/high16 v2, 0x3

    if-ne v8, v2, :cond_0

    .line 8453
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;
    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->errorLoadMore(I)V

    .line 8456
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->cancelAllTasks()V
    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7200(Lcom/android/email/activity/MessageViewFragmentBase;)V

    .line 8457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v18, v0

    new-instance v2, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J
    invoke-static {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1500(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v2 .. v7}, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;JZZ)V

    move-object/from16 v0, v18

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;
    invoke-static {v0, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7302(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;)Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    .line 8458
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;
    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7300(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 8485
    .end local v8           #code:I
    .restart local v13       #mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    :cond_14
    const-string v2, "MessageViewFragmentBase >>"

    const-string v3, "loadMoreCallback : mMessage is null. Do nothing"

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 8491
    .restart local v16       #protocolVer:Ljava/lang/String;
    :cond_15
    const-string v2, "MessageViewFragmentBase >>"

    const-string v3, "loadMoreCallback : Can\'t retrieve account Info. Do nothing"

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 8285
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x64 -> :sswitch_1
    .end sparse-switch

    .line 8437
    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_0
    .end packed-switch
.end method

.method public refreshIRMTemplatesCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "progress"

    .prologue
    .line 7932
    return-void
.end method

.method public setWaitForLoadMessageId(J)V
    .locals 0
    .parameter "messageId"

    .prologue
    .line 7879
    iput-wide p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->mWaitForLoadMessageId:J

    .line 7880
    return-void
.end method

.method public updateMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJII)V
    .locals 1
    .parameter "result"
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "progress"
    .parameter "numNewMessages"

    .prologue
    .line 8540
    const/16 v0, -0x20

    if-ne p6, v0, :cond_0

    .line 8541
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->networkError()V

    .line 8543
    :cond_0
    return-void
.end method
