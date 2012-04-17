.class Lcom/android/email/activity/MessageListXL$ControllerResult;
.super Lcom/android/email/Controller$Result;
.source "MessageListXL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageListXL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ControllerResult"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageListXL;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MessageListXL;)V
    .locals 0
    .parameter

    .prologue
    .line 3952
    iput-object p1, p0, Lcom/android/email/activity/MessageListXL$ControllerResult;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-direct {p0}, Lcom/android/email/Controller$Result;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MessageListXL;Lcom/android/email/activity/MessageListXL$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3952
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListXL$ControllerResult;-><init>(Lcom/android/email/activity/MessageListXL;)V

    return-void
.end method

.method private handleError(Lcom/android/emailcommon/mail/MessagingException;JI)V
    .locals 8
    .parameter "result"
    .parameter "accountId"
    .parameter "progress"

    .prologue
    const/4 v5, 0x1

    .line 4079
    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-nez v2, :cond_1

    .line 4183
    :cond_0
    :goto_0
    return-void

    .line 4082
    :cond_1
    if-nez p1, :cond_2

    .line 4083
    if-lez p4, :cond_0

    .line 4085
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$ControllerResult;->this$0:Lcom/android/email/activity/MessageListXL;

    #calls: Lcom/android/email/activity/MessageListXL;->clearErrorMessage(J)V
    invoke-static {v2, p2, p3}, Lcom/android/email/activity/MessageListXL;->access$5900(Lcom/android/email/activity/MessageListXL;J)V

    goto :goto_0

    .line 4090
    :cond_2
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v2

    invoke-static {v2}, Lcom/android/emailcommon/mail/MessagingException;->isError(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4093
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v2

    const/16 v3, 0x6f

    if-ne v2, v3, :cond_4

    .line 4094
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$ControllerResult;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v2}, Lcom/android/email/activity/MessageListXL;->access$700(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListXLFragmentManager;->getActualAccountId()J

    move-result-wide v2

    cmp-long v2, p2, v2

    if-nez v2, :cond_0

    .line 4098
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$ControllerResult;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mPartnerTooManyDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/email/activity/MessageListXL;->access$6000(Lcom/android/email/activity/MessageListXL;)Landroid/app/AlertDialog;

    move-result-object v2

    if-nez v2, :cond_3

    .line 4099
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$ControllerResult;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4101
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$ControllerResult;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08049a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 4102
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$ControllerResult;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0805c9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 4104
    const v2, 0x7f080042

    new-instance v3, Lcom/android/email/activity/MessageListXL$ControllerResult$1;

    invoke-direct {v3, p0}, Lcom/android/email/activity/MessageListXL$ControllerResult$1;-><init>(Lcom/android/email/activity/MessageListXL$ControllerResult;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4121
    const v2, 0x7f0801cc

    new-instance v3, Lcom/android/email/activity/MessageListXL$ControllerResult$2;

    invoke-direct {v3, p0}, Lcom/android/email/activity/MessageListXL$ControllerResult$2;-><init>(Lcom/android/email/activity/MessageListXL$ControllerResult;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4133
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 4134
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$ControllerResult;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    #setter for: Lcom/android/email/activity/MessageListXL;->mPartnerTooManyDialog:Landroid/app/AlertDialog;
    invoke-static {v2, v3}, Lcom/android/email/activity/MessageListXL;->access$6002(Lcom/android/email/activity/MessageListXL;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 4135
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$ControllerResult;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mPartnerTooManyDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/email/activity/MessageListXL;->access$6000(Lcom/android/email/activity/MessageListXL;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 4136
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    :cond_3
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$ControllerResult;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mPartnerTooManyDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/email/activity/MessageListXL;->access$6000(Lcom/android/email/activity/MessageListXL;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4137
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$ControllerResult;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mPartnerTooManyDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/email/activity/MessageListXL;->access$6000(Lcom/android/email/activity/MessageListXL;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 4148
    :cond_4
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v2

    const/16 v3, 0x63

    if-eq v2, v3, :cond_0

    .line 4154
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v2

    const/16 v3, 0x11

    if-ne v2, v3, :cond_5

    .line 4155
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$ControllerResult;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v2, p2, p3}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 4156
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$ControllerResult;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {}, Lcom/android/email/Email;->getApplication()Lcom/android/email/Email;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/email/Email;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08032e

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/email/activity/MessageListXL;->showErrorMessage(Ljava/lang/String;J)V
    invoke-static {v2, v3, p2, p3}, Lcom/android/email/activity/MessageListXL;->access$6100(Lcom/android/email/activity/MessageListXL;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 4166
    .end local v0           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    :cond_5
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lcom/android/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Smtp auth address"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-ne v2, v5, :cond_6

    .line 4168
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$ControllerResult;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {p1}, Lcom/android/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/email/activity/MessageListXL;->showErrorMessage(Ljava/lang/String;J)V
    invoke-static {v2, v3, p2, p3}, Lcom/android/email/activity/MessageListXL;->access$6100(Lcom/android/email/activity/MessageListXL;Ljava/lang/String;J)V

    .line 4177
    :goto_1
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v2

    const v3, 0x50004

    if-ne v2, v3, :cond_0

    .line 4178
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$ControllerResult;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mController:Lcom/android/email/Controller;
    invoke-static {v2}, Lcom/android/email/activity/MessageListXL;->access$2700(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/Controller;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Lcom/android/email/Controller;->refreshIRMTemplates(J)V

    goto/16 :goto_0

    .line 4173
    :cond_6
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$ControllerResult;->this$0:Lcom/android/email/activity/MessageListXL;

    iget-object v3, p0, Lcom/android/email/activity/MessageListXL$ControllerResult;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v3, p1}, Lcom/android/email/MessagingExceptionStrings;->getErrorString(Landroid/content/Context;Lcom/android/emailcommon/mail/MessagingException;)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/email/activity/MessageListXL;->showErrorMessage(Ljava/lang/String;J)V
    invoke-static {v2, v3, p2, p3}, Lcom/android/email/activity/MessageListXL;->access$6100(Lcom/android/email/activity/MessageListXL;Ljava/lang/String;J)V

    goto :goto_1
.end method


# virtual methods
.method public loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJI)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "messageId"
    .parameter "attachmentId"
    .parameter "progress"

    .prologue
    .line 4069
    invoke-direct {p0, p1, p2, p3, p8}, Lcom/android/email/activity/MessageListXL$ControllerResult;->handleError(Lcom/android/emailcommon/mail/MessagingException;JI)V

    .line 4070
    return-void
.end method

.method public loadMessageForViewCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "messageId"
    .parameter "progress"

    .prologue
    .line 4075
    invoke-direct {p0, p1, p2, p3, p6}, Lcom/android/email/activity/MessageListXL$ControllerResult;->handleError(Lcom/android/emailcommon/mail/MessagingException;JI)V

    .line 4076
    return-void
.end method

.method public sendMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V
    .locals 5
    .parameter "result"
    .parameter "accountId"
    .parameter "messageId"
    .parameter "progress"

    .prologue
    .line 3957
    const/4 v0, -0x1

    .line 3958
    .local v0, mailboxType:I
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL$ControllerResult;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v1}, Lcom/android/email/activity/MessageListXL;->access$700(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_2

    .line 3959
    sget-object v1, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$ControllerResult;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v2}, Lcom/android/email/activity/MessageListXL;->access$700(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getMailboxType(Landroid/content/Context;J)I

    move-result v0

    .line 3964
    :goto_0
    if-nez p1, :cond_5

    .line 3965
    if-nez p6, :cond_3

    .line 3966
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL$ControllerResult;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;
    invoke-static {v1}, Lcom/android/email/activity/MessageListXL;->access$5800(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/ThreePaneLayout;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/email/activity/ThreePaneLayout;->setVisibleMessageSendingProgress(Z)V

    .line 3967
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL$ControllerResult;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v1}, Lcom/android/email/activity/MessageListXL;->access$700(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageListXLFragmentManager;->setSendingProgressFlag(Z)V

    .line 3968
    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    int-to-long v1, v0

    const-wide/16 v3, -0x6

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 3970
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL$ControllerResult;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v1}, Lcom/android/email/activity/MessageListXL;->access$700(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageListFragment;->setSendingProgressFlag(Z)V

    .line 3971
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL$ControllerResult;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v1}, Lcom/android/email/activity/MessageListXL;->access$700(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageViewFragment()Lcom/android/email/activity/MessageViewFragment;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageViewFragment;->setSendingProgressFlag(Z)V

    .line 4004
    :cond_1
    :goto_1
    invoke-direct {p0, p1, p2, p3, p6}, Lcom/android/email/activity/MessageListXL$ControllerResult;->handleError(Lcom/android/emailcommon/mail/MessagingException;JI)V

    .line 4005
    return-void

    .line 3961
    :cond_2
    long-to-int v0, p4

    goto :goto_0

    .line 3973
    :cond_3
    const/16 v1, 0x64

    if-ne p6, v1, :cond_1

    .line 3974
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL$ControllerResult;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;
    invoke-static {v1}, Lcom/android/email/activity/MessageListXL;->access$5800(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/ThreePaneLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/email/activity/ThreePaneLayout;->setVisibleMessageSendingProgress(Z)V

    .line 3975
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL$ControllerResult;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v1}, Lcom/android/email/activity/MessageListXL;->access$700(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageListXLFragmentManager;->setSendingProgressFlag(Z)V

    .line 3976
    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    int-to-long v1, v0

    const-wide/16 v3, -0x6

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 3978
    :cond_4
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL$ControllerResult;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v1}, Lcom/android/email/activity/MessageListXL;->access$700(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageListFragment;->setSendingProgressFlag(Z)V

    .line 3979
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL$ControllerResult;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v1}, Lcom/android/email/activity/MessageListXL;->access$700(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageViewFragment()Lcom/android/email/activity/MessageViewFragment;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageViewFragment;->setSendingProgressFlag(Z)V

    .line 3980
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL$ControllerResult;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v1}, Lcom/android/email/activity/MessageListXL;->access$700(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListFragment;->refreshList()V

    .line 3981
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL$ControllerResult;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v1}, Lcom/android/email/activity/MessageListXL;->access$700(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxListFragment()Lcom/android/email/activity/MailboxListFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/MailboxListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidateViews()V

    goto :goto_1

    .line 3986
    :cond_5
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL$ControllerResult;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;
    invoke-static {v1}, Lcom/android/email/activity/MessageListXL;->access$5800(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/ThreePaneLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/email/activity/ThreePaneLayout;->setVisibleMessageSendingProgress(Z)V

    .line 3987
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL$ControllerResult;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v1}, Lcom/android/email/activity/MessageListXL;->access$700(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageListXLFragmentManager;->setSendingProgressFlag(Z)V

    .line 3990
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v1

    const/16 v2, 0x11

    if-ne v1, v2, :cond_6

    .line 3991
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL$ControllerResult;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v1}, Lcom/android/email/activity/MessageListXL;->access$700(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListFragment;->refreshList()V

    .line 3992
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL$ControllerResult;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v1}, Lcom/android/email/activity/MessageListXL;->access$700(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxListFragment()Lcom/android/email/activity/MailboxListFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/MailboxListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidateViews()V

    .line 3996
    :cond_6
    const/4 v1, 0x4

    if-eq v0, v1, :cond_7

    int-to-long v1, v0

    const-wide/16 v3, -0x6

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 3997
    :cond_7
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL$ControllerResult;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v1}, Lcom/android/email/activity/MessageListXL;->access$700(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageListFragment;->setSendingProgressFlag(Z)V

    .line 3998
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL$ControllerResult;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v1}, Lcom/android/email/activity/MessageListXL;->access$700(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageViewFragment()Lcom/android/email/activity/MessageViewFragment;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageViewFragment;->setSendingProgressFlag(Z)V

    .line 3999
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL$ControllerResult;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v1}, Lcom/android/email/activity/MessageListXL;->access$700(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListFragment;->refreshList()V

    .line 4000
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL$ControllerResult;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v1}, Lcom/android/email/activity/MessageListXL;->access$700(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxListFragment()Lcom/android/email/activity/MailboxListFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/MailboxListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidateViews()V

    goto/16 :goto_1
.end method

.method public serviceCheckMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJIJ)V
    .locals 8
    .parameter "result"
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "progress"
    .parameter "tag"

    .prologue
    .line 4010
    const/16 v0, 0x64

    if-ne p6, v0, :cond_1

    .line 4011
    const-string v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serviceCheckmailcallback accoutId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mailboxId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " progress : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4012
    sget-object v0, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    invoke-static {v0, p4, p5}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v7

    .line 4013
    .local v7, mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    iget v0, v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-nez v0, :cond_0

    .line 4014
    sget-object v0, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.android.socialhub.action.EXTERNAL_DB_UPDATE"

    const/16 v2, 0x190

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/email/service/DoExternalRequest;->requestSendBroadcastIntent(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;IIZ)V

    .line 4021
    .end local v7           #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :cond_0
    :goto_0
    return-void

    .line 4019
    :cond_1
    invoke-direct {p0, p1, p2, p3, p6}, Lcom/android/email/activity/MessageListXL$ControllerResult;->handleError(Lcom/android/emailcommon/mail/MessagingException;JI)V

    goto :goto_0
.end method

.method public updateMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJII)V
    .locals 2
    .parameter "result"
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "progress"
    .parameter "numNewMessages"

    .prologue
    .line 4042
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$ControllerResult;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$700(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListFragment;->refreshList()V

    .line 4046
    const/16 v0, 0x64

    if-ne p6, v0, :cond_0

    .line 4049
    const-string v0, "EMAIL_PERFORMANCE"

    const-string v1, "onRefresh() END"

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 4055
    sget-object v0, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/util/EmailAddressCacheProcessor;->commitCacheInfo(Landroid/content/Context;)V

    .line 4057
    :cond_0
    invoke-direct {p0, p1, p2, p3, p6}, Lcom/android/email/activity/MessageListXL$ControllerResult;->handleError(Lcom/android/emailcommon/mail/MessagingException;JI)V

    .line 4058
    return-void
.end method

.method public updateMailboxListCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "progress"

    .prologue
    .line 4063
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/email/activity/MessageListXL$ControllerResult;->handleError(Lcom/android/emailcommon/mail/MessagingException;JI)V

    .line 4064
    return-void
.end method
