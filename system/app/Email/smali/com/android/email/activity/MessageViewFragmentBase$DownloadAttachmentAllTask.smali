.class Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;
.super Landroid/os/AsyncTask;
.source "MessageViewFragmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadAttachmentAllTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;",
        "Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;",
        "[",
        "Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;",
        ">;"
    }
.end annotation


# instance fields
.field bActiveNetwork:Z

.field checkDownloadState:Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;

.field numProcessed:I

.field numPublished:I

.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragmentBase;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;Z)V
    .locals 1
    .parameter
    .parameter "bActive"

    .prologue
    const/4 v0, 0x0

    .line 2832
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    .line 2833
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2826
    iput v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->numPublished:I

    iput v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->numProcessed:I

    .line 2828
    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->bActiveNetwork:Z

    .line 2830
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;->NO_ERROR:Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->checkDownloadState:Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;

    .line 2834
    iput-boolean p2, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->bActiveNetwork:Z

    .line 2835
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2823
    check-cast p1, [Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->doInBackground([Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;)[Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;)[Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    .locals 13
    .parameter "params"

    .prologue
    .line 2859
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2860
    const-string v0, "DownloadAttachmentAllTask"

    const-string v1, "DownloadAttachmentAllTask - doInBackground : start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2864
    :cond_0
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->bActiveNetwork:Z

    if-nez v0, :cond_2

    .line 2865
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f08010e

    invoke-static {v0, v1}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/app/Activity;I)V

    .line 2866
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 2867
    const-string v0, "DownloadAttachmentAllTask"

    const-string v1, "DownloadAttachmentAllTask - doInBackground : ActiveNetwork return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2870
    :cond_1
    const/4 v0, 0x0

    .line 2949
    :goto_0
    return-object v0

    .line 2873
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1200(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v12

    .line 2875
    .local v12, nAttachmentCount:I
    const/4 v0, 0x0

    aget-object v0, p1, v0

    new-array v1, v12, [Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    iput-object v1, v0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;->attachments:[Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    .line 2877
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    if-ge v11, v12, :cond_9

    .line 2878
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2879
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 2880
    const-string v0, "DownloadAttachmentAllTask"

    const-string v1, "DownloadAttachmentAllTask - doInBackground : cancel return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2883
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 2886
    :cond_4
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1200(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    .line 2888
    .local v9, attachmentInfo:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-wide v1, v9, Lcom/android/email/AttachmentInfo;->mId:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v8

    .line 2890
    .local v8, attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v0, v9}, Lcom/android/email/activity/MessageViewFragmentBase;->checkDPM_Attachments(Lcom/android/email/AttachmentInfo;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 2891
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->showDownloadITPolicyToast()V

    .line 2877
    :cond_5
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 2892
    :cond_6
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->checkITPolicy_AllowPOPIMAP()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2893
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->showPop3ImapITPolicyToast()V

    goto :goto_2

    .line 2895
    :cond_7
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->checkBeforeViewAttachmentDownloadAll(Lcom/android/email/AttachmentInfo;)Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;
    invoke-static {v0, v9}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1300(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/AttachmentInfo;)Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->checkDownloadState:Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;

    .line 2896
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->checkDownloadState:Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;

    sget-object v1, Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;->NO_ERROR:Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;

    if-eq v0, v1, :cond_8

    .line 2897
    const/4 v0, 0x0

    goto :goto_0

    .line 2900
    :cond_8
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;->attachments:[Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    iget v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->numPublished:I

    aput-object v9, v0, v1

    .line 2902
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    const/4 v1, 0x0

    aput-object v9, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->publishProgress([Ljava/lang/Object;)V

    .line 2904
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->numPublished:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->numPublished:I

    .line 2905
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iget v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->numPublished:I

    iput v1, v0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;->attachmentCount:I

    .line 2907
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->numPublished:I

    iget v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->numProcessed:I

    add-int/lit8 v1, v1, 0x5

    if-le v0, v1, :cond_5

    .line 2909
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 2910
    :catch_0
    move-exception v10

    .line 2911
    .local v10, e:Ljava/lang/InterruptedException;
    invoke-virtual {v10}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 2917
    .end local v8           #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v9           #attachmentInfo:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    .end local v10           #e:Ljava/lang/InterruptedException;
    :cond_9
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2918
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2921
    :cond_a
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1000(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->numPublished:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 2924
    const/4 v11, 0x0

    :goto_3
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->numPublished:I

    if-ge v11, v0, :cond_f

    .line 2925
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2926
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 2927
    const-string v0, "DownloadAttachmentAllTask"

    const-string v1, "DownloadAttachmentAllTask - doInBackground : cancel2 return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2930
    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2932
    :cond_c
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;->attachments:[Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    aget-object v9, v0, v11

    .line 2933
    .restart local v9       #attachmentInfo:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    if-eqz v9, :cond_d

    .line 2934
    iget-boolean v0, v9, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->loaded:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 2935
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->onSaveAttachmentFromSaveAll(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Z
    invoke-static {v0, v9}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1400(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Z

    .line 2924
    :cond_d
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 2937
    :cond_e
    const/4 v0, 0x0

    iput-boolean v0, v9, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->bDownloadCompleted:Z

    .line 2939
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/Controller;

    move-result-object v0

    iget-wide v1, v9, Lcom/android/email/AttachmentInfo;->mId:J

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J
    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1500(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J
    invoke-static {v5}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1600(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v5

    const/16 v7, 0x20

    invoke-virtual/range {v0 .. v7}, Lcom/android/email/Controller;->loadAttachment(JJJI)V

    goto :goto_4

    .line 2945
    .end local v9           #attachmentInfo:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    :cond_f
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_10

    .line 2946
    const-string v0, "DownloadAttachmentAllTask"

    const-string v1, "DownloadAttachmentAllTask - doInBackground : end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2949
    :cond_10
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;->attachments:[Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    goto/16 :goto_0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 3015
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3016
    const-string v0, "DownloadAttachmentAllTask"

    const-string v1, "DownloadAttachmentAllTask - onCancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3018
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAllDownloadIcon:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$900(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3019
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAllDownloadIcon:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$900(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 3021
    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2823
    check-cast p1, [Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->onPostExecute([Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V

    return-void
.end method

.method protected onPostExecute([Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V
    .locals 2
    .parameter "attachments"

    .prologue
    .line 2990
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2991
    const-string v0, "DownloadAttachmentAllTask"

    const-string v1, "DownloadAttachmentAllTask - onPostExecute : start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2994
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAllDownloadIcon:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$900(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2995
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAllDownloadIcon:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$900(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2998
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_5

    .line 2999
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->checkDownloadState:Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;

    sget-object v1, Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;->NO_ERROR:Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;

    if-eq v0, v1, :cond_3

    .line 3000
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->checkDownloadState:Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->showToast_checkBeforeViewAttachmentDownloadAll(Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;)V
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1800(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;)V

    .line 3002
    :cond_3
    const-string v0, "DownloadAttachmentAllTask"

    const-string v1, "DownloadAttachmentAllTask - onPostExecute : return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3011
    :cond_4
    :goto_0
    return-void

    .line 3007
    :cond_5
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 3008
    const-string v0, "DownloadAttachmentAllTask"

    const-string v1, "DownloadAttachmentAllTask - onPostExecute : end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2839
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->bActiveNetwork:Z

    if-eqz v0, :cond_0

    .line 2840
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAllDownloadIcon:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$900(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2842
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1000(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 2843
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1000(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 2846
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAlreadySaveList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1100(Lcom/android/email/activity/MessageViewFragmentBase;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2847
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAlreadySaveList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1100(Lcom/android/email/activity/MessageViewFragmentBase;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2851
    :goto_0
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseNewDownloadProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2852
    invoke-static {v2}, Lcom/android/email/Controller;->SetAttachdownstop(Z)V

    .line 2854
    :cond_1
    return-void

    .line 2849
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAlreadySaveList:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1102(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    goto :goto_0
.end method

.method protected varargs onProgressUpdate([Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V
    .locals 6
    .parameter "downloadall_info"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 2954
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 2955
    const-string v2, "DownloadAttachmentAllTask"

    const-string v3, "DownloadAttachmentAllTask - onProgressUpdate : start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2959
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2960
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 2961
    const-string v2, "DownloadAttachmentAllTask"

    const-string v3, "DownloadAttachmentAllTask - onProgressUpdate : return"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2986
    :cond_1
    :goto_0
    return-void

    .line 2967
    :cond_2
    aget-object v0, p1, v4

    .line 2968
    .local v0, attachmentInfo:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    iget v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->numProcessed:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->numProcessed:I

    .line 2970
    :try_start_0
    iget-boolean v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->loaded:Z

    if-nez v2, :cond_3

    .line 2971
    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->cancelButton:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2973
    iget-object v1, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->progressView:Landroid/widget/ProgressBar;

    .line 2974
    .local v1, bar:Landroid/widget/ProgressBar;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2975
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2978
    .end local v1           #bar:Landroid/widget/ProgressBar;
    :cond_3
    const/4 v0, 0x0

    .line 2979
    aput-object v5, p1, v4

    .line 2982
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 2983
    const-string v2, "DownloadAttachmentAllTask"

    const-string v3, "DownloadAttachmentAllTask - onProgressUpdate : end"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2978
    :catchall_0
    move-exception v2

    const/4 v0, 0x0

    .line 2979
    aput-object v5, p1, v4

    .line 2978
    throw v2
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2823
    check-cast p1, [Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->onProgressUpdate([Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V

    return-void
.end method
