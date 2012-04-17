.class Lcom/android/email/SncMessagingController$17;
.super Ljava/lang/Object;
.source "SncMessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/SncMessagingController;->sendPendingMessages(Lcom/android/emailcommon/provider/EmailContent$Account;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/SncMessagingController;

.field final synthetic val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

.field final synthetic val$sentFolderId:J


# direct methods
.method constructor <init>(Lcom/android/email/SncMessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;J)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3636
    iput-object p1, p0, Lcom/android/email/SncMessagingController$17;->this$0:Lcom/android/email/SncMessagingController;

    iput-object p2, p0, Lcom/android/email/SncMessagingController$17;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    iput-wide p3, p0, Lcom/android/email/SncMessagingController$17;->val$sentFolderId:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3638
    iget-object v0, p0, Lcom/android/email/SncMessagingController$17;->this$0:Lcom/android/email/SncMessagingController;

    iget-object v1, p0, Lcom/android/email/SncMessagingController$17;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, p0, Lcom/android/email/SncMessagingController$17;->val$sentFolderId:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/SncMessagingController;->sendPendingMessagesSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;J)V

    .line 3639
    return-void
.end method
