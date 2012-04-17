.class Lcom/android/email/SncMessagingController$20;
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

.field final synthetic val$folder:Lcom/android/emailcommon/provider/EmailContent$Mailbox;


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 4148
    iget-object v0, p0, Lcom/android/email/SncMessagingController$20;->this$0:Lcom/android/email/SncMessagingController;

    const-string v1, "onIdleFetch"

    new-instance v2, Lcom/android/email/SncMessagingController$20$1;

    invoke-direct {v2, p0}, Lcom/android/email/SncMessagingController$20$1;-><init>(Lcom/android/email/SncMessagingController$20;)V

    new-instance v3, Lcom/android/email/SncMessagingController$CommandInfo;

    iget-object v4, p0, Lcom/android/email/SncMessagingController$20;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-object v6, p0, Lcom/android/email/SncMessagingController$20;->val$folder:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v6, v6, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/android/email/SncMessagingController$CommandInfo;-><init>(JJ)V

    #calls: Lcom/android/email/SncMessagingController;->put(Ljava/lang/String;Ljava/lang/Runnable;Lcom/android/email/SncMessagingController$CommandInfo;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/email/SncMessagingController;->access$900(Lcom/android/email/SncMessagingController;Ljava/lang/String;Ljava/lang/Runnable;Lcom/android/email/SncMessagingController$CommandInfo;)V

    .line 4154
    return-void
.end method
