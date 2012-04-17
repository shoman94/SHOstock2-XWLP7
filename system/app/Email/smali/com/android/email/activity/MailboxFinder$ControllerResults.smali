.class Lcom/android/email/activity/MailboxFinder$ControllerResults;
.super Lcom/android/email/Controller$Result;
.source "MailboxFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MailboxFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ControllerResults"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MailboxFinder;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MailboxFinder;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/email/activity/MailboxFinder$ControllerResults;->this$0:Lcom/android/email/activity/MailboxFinder;

    invoke-direct {p0}, Lcom/android/email/Controller$Result;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MailboxFinder;Lcom/android/email/activity/MailboxFinder$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/android/email/activity/MailboxFinder$ControllerResults;-><init>(Lcom/android/email/activity/MailboxFinder;)V

    return-void
.end method


# virtual methods
.method public updateMailboxListCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V
    .locals 4
    .parameter "result"
    .parameter "accountId"
    .parameter "progress"

    .prologue
    const/4 v3, 0x0

    .line 139
    iget-object v0, p0, Lcom/android/email/activity/MailboxFinder$ControllerResults;->this$0:Lcom/android/email/activity/MailboxFinder;

    #getter for: Lcom/android/email/activity/MailboxFinder;->mClosed:Z
    invoke-static {v0}, Lcom/android/email/activity/MailboxFinder;->access$100(Lcom/android/email/activity/MailboxFinder;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MailboxFinder$ControllerResults;->this$0:Lcom/android/email/activity/MailboxFinder;

    #getter for: Lcom/android/email/activity/MailboxFinder;->mAccountId:J
    invoke-static {v0}, Lcom/android/email/activity/MailboxFinder;->access$200(Lcom/android/email/activity/MailboxFinder;)J

    move-result-wide v0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    const-string v0, "Email"

    const-string v1, "MailboxFinder: updateMailboxListCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    if-eqz p1, :cond_2

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/MailboxFinder$ControllerResults;->this$0:Lcom/android/email/activity/MailboxFinder;

    #getter for: Lcom/android/email/activity/MailboxFinder;->mCallback:Lcom/android/email/activity/MailboxFinder$Callback;
    invoke-static {v0}, Lcom/android/email/activity/MailboxFinder;->access$300(Lcom/android/email/activity/MailboxFinder;)Lcom/android/email/activity/MailboxFinder$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MailboxFinder$ControllerResults;->this$0:Lcom/android/email/activity/MailboxFinder;

    #getter for: Lcom/android/email/activity/MailboxFinder;->mAccountId:J
    invoke-static {v1}, Lcom/android/email/activity/MailboxFinder;->access$200(Lcom/android/email/activity/MailboxFinder;)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/android/email/activity/MailboxFinder$Callback;->onMailboxNotFound(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    iget-object v0, p0, Lcom/android/email/activity/MailboxFinder$ControllerResults;->this$0:Lcom/android/email/activity/MailboxFinder;

    #calls: Lcom/android/email/activity/MailboxFinder;->close()V
    invoke-static {v0}, Lcom/android/email/activity/MailboxFinder;->access$400(Lcom/android/email/activity/MailboxFinder;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/email/activity/MailboxFinder$ControllerResults;->this$0:Lcom/android/email/activity/MailboxFinder;

    #calls: Lcom/android/email/activity/MailboxFinder;->close()V
    invoke-static {v1}, Lcom/android/email/activity/MailboxFinder;->access$400(Lcom/android/email/activity/MailboxFinder;)V

    throw v0

    .line 150
    :cond_2
    const/16 v0, 0x64

    if-ne p4, v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/email/activity/MailboxFinder$ControllerResults;->this$0:Lcom/android/email/activity/MailboxFinder;

    new-instance v1, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;

    iget-object v2, p0, Lcom/android/email/activity/MailboxFinder$ControllerResults;->this$0:Lcom/android/email/activity/MailboxFinder;

    invoke-direct {v1, v2, v3}, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;-><init>(Lcom/android/email/activity/MailboxFinder;Z)V

    #setter for: Lcom/android/email/activity/MailboxFinder;->mTask:Lcom/android/email/activity/MailboxFinder$FindMailboxTask;
    invoke-static {v0, v1}, Lcom/android/email/activity/MailboxFinder;->access$502(Lcom/android/email/activity/MailboxFinder;Lcom/android/email/activity/MailboxFinder$FindMailboxTask;)Lcom/android/email/activity/MailboxFinder$FindMailboxTask;

    .line 153
    iget-object v0, p0, Lcom/android/email/activity/MailboxFinder$ControllerResults;->this$0:Lcom/android/email/activity/MailboxFinder;

    #getter for: Lcom/android/email/activity/MailboxFinder;->mTask:Lcom/android/email/activity/MailboxFinder$FindMailboxTask;
    invoke-static {v0}, Lcom/android/email/activity/MailboxFinder;->access$500(Lcom/android/email/activity/MailboxFinder;)Lcom/android/email/activity/MailboxFinder$FindMailboxTask;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
