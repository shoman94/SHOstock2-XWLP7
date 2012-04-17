.class Lcom/android/email/MessagingController$12;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/MessagingController;->processPendingActions(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/MessagingController;

.field final synthetic val$accountId:J


# direct methods
.method constructor <init>(Lcom/android/email/MessagingController;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2986
    iput-object p1, p0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    iput-wide p2, p0, Lcom/android/email/MessagingController$12;->val$accountId:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2989
    :try_start_0
    iget-object v1, p0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/email/MessagingController$12;->val$accountId:J

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 2991
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-nez v0, :cond_0

    .line 3004
    .end local v0           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    :goto_0
    return-void

    .line 2994
    .restart local v0       #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    :cond_0
    iget-object v1, p0, Lcom/android/email/MessagingController$12;->this$0:Lcom/android/email/MessagingController;

    #calls: Lcom/android/email/MessagingController;->processPendingActionsSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;)V
    invoke-static {v1, v0}, Lcom/android/email/MessagingController;->access$600(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;)V
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2995
    .end local v0           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    :catch_0
    move-exception v1

    goto :goto_0
.end method
