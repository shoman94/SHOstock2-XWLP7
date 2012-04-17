.class Lcom/digc/seven/Z7MailHandler$1;
.super Ljava/lang/Object;
.source "Z7MailHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digc/seven/Z7MailHandler;->removeAccount(Landroid/os/Handler;ILandroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digc/seven/Z7MailHandler;

.field final synthetic val$accountId:I

.field final synthetic val$act:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/digc/seven/Z7MailHandler;ILandroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/digc/seven/Z7MailHandler$1;->this$0:Lcom/digc/seven/Z7MailHandler;

    iput p2, p0, Lcom/digc/seven/Z7MailHandler$1;->val$accountId:I

    iput-object p3, p0, Lcom/digc/seven/Z7MailHandler$1;->val$act:Landroid/app/Activity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 75
    :try_start_0
    const-string v1, "Z7MailHandler"

    const-string v2, "removeAccount"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-static {}, Lcom/digc/seven/Z7MailHandler;->access$000()Lcom/android/email/Email;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/Email;->getIService()Lcom/seven/Z7/common/IZ7Service;

    move-result-object v1

    iget v2, p0, Lcom/digc/seven/Z7MailHandler$1;->val$accountId:I

    invoke-interface {v1, v2}, Lcom/seven/Z7/common/IZ7Service;->removeAccount(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 79
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/digc/seven/Z7MailHandler$1;->val$act:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/digc/seven/Z7MailHandler$1;->val$act:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/android/email/combined/common/ExceptionUtil;->showDialogException(Landroid/app/Activity;Ljava/lang/Exception;)V

    goto :goto_0
.end method
