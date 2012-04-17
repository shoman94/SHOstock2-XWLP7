.class Lcom/android/email/service/EnterpriseDMReceiver$2;
.super Ljava/lang/Object;
.source "EnterpriseDMReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/service/EnterpriseDMReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/service/EnterpriseDMReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/email/service/EnterpriseDMReceiver;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/email/service/EnterpriseDMReceiver$2;->this$0:Lcom/android/email/service/EnterpriseDMReceiver;

    iput-object p2, p0, Lcom/android/email/service/EnterpriseDMReceiver$2;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/email/service/EnterpriseDMReceiver$2;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 113
    iget-object v5, p0, Lcom/android/email/service/EnterpriseDMReceiver$2;->val$intent:Landroid/content/Intent;

    const-string v6, "accountid"

    const-wide/16 v7, -0x1

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 114
    .local v1, accid:J
    iget-object v5, p0, Lcom/android/email/service/EnterpriseDMReceiver$2;->val$intent:Landroid/content/Intent;

    const-string v6, "alias"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 115
    .local v3, alias:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/email/service/EnterpriseDMReceiver$2;->val$context:Landroid/content/Context;

    invoke-static {v5, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 117
    .local v0, acc:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-static {}, Lcom/android/email/service/EnterpriseDMReceiver;->access$100()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Alias - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    .line 119
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 120
    .local v4, cv:Landroid/content/ContentValues;
    const-string v5, "cbaCertificateAlias"

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v5, p0, Lcom/android/email/service/EnterpriseDMReceiver$2;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v5, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 123
    .end local v4           #cv:Landroid/content/ContentValues;
    :cond_0
    return-void
.end method
