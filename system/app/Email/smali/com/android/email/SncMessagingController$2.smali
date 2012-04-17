.class Lcom/android/email/SncMessagingController$2;
.super Ljava/lang/Object;
.source "SncMessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/SncMessagingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/SncMessagingController;

.field final synthetic val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

.field final synthetic val$emailsearchinfo:Lcom/android/email/EmailSearchAdapter;

.field final synthetic val$folder:Lcom/android/emailcommon/provider/EmailContent$Mailbox;


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 453
    iget-object v0, p0, Lcom/android/email/SncMessagingController$2;->this$0:Lcom/android/email/SncMessagingController;

    iget-object v1, p0, Lcom/android/email/SncMessagingController$2;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, p0, Lcom/android/email/SncMessagingController$2;->val$folder:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v3, p0, Lcom/android/email/SncMessagingController$2;->val$emailsearchinfo:Lcom/android/email/EmailSearchAdapter;

    #calls: Lcom/android/email/SncMessagingController;->synchronizeMailboxSearchOnServer(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/email/EmailSearchAdapter;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/email/SncMessagingController;->access$300(Lcom/android/email/SncMessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/email/EmailSearchAdapter;)V

    .line 454
    return-void
.end method
