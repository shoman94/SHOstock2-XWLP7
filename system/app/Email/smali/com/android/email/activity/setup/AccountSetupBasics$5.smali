.class Lcom/android/email/activity/setup/AccountSetupBasics$5;
.super Ljava/lang/Object;
.source "AccountSetupBasics.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSetupBasics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupBasics;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupBasics;)V
    .locals 0
    .parameter

    .prologue
    .line 1447
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupBasics$5;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1447
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasics$5;->call()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/String;
    .locals 7

    .prologue
    .line 1449
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics$5;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    .line 1450
    .local v1, context:Landroid/content/Context;
    const/4 v4, 0x0

    .line 1451
    .local v4, name:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDefaultAccountId(Landroid/content/Context;)J

    move-result-wide v2

    .line 1452
    .local v2, defaultId:J
    const-wide/16 v5, -0x1

    cmp-long v5, v2, v5

    if-eqz v5, :cond_0

    .line 1453
    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 1454
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-eqz v0, :cond_0

    .line 1455
    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSenderName()Ljava/lang/String;

    move-result-object v4

    .line 1458
    .end local v0           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    :cond_0
    return-object v4
.end method
