.class Lcom/android/email/SncMessagingController$10;
.super Ljava/lang/Object;
.source "SncMessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/SncMessagingController;->processPendingActions(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/SncMessagingController;

.field final synthetic val$accountId:J


# direct methods
.method constructor <init>(Lcom/android/email/SncMessagingController;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2213
    iput-object p1, p0, Lcom/android/email/SncMessagingController$10;->this$0:Lcom/android/email/SncMessagingController;

    iput-wide p2, p0, Lcom/android/email/SncMessagingController$10;->val$accountId:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2216
    :try_start_0
    iget-object v1, p0, Lcom/android/email/SncMessagingController$10;->this$0:Lcom/android/email/SncMessagingController;

    #getter for: Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/email/SncMessagingController;->access$100(Lcom/android/email/SncMessagingController;)Landroid/content/Context;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/email/SncMessagingController$10;->val$accountId:J

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 2218
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-nez v0, :cond_0

    .line 2231
    .end local v0           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    :goto_0
    return-void

    .line 2221
    .restart local v0       #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    :cond_0
    iget-object v1, p0, Lcom/android/email/SncMessagingController$10;->this$0:Lcom/android/email/SncMessagingController;

    #calls: Lcom/android/email/SncMessagingController;->processPendingActionsSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;)V
    invoke-static {v1, v0}, Lcom/android/email/SncMessagingController;->access$800(Lcom/android/email/SncMessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;)V
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2222
    .end local v0           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    :catch_0
    move-exception v1

    goto :goto_0
.end method
