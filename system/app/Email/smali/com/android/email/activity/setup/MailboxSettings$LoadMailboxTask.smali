.class Lcom/android/email/activity/setup/MailboxSettings$LoadMailboxTask;
.super Lcom/android/emailcommon/utility/EmailAsyncTask;
.source "MailboxSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/MailboxSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadMailboxTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/emailcommon/utility/EmailAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mMailboxId:J

.field final synthetic this$0:Lcom/android/email/activity/setup/MailboxSettings;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/setup/MailboxSettings;J)V
    .locals 1
    .parameter
    .parameter "mailboxId"

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/email/activity/setup/MailboxSettings$LoadMailboxTask;->this$0:Lcom/android/email/activity/setup/MailboxSettings;

    .line 164
    #getter for: Lcom/android/email/activity/setup/MailboxSettings;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;
    invoke-static {p1}, Lcom/android/email/activity/setup/MailboxSettings;->access$000(Lcom/android/email/activity/setup/MailboxSettings;)Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;-><init>(Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;)V

    .line 165
    iput-wide p2, p0, Lcom/android/email/activity/setup/MailboxSettings$LoadMailboxTask;->mMailboxId:J

    .line 166
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 160
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/MailboxSettings$LoadMailboxTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .parameter "params"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings$LoadMailboxTask;->this$0:Lcom/android/email/activity/setup/MailboxSettings;

    .line 171
    .local v0, c:Landroid/content/Context;
    iget-object v1, p0, Lcom/android/email/activity/setup/MailboxSettings$LoadMailboxTask;->this$0:Lcom/android/email/activity/setup/MailboxSettings;

    iget-wide v2, p0, Lcom/android/email/activity/setup/MailboxSettings$LoadMailboxTask;->mMailboxId:J

    invoke-static {v0, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v2

    #setter for: Lcom/android/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    invoke-static {v1, v2}, Lcom/android/email/activity/setup/MailboxSettings;->access$102(Lcom/android/email/activity/setup/MailboxSettings;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    .line 172
    iget-object v1, p0, Lcom/android/email/activity/setup/MailboxSettings$LoadMailboxTask;->this$0:Lcom/android/email/activity/setup/MailboxSettings;

    #getter for: Lcom/android/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    invoke-static {v1}, Lcom/android/email/activity/setup/MailboxSettings;->access$100(Lcom/android/email/activity/setup/MailboxSettings;)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/android/email/activity/setup/MailboxSettings$LoadMailboxTask;->this$0:Lcom/android/email/activity/setup/MailboxSettings;

    iget-object v2, p0, Lcom/android/email/activity/setup/MailboxSettings$LoadMailboxTask;->this$0:Lcom/android/email/activity/setup/MailboxSettings;

    #getter for: Lcom/android/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    invoke-static {v2}, Lcom/android/email/activity/setup/MailboxSettings;->access$100(Lcom/android/email/activity/setup/MailboxSettings;)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v2

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {v0, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v2

    #setter for: Lcom/android/email/activity/setup/MailboxSettings;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-static {v1, v2}, Lcom/android/email/activity/setup/MailboxSettings;->access$202(Lcom/android/email/activity/setup/MailboxSettings;Lcom/android/emailcommon/provider/EmailContent$Account;)Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 175
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 160
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/MailboxSettings$LoadMailboxTask;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method protected onSuccess(Ljava/lang/Void;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings$LoadMailboxTask;->this$0:Lcom/android/email/activity/setup/MailboxSettings;

    #getter for: Lcom/android/email/activity/setup/MailboxSettings;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-static {v0}, Lcom/android/email/activity/setup/MailboxSettings;->access$200(Lcom/android/email/activity/setup/MailboxSettings;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings$LoadMailboxTask;->this$0:Lcom/android/email/activity/setup/MailboxSettings;

    #getter for: Lcom/android/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    invoke-static {v0}, Lcom/android/email/activity/setup/MailboxSettings;->access$100(Lcom/android/email/activity/setup/MailboxSettings;)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v0

    if-nez v0, :cond_1

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings$LoadMailboxTask;->this$0:Lcom/android/email/activity/setup/MailboxSettings;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/MailboxSettings;->finish()V

    .line 185
    :goto_0
    return-void

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings$LoadMailboxTask;->this$0:Lcom/android/email/activity/setup/MailboxSettings;

    #calls: Lcom/android/email/activity/setup/MailboxSettings;->onDataLoaded()V
    invoke-static {v0}, Lcom/android/email/activity/setup/MailboxSettings;->access$300(Lcom/android/email/activity/setup/MailboxSettings;)V

    goto :goto_0
.end method
