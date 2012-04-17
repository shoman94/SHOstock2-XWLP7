.class Lcom/android/email/activity/QuickReplyActivity$2;
.super Ljava/lang/Object;
.source "QuickReplyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/QuickReplyActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/QuickReplyActivity;

.field final synthetic val$bodyField:Landroid/widget/EditText;

.field final synthetic val$cc:Ljava/lang/String;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$from:Ljava/lang/String;

.field final synthetic val$subject:Ljava/lang/String;

.field final synthetic val$to:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/email/activity/QuickReplyActivity;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Dialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/email/activity/QuickReplyActivity$2;->this$0:Lcom/android/email/activity/QuickReplyActivity;

    iput-object p2, p0, Lcom/android/email/activity/QuickReplyActivity$2;->val$bodyField:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/email/activity/QuickReplyActivity$2;->val$from:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/email/activity/QuickReplyActivity$2;->val$to:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/email/activity/QuickReplyActivity$2;->val$cc:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/email/activity/QuickReplyActivity$2;->val$subject:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/email/activity/QuickReplyActivity$2;->val$dialog:Landroid/app/Dialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "arg0"

    .prologue
    const/4 v6, 0x0

    .line 115
    iget-object v3, p0, Lcom/android/email/activity/QuickReplyActivity$2;->this$0:Lcom/android/email/activity/QuickReplyActivity;

    invoke-virtual {v3}, Lcom/android/email/activity/QuickReplyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 118
    .local v0, context:Landroid/content/Context;
    iget-object v3, p0, Lcom/android/email/activity/QuickReplyActivity$2;->this$0:Lcom/android/email/activity/QuickReplyActivity;

    #getter for: Lcom/android/email/activity/QuickReplyActivity;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v3}, Lcom/android/email/activity/QuickReplyActivity;->access$200(Lcom/android/email/activity/QuickReplyActivity;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v3

    invoke-static {}, Lcom/android/emailcommon/utility/Utility;->generateMessageId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    .line 119
    iget-object v3, p0, Lcom/android/email/activity/QuickReplyActivity$2;->this$0:Lcom/android/email/activity/QuickReplyActivity;

    #getter for: Lcom/android/email/activity/QuickReplyActivity;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v3}, Lcom/android/email/activity/QuickReplyActivity;->access$200(Lcom/android/email/activity/QuickReplyActivity;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    .line 120
    iget-object v3, p0, Lcom/android/email/activity/QuickReplyActivity$2;->this$0:Lcom/android/email/activity/QuickReplyActivity;

    #getter for: Lcom/android/email/activity/QuickReplyActivity;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v3}, Lcom/android/email/activity/QuickReplyActivity;->access$200(Lcom/android/email/activity/QuickReplyActivity;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/QuickReplyActivity$2;->val$bodyField:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    .line 121
    iget-object v3, p0, Lcom/android/email/activity/QuickReplyActivity$2;->this$0:Lcom/android/email/activity/QuickReplyActivity;

    #getter for: Lcom/android/email/activity/QuickReplyActivity;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v3}, Lcom/android/email/activity/QuickReplyActivity;->access$200(Lcom/android/email/activity/QuickReplyActivity;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v3

    iput-object v6, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    .line 122
    iget-object v3, p0, Lcom/android/email/activity/QuickReplyActivity$2;->this$0:Lcom/android/email/activity/QuickReplyActivity;

    #getter for: Lcom/android/email/activity/QuickReplyActivity;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v3}, Lcom/android/email/activity/QuickReplyActivity;->access$200(Lcom/android/email/activity/QuickReplyActivity;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/QuickReplyActivity$2;->val$from:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    .line 123
    iget-object v3, p0, Lcom/android/email/activity/QuickReplyActivity$2;->this$0:Lcom/android/email/activity/QuickReplyActivity;

    #getter for: Lcom/android/email/activity/QuickReplyActivity;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v3}, Lcom/android/email/activity/QuickReplyActivity;->access$200(Lcom/android/email/activity/QuickReplyActivity;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/QuickReplyActivity$2;->val$to:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    .line 124
    iget-object v3, p0, Lcom/android/email/activity/QuickReplyActivity$2;->this$0:Lcom/android/email/activity/QuickReplyActivity;

    #getter for: Lcom/android/email/activity/QuickReplyActivity;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v3}, Lcom/android/email/activity/QuickReplyActivity;->access$200(Lcom/android/email/activity/QuickReplyActivity;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/QuickReplyActivity$2;->val$cc:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    .line 125
    iget-object v3, p0, Lcom/android/email/activity/QuickReplyActivity$2;->this$0:Lcom/android/email/activity/QuickReplyActivity;

    #getter for: Lcom/android/email/activity/QuickReplyActivity;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v3}, Lcom/android/email/activity/QuickReplyActivity;->access$200(Lcom/android/email/activity/QuickReplyActivity;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v3

    iput-object v6, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    .line 126
    iget-object v3, p0, Lcom/android/email/activity/QuickReplyActivity$2;->this$0:Lcom/android/email/activity/QuickReplyActivity;

    #getter for: Lcom/android/email/activity/QuickReplyActivity;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v3}, Lcom/android/email/activity/QuickReplyActivity;->access$200(Lcom/android/email/activity/QuickReplyActivity;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Re: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/email/activity/QuickReplyActivity$2;->val$subject:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    .line 134
    iget-object v3, p0, Lcom/android/email/activity/QuickReplyActivity$2;->this$0:Lcom/android/email/activity/QuickReplyActivity;

    #getter for: Lcom/android/email/activity/QuickReplyActivity;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v3}, Lcom/android/email/activity/QuickReplyActivity;->access$200(Lcom/android/email/activity/QuickReplyActivity;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v3

    iput-object v6, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mIntroText:Ljava/lang/String;

    .line 135
    iget-object v3, p0, Lcom/android/email/activity/QuickReplyActivity$2;->this$0:Lcom/android/email/activity/QuickReplyActivity;

    #getter for: Lcom/android/email/activity/QuickReplyActivity;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v3}, Lcom/android/email/activity/QuickReplyActivity;->access$200(Lcom/android/email/activity/QuickReplyActivity;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v3

    iput-object v6, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mTextReply:Ljava/lang/String;

    .line 136
    iget-object v3, p0, Lcom/android/email/activity/QuickReplyActivity$2;->this$0:Lcom/android/email/activity/QuickReplyActivity;

    #getter for: Lcom/android/email/activity/QuickReplyActivity;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v3}, Lcom/android/email/activity/QuickReplyActivity;->access$200(Lcom/android/email/activity/QuickReplyActivity;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v3

    iput-object v6, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    .line 137
    iget-object v3, p0, Lcom/android/email/activity/QuickReplyActivity$2;->this$0:Lcom/android/email/activity/QuickReplyActivity;

    #getter for: Lcom/android/email/activity/QuickReplyActivity;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v3}, Lcom/android/email/activity/QuickReplyActivity;->access$200(Lcom/android/email/activity/QuickReplyActivity;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v3

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mSourceKey:J

    .line 138
    iget-object v3, p0, Lcom/android/email/activity/QuickReplyActivity$2;->this$0:Lcom/android/email/activity/QuickReplyActivity;

    #getter for: Lcom/android/email/activity/QuickReplyActivity;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v3}, Lcom/android/email/activity/QuickReplyActivity;->access$200(Lcom/android/email/activity/QuickReplyActivity;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v3

    iget v4, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/lit8 v4, v4, -0x4

    iput v4, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    .line 140
    iget-object v3, p0, Lcom/android/email/activity/QuickReplyActivity$2;->this$0:Lcom/android/email/activity/QuickReplyActivity;

    #getter for: Lcom/android/email/activity/QuickReplyActivity;->mController:Lcom/android/email/Controller;
    invoke-static {v3}, Lcom/android/email/activity/QuickReplyActivity;->access$300(Lcom/android/email/activity/QuickReplyActivity;)Lcom/android/email/Controller;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/QuickReplyActivity$2;->this$0:Lcom/android/email/activity/QuickReplyActivity;

    #getter for: Lcom/android/email/activity/QuickReplyActivity;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v4}, Lcom/android/email/activity/QuickReplyActivity;->access$200(Lcom/android/email/activity/QuickReplyActivity;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Lcom/android/email/Controller;->saveToMailbox(Lcom/android/emailcommon/provider/EmailContent$Message;I)V

    .line 143
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 144
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "textContent"

    iget-object v4, p0, Lcom/android/email/activity/QuickReplyActivity$2;->this$0:Lcom/android/email/activity/QuickReplyActivity;

    #getter for: Lcom/android/email/activity/QuickReplyActivity;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v4}, Lcom/android/email/activity/QuickReplyActivity;->access$200(Lcom/android/email/activity/QuickReplyActivity;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v4

    iget-object v4, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v3, "htmlContent"

    iget-object v4, p0, Lcom/android/email/activity/QuickReplyActivity$2;->this$0:Lcom/android/email/activity/QuickReplyActivity;

    #getter for: Lcom/android/email/activity/QuickReplyActivity;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v4}, Lcom/android/email/activity/QuickReplyActivity;->access$200(Lcom/android/email/activity/QuickReplyActivity;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v4

    iget-object v4, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v3, "textReply"

    iget-object v4, p0, Lcom/android/email/activity/QuickReplyActivity$2;->this$0:Lcom/android/email/activity/QuickReplyActivity;

    #getter for: Lcom/android/email/activity/QuickReplyActivity;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v4}, Lcom/android/email/activity/QuickReplyActivity;->access$200(Lcom/android/email/activity/QuickReplyActivity;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v4

    iget-object v4, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mTextReply:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v3, "htmlReply"

    iget-object v4, p0, Lcom/android/email/activity/QuickReplyActivity$2;->this$0:Lcom/android/email/activity/QuickReplyActivity;

    #getter for: Lcom/android/email/activity/QuickReplyActivity;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v4}, Lcom/android/email/activity/QuickReplyActivity;->access$200(Lcom/android/email/activity/QuickReplyActivity;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v4

    iget-object v4, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v3, "introText"

    iget-object v4, p0, Lcom/android/email/activity/QuickReplyActivity$2;->this$0:Lcom/android/email/activity/QuickReplyActivity;

    #getter for: Lcom/android/email/activity/QuickReplyActivity;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v4}, Lcom/android/email/activity/QuickReplyActivity;->access$200(Lcom/android/email/activity/QuickReplyActivity;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v4

    iget-object v4, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mIntroText:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v3, "sourceMessageKey"

    iget-object v4, p0, Lcom/android/email/activity/QuickReplyActivity$2;->this$0:Lcom/android/email/activity/QuickReplyActivity;

    #getter for: Lcom/android/email/activity/QuickReplyActivity;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v4}, Lcom/android/email/activity/QuickReplyActivity;->access$200(Lcom/android/email/activity/QuickReplyActivity;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v4

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mSourceKey:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 152
    iget-object v3, p0, Lcom/android/email/activity/QuickReplyActivity$2;->this$0:Lcom/android/email/activity/QuickReplyActivity;

    #getter for: Lcom/android/email/activity/QuickReplyActivity;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v3}, Lcom/android/email/activity/QuickReplyActivity;->access$200(Lcom/android/email/activity/QuickReplyActivity;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v3

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v3, v4, v2}, Lcom/android/emailcommon/provider/EmailContent$Body;->updateBodyWithMessageId(Landroid/content/Context;JLandroid/content/ContentValues;)V

    .line 155
    :try_start_0
    iget-object v3, p0, Lcom/android/email/activity/QuickReplyActivity$2;->this$0:Lcom/android/email/activity/QuickReplyActivity;

    #getter for: Lcom/android/email/activity/QuickReplyActivity;->mController:Lcom/android/email/Controller;
    invoke-static {v3}, Lcom/android/email/activity/QuickReplyActivity;->access$300(Lcom/android/email/activity/QuickReplyActivity;)Lcom/android/email/Controller;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/QuickReplyActivity$2;->this$0:Lcom/android/email/activity/QuickReplyActivity;

    #getter for: Lcom/android/email/activity/QuickReplyActivity;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v4}, Lcom/android/email/activity/QuickReplyActivity;->access$200(Lcom/android/email/activity/QuickReplyActivity;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v4

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-object v6, p0, Lcom/android/email/activity/QuickReplyActivity$2;->this$0:Lcom/android/email/activity/QuickReplyActivity;

    #getter for: Lcom/android/email/activity/QuickReplyActivity;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v6}, Lcom/android/email/activity/QuickReplyActivity;->access$200(Lcom/android/email/activity/QuickReplyActivity;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v6

    iget-wide v6, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/email/Controller;->sendMessage(JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :goto_0
    iget-object v3, p0, Lcom/android/email/activity/QuickReplyActivity$2;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 163
    return-void

    .line 156
    :catch_0
    move-exception v1

    .line 157
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "Quick Reply"

    const-string v4, "Failed to send Email"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
