.class Lcom/android/email/activity/MessageCompose$LoadMessageTask;
.super Landroid/os/AsyncTask;
.source "MessageCompose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageCompose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadMessageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final mMessageId:J

.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageCompose;J)V
    .locals 0
    .parameter
    .parameter "messageId"

    .prologue
    .line 2895
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2896
    iput-wide p2, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->mMessageId:J

    .line 2897
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2892
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->doInBackground([Ljava/lang/Void;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[Ljava/lang/Object;
    .locals 13
    .parameter "params"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 2901
    invoke-static {}, Lcom/android/email/activity/MessageCompose;->access$4000()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 2902
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/android/email/activity/MessageCompose;->access$4100()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_0

    .line 2904
    :try_start_1
    invoke-static {}, Lcom/android/email/activity/MessageCompose;->access$4000()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2905
    :catch_0
    move-exception v6

    goto :goto_0

    .line 2909
    :cond_0
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2910
    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-wide v7, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->mMessageId:J

    invoke-static {v6, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v5

    .line 2911
    .local v5, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-nez v5, :cond_1

    .line 2912
    new-array v6, v12, [Ljava/lang/Object;

    aput-object v9, v6, v10

    aput-object v9, v6, v11

    .line 2946
    :goto_1
    return-object v6

    .line 2909
    .end local v5           #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    :catchall_0
    move-exception v6

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v6

    .line 2916
    .restart local v5       #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_1
    iget-wide v1, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    .line 2917
    .local v1, accountId:J
    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v6, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 2922
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    :try_start_4
    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-wide v7, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v6, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodyHtmlWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    .line 2923
    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-wide v7, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v6, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodyTextWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    .line 2924
    const-string v6, "com.android.email.intent.action.EDIT_DRAFT"

    iget-object v7, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/email/activity/MessageCompose;->access$1600(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 2926
    .local v4, isEditDraft:Z
    if-eqz v4, :cond_2

    .line 2927
    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-wide v7, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v6, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreReplyHtmlWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    .line 2929
    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-wide v7, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v6, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreReplyTextWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mTextReply:Ljava/lang/String;

    .line 2931
    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-wide v7, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v6, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreIntroTextWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mIntroText:Ljava/lang/String;

    .line 2933
    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-wide v7, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v6, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodySourceKey(Landroid/content/Context;J)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mSourceKey:J
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    .line 2946
    :goto_2
    new-array v6, v12, [Ljava/lang/Object;

    aput-object v5, v6, v10

    aput-object v0, v6, v11

    goto :goto_1

    .line 2936
    :cond_2
    const/4 v6, 0x0

    :try_start_5
    iput-object v6, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    .line 2937
    const/4 v6, 0x0

    iput-object v6, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mTextReply:Ljava/lang/String;

    .line 2938
    const/4 v6, 0x0

    iput-object v6, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mIntroText:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 2940
    .end local v4           #isEditDraft:Z
    :catch_1
    move-exception v3

    .line 2941
    .local v3, e:Ljava/lang/RuntimeException;
    const-string v6, "Email"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception while loading message body: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2942
    new-array v6, v12, [Ljava/lang/Object;

    aput-object v9, v6, v10

    aput-object v9, v6, v11

    goto/16 :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2892
    check-cast p1, [Ljava/lang/Object;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->onPostExecute([Ljava/lang/Object;)V

    return-void
.end method

.method protected onPostExecute([Ljava/lang/Object;)V
    .locals 17
    .parameter "messageAndAccount"

    .prologue
    .line 2953
    if-nez p1, :cond_1

    .line 3384
    :cond_0
    :goto_0
    return-void

    .line 2957
    :cond_1
    const/4 v11, 0x0

    aget-object v9, p1, v11

    check-cast v9, Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 2958
    .local v9, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    const/4 v11, 0x1

    aget-object v1, p1, v11

    check-cast v1, Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 2959
    .local v1, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-nez v9, :cond_2

    if-nez v1, :cond_2

    .line 2963
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    const v12, 0x7f080085

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V

    .line 2965
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v11}, Lcom/android/email/activity/MessageCompose;->finish()V

    goto :goto_0

    .line 2972
    :cond_2
    const-string v11, "com.android.email.intent.action.EDIT_DRAFT"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/email/activity/MessageCompose;->access$1600(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    const-string v11, "com.android.email.intent.action.FORWARD"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/email/activity/MessageCompose;->access$1600(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    const-string v11, "com.android.email.intent.action.EMAIL_DOC"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/email/activity/MessageCompose;->access$1600(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1b

    .line 2974
    :cond_3
    const-string v11, "com.android.email.intent.action.EDIT_DRAFT"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/email/activity/MessageCompose;->access$1600(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 2975
    .local v5, draft:Z
    if-eqz v5, :cond_15

    .line 2976
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #setter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v11, v9}, Lcom/android/email/activity/MessageCompose;->access$1702(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 2977
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v11

    iget v11, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/lit16 v11, v11, 0x400

    if-eqz v11, :cond_8

    const/4 v11, 0x1

    :goto_1
    invoke-virtual {v12, v11}, Lcom/android/email/activity/MessageCompose;->SetOriginMsgEdited(Z)Z

    .line 2978
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v12}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v12

    iget v12, v12, Lcom/android/emailcommon/provider/EmailContent$Message;->mImportance:I

    #setter for: Lcom/android/email/activity/MessageCompose;->mPriority:I
    invoke-static {v11, v12}, Lcom/android/email/activity/MessageCompose;->access$4202(Lcom/android/email/activity/MessageCompose;I)I

    .line 2980
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v11

    iget v11, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/lit16 v11, v11, 0x800

    if-eqz v11, :cond_9

    const/4 v11, 0x1

    :goto_2
    #setter for: Lcom/android/email/activity/MessageCompose;->mIsReadChecked:Z
    invoke-static {v12, v11}, Lcom/android/email/activity/MessageCompose;->access$4302(Lcom/android/email/activity/MessageCompose;Z)Z

    .line 2981
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v11

    iget v11, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/lit16 v11, v11, 0x1000

    if-eqz v11, :cond_a

    const/4 v11, 0x1

    :goto_3
    #setter for: Lcom/android/email/activity/MessageCompose;->mIsDeliveryChecked:Z
    invoke-static {v12, v11}, Lcom/android/email/activity/MessageCompose;->access$4402(Lcom/android/email/activity/MessageCompose;Z)Z

    .line 2985
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v12}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v12

    iget-object v12, v12, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateId:Ljava/lang/String;

    #setter for: Lcom/android/email/activity/MessageCompose;->mTemplateId:Ljava/lang/String;
    invoke-static {v11, v12}, Lcom/android/email/activity/MessageCompose;->access$1102(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;)Ljava/lang/String;

    .line 2986
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mTemplateId:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$1100(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mTemplateId:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$1100(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_4

    .line 2987
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v12}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v12

    iget-object v12, v12, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateName:Ljava/lang/String;

    #setter for: Lcom/android/email/activity/MessageCompose;->mTemplateName:Ljava/lang/String;
    invoke-static {v11, v12}, Lcom/android/email/activity/MessageCompose;->access$1302(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;)Ljava/lang/String;

    .line 2988
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v12}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v12

    iget-object v12, v12, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateDescription:Ljava/lang/String;

    #setter for: Lcom/android/email/activity/MessageCompose;->mTemplateDescription:Ljava/lang/String;
    invoke-static {v11, v12}, Lcom/android/email/activity/MessageCompose;->access$1202(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;)Ljava/lang/String;

    .line 2992
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v11}, Lcom/android/email/activity/MessageCompose;->getIsSyncedDraftMessage()Z

    move-result v11

    if-eqz v11, :cond_16

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->IsEAS()Z
    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$4500(Lcom/android/email/activity/MessageCompose;)Z

    move-result v11

    if-eqz v11, :cond_16

    .line 2993
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/email/activity/MessageCompose;->SetOriginMsgEdited(Z)Z

    .line 2997
    iget-boolean v11, v9, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncrypted:Z

    if-nez v11, :cond_5

    iget-boolean v11, v9, Lcom/android/emailcommon/provider/EmailContent$Message;->mSigned:Z

    if-eqz v11, :cond_c

    .line 2998
    :cond_5
    const-string v11, "Compose >>"

    const-string v12, "this is an encrypted or signed draft message."

    invoke-static {v11, v12}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 2999
    iget-boolean v11, v9, Lcom/android/emailcommon/provider/EmailContent$Message;->mProcessed:Z

    if-nez v11, :cond_10

    .line 3000
    iget-boolean v11, v9, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncrypted:Z

    if-nez v11, :cond_6

    iget-boolean v11, v9, Lcom/android/emailcommon/provider/EmailContent$Message;->mSigned:Z

    if-eqz v11, :cond_b

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v11

    iget v11, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mIsMimeLoaded:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_b

    .line 3002
    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mSmimeHandlerTask:Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;
    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$4600(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;

    move-result-object v11

    if-eqz v11, :cond_7

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mSmimeHandlerTask:Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;
    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$4600(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;

    move-result-object v11

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mSmimeHandlerTask:Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;
    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$4600(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v11

    sget-object v12, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq v11, v12, :cond_0

    .line 3005
    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    new-instance v12, Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v14}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;-><init>(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    #setter for: Lcom/android/email/activity/MessageCompose;->mSmimeHandlerTask:Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;
    invoke-static {v11, v12}, Lcom/android/email/activity/MessageCompose;->access$4602(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;)Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;

    .line 3006
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mSmimeHandlerTask:Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;
    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$4600(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Void;

    invoke-virtual {v11, v12}, Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 2977
    :cond_8
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 2980
    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 2981
    :cond_a
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 3009
    :cond_b
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->onLoadMoreMessage()V
    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$4700(Lcom/android/email/activity/MessageCompose;)V

    goto/16 :goto_0

    .line 3016
    :cond_c
    iget v11, v9, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagTruncated:I

    const/4 v12, 0x1

    if-eq v11, v12, :cond_d

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-wide v12, v9, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget v14, v9, Lcom/android/emailcommon/provider/EmailContent$Message;->mIsMimeLoaded:I

    #calls: Lcom/android/email/activity/MessageCompose;->hasInlineDataImage(JI)Z
    invoke-static {v11, v12, v13, v14}, Lcom/android/email/activity/MessageCompose;->access$4800(Lcom/android/email/activity/MessageCompose;JI)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 3018
    :cond_d
    const-string v11, "Compose >>"

    const-string v12, "mFlagTruncated == FLAG_TRUNCATED_YES"

    invoke-static {v11, v12}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 3019
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->onLoadMoreMessage()V
    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$4700(Lcom/android/email/activity/MessageCompose;)V

    goto/16 :goto_0

    .line 3022
    :cond_e
    const-string v11, "Compose >>"

    const-string v12, "mFlagTruncated == FLAG_TRUNCATED_NO"

    invoke-static {v11, v12}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 3026
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-wide v12, v9, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v11, v12, v13}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v8

    .line 3028
    .local v8, mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget-object v10, v8, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    .line 3029
    .local v10, protocolVer:Ljava/lang/String;
    iget v11, v9, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    const/4 v12, 0x1

    if-eq v11, v12, :cond_f

    .line 3030
    const-string v11, "Compose >>"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "message.mFlagLoaded = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v9, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " Message.FLAG_LOADED_COMPLETE = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 3034
    :cond_f
    if-eqz v10, :cond_10

    const-string v11, "2.5"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v11

    iget v11, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mIsMimeLoaded:I

    if-nez v11, :cond_10

    .line 3040
    const-string v11, "Compose >>"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "isEx2003 = true, Protocol Version = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " Message Truncated = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v9, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagTruncated:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 3043
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->onLoadMoreMessage()V
    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$4700(Lcom/android/email/activity/MessageCompose;)V

    goto/16 :goto_0

    .line 3050
    .end local v8           #mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v10           #protocolVer:Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    const/4 v12, 0x0

    #setter for: Lcom/android/email/activity/MessageCompose;->mEmbeddedImageDownload:Z
    invoke-static {v11, v12}, Lcom/android/email/activity/MessageCompose;->access$4902(Lcom/android/email/activity/MessageCompose;Z)Z

    .line 3051
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    const/4 v12, 0x0

    #setter for: Lcom/android/email/activity/MessageCompose;->mInlineImageCallbackCount:I
    invoke-static {v11, v12}, Lcom/android/email/activity/MessageCompose;->access$5002(Lcom/android/email/activity/MessageCompose;I)I

    .line 3052
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    const/4 v12, 0x0

    #setter for: Lcom/android/email/activity/MessageCompose;->mInlineImageCount:I
    invoke-static {v11, v12}, Lcom/android/email/activity/MessageCompose;->access$5102(Lcom/android/email/activity/MessageCompose;I)I

    .line 3055
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-wide v12, v9, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v11, v12, v13}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentsWithMessageId(Landroid/content/Context;J)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v4

    .line 3057
    .local v4, attachments:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    iget-object v10, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    .line 3058
    .restart local v10       #protocolVer:Ljava/lang/String;
    if-eqz v10, :cond_13

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    const-wide/high16 v13, 0x4004

    cmpl-double v11, v11, v13

    if-ltz v11, :cond_13

    .line 3060
    move-object v2, v4

    .local v2, arr$:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    array-length v7, v2

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_4
    if-ge v6, v7, :cond_13

    aget-object v3, v2, v6

    .line 3061
    .local v3, attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    iget-object v11, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v11, :cond_11

    iget v11, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mIsInline:I

    const/4 v12, 0x1

    if-eq v11, v12, :cond_12

    :cond_11
    iget v11, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit16 v11, v11, 0x80

    if-eqz v11, :cond_14

    .line 3063
    :cond_12
    iget-object v11, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    if-nez v11, :cond_14

    .line 3064
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    const/4 v12, 0x1

    #setter for: Lcom/android/email/activity/MessageCompose;->mEmbeddedImageDownload:Z
    invoke-static {v11, v12}, Lcom/android/email/activity/MessageCompose;->access$4902(Lcom/android/email/activity/MessageCompose;Z)Z

    .line 3071
    .end local v2           #arr$:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v3           #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v6           #i$:I
    .end local v7           #len$:I
    :cond_13
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mEmbeddedImageDownload:Z
    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$4900(Lcom/android/email/activity/MessageCompose;)Z

    move-result v11

    if-eqz v11, :cond_16

    .line 3072
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    new-instance v12, Lcom/android/email/activity/MessageCompose$LoadMessageTask$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v9}, Lcom/android/email/activity/MessageCompose$LoadMessageTask$1;-><init>(Lcom/android/email/activity/MessageCompose$LoadMessageTask;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Long;

    const/4 v14, 0x0

    iget-wide v15, v9, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v12, v13}, Lcom/android/email/activity/MessageCompose$LoadMessageTask$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v12

    #setter for: Lcom/android/email/activity/MessageCompose;->mLoadEmbeddedAttachmentsTask:Landroid/os/AsyncTask;
    invoke-static {v11, v12}, Lcom/android/email/activity/MessageCompose;->access$5202(Lcom/android/email/activity/MessageCompose;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 3158
    const-string v11, "Compose >>"

    const-string v12, "pending loadmessagetask to load embedded images"

    invoke-static {v11, v12}, Lcom/android/email/Email;->logv(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3060
    .restart local v2       #arr$:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .restart local v3       #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .restart local v6       #i$:I
    .restart local v7       #len$:I
    :cond_14
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 3164
    .end local v2           #arr$:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v3           #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v4           #attachments:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v6           #i$:I
    .end local v7           #len$:I
    .end local v10           #protocolVer:Ljava/lang/String;
    :cond_15
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #setter for: Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v11, v9}, Lcom/android/email/activity/MessageCompose;->access$5702(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 3166
    :cond_16
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    new-instance v12, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v5, v9}, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;-><init>(Lcom/android/email/activity/MessageCompose$LoadMessageTask;ZLcom/android/emailcommon/provider/EmailContent$Message;)V

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Long;

    const/4 v14, 0x0

    iget-wide v15, v9, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v12, v13}, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v12

    #setter for: Lcom/android/email/activity/MessageCompose;->mLoadAttachmentsTask:Landroid/os/AsyncTask;
    invoke-static {v11, v12}, Lcom/android/email/activity/MessageCompose;->access$5802(Lcom/android/email/activity/MessageCompose;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 3363
    .end local v5           #draft:Z
    :cond_17
    :goto_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->configureSmimeOptions(Lcom/android/emailcommon/provider/EmailContent$Message;)V
    invoke-static {v11, v9}, Lcom/android/email/activity/MessageCompose;->access$6400(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    .line 3365
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->setAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V
    invoke-static {v11, v1}, Lcom/android/email/activity/MessageCompose;->access$6500(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 3366
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->setFromAccount()V
    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$6600(Lcom/android/email/activity/MessageCompose;)V

    .line 3367
    if-eqz v9, :cond_18

    .line 3368
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-static {v12}, Lcom/android/email/activity/MessageCompose;->access$5500(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v12

    invoke-virtual {v11, v9, v12}, Lcom/android/email/activity/MessageCompose;->processSourceMessageGuarded(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 3369
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    const/4 v12, 0x1

    #setter for: Lcom/android/email/activity/MessageCompose;->mMessageLoaded:Z
    invoke-static {v11, v12}, Lcom/android/email/activity/MessageCompose;->access$6702(Lcom/android/email/activity/MessageCompose;Z)Z

    .line 3372
    :cond_18
    const-string v11, "com.android.email.intent.action.REPLY"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/email/activity/MessageCompose;->access$1600(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_19

    const-string v11, "com.android.email.intent.action.REPLY_ALL"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/email/activity/MessageCompose;->access$1600(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_19

    const-string v11, "com.android.email.intent.action.FORWARD"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/email/activity/MessageCompose;->access$1600(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1d

    :cond_19
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$5700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v11

    if-eqz v11, :cond_1d

    .line 3374
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v12}, Lcom/android/email/activity/MessageCompose;->access$5700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v12

    iget-wide v12, v12, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #setter for: Lcom/android/email/activity/MessageCompose;->mOriginalMessageIdForIRM:J
    invoke-static {v11, v12, v13}, Lcom/android/email/activity/MessageCompose;->access$6802(Lcom/android/email/activity/MessageCompose;J)J

    .line 3380
    :cond_1a
    :goto_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mOriginalMessageIdForIRM:J
    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$6800(Lcom/android/email/activity/MessageCompose;)J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-lez v11, :cond_0

    .line 3381
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mOriginalMessageIdForIRM:J
    invoke-static {v12}, Lcom/android/email/activity/MessageCompose;->access$6800(Lcom/android/email/activity/MessageCompose;)J

    move-result-wide v12

    #calls: Lcom/android/email/activity/MessageCompose;->applyIRMresctrition(J)V
    invoke-static {v11, v12, v13}, Lcom/android/email/activity/MessageCompose;->access$6900(Lcom/android/email/activity/MessageCompose;J)V

    goto/16 :goto_0

    .line 3353
    :cond_1b
    const-string v11, "com.android.email.intent.action.REPLY"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/email/activity/MessageCompose;->access$1600(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1c

    const-string v11, "com.android.email.intent.action.REPLY_ALL"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/email/activity/MessageCompose;->access$1600(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1c

    const-string v11, "com.android.email.intent.action.MEETING_RESPONSE"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/email/activity/MessageCompose;->access$1600(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1c

    const-string v11, "com.android.email.intent.action.PROPOSE_NEW_TIME"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/email/activity/MessageCompose;->access$1600(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_17

    .line 3358
    :cond_1c
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #setter for: Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v11, v9}, Lcom/android/email/activity/MessageCompose;->access$5702(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/android/emailcommon/provider/EmailContent$Message;

    goto/16 :goto_5

    .line 3375
    :cond_1d
    const-string v11, "com.android.email.intent.action.EDIT_DRAFT"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/email/activity/MessageCompose;->access$1600(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1a

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v11

    if-eqz v11, :cond_1a

    .line 3376
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v12}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v12

    iget-wide v12, v12, Lcom/android/emailcommon/provider/EmailContent$Message;->mSourceKey:J

    #setter for: Lcom/android/email/activity/MessageCompose;->mOriginalMessageIdForIRM:J
    invoke-static {v11, v12, v13}, Lcom/android/email/activity/MessageCompose;->access$6802(Lcom/android/email/activity/MessageCompose;J)J

    goto/16 :goto_6
.end method
