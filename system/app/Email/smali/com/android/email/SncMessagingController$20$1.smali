.class Lcom/android/email/SncMessagingController$20$1;
.super Ljava/lang/Object;
.source "SncMessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/SncMessagingController$20;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/SncMessagingController$20;


# direct methods
.method constructor <init>(Lcom/android/email/SncMessagingController$20;)V
    .locals 0
    .parameter

    .prologue
    .line 4148
    iput-object p1, p0, Lcom/android/email/SncMessagingController$20$1;->this$1:Lcom/android/email/SncMessagingController$20;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 4150
    iget-object v0, p0, Lcom/android/email/SncMessagingController$20$1;->this$1:Lcom/android/email/SncMessagingController$20;

    iget-object v0, v0, Lcom/android/email/SncMessagingController$20;->this$0:Lcom/android/email/SncMessagingController;

    iget-object v1, p0, Lcom/android/email/SncMessagingController$20$1;->this$1:Lcom/android/email/SncMessagingController$20;

    iget-object v1, v1, Lcom/android/email/SncMessagingController$20;->val$folder:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/SncMessagingController;->setFetchFlag(JI)V

    .line 4151
    iget-object v0, p0, Lcom/android/email/SncMessagingController$20$1;->this$1:Lcom/android/email/SncMessagingController$20;

    iget-object v0, v0, Lcom/android/email/SncMessagingController$20;->this$0:Lcom/android/email/SncMessagingController;

    iget-object v1, p0, Lcom/android/email/SncMessagingController$20$1;->this$1:Lcom/android/email/SncMessagingController$20;

    iget-object v1, v1, Lcom/android/email/SncMessagingController$20;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, p0, Lcom/android/email/SncMessagingController$20$1;->this$1:Lcom/android/email/SncMessagingController$20;

    iget-object v2, v2, Lcom/android/email/SncMessagingController$20;->val$folder:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    invoke-virtual {v0, v1, v2}, Lcom/android/email/SncMessagingController;->qreSyncMailboxSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    .line 4152
    return-void
.end method
