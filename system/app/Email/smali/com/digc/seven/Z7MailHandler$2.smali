.class Lcom/digc/seven/Z7MailHandler$2;
.super Ljava/lang/Object;
.source "Z7MailHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digc/seven/Z7MailHandler;->getAvailableConnectors(Landroid/os/Handler;Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnKeyListener;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digc/seven/Z7MailHandler;

.field final synthetic val$act:Landroid/app/Activity;

.field final synthetic val$keyListener:Landroid/content/DialogInterface$OnKeyListener;

.field final synthetic val$listener:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic val$mHandler:Landroid/os/Handler;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/digc/seven/Z7MailHandler;Ljava/lang/Runnable;Landroid/os/Handler;Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnKeyListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/digc/seven/Z7MailHandler$2;->this$0:Lcom/digc/seven/Z7MailHandler;

    iput-object p2, p0, Lcom/digc/seven/Z7MailHandler$2;->val$runnable:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/digc/seven/Z7MailHandler$2;->val$mHandler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/digc/seven/Z7MailHandler$2;->val$act:Landroid/app/Activity;

    iput-object p5, p0, Lcom/digc/seven/Z7MailHandler$2;->val$listener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p6, p0, Lcom/digc/seven/Z7MailHandler$2;->val$keyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 229
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 230
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "email"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 231
    const-string v3, "isFirst"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 233
    const-string v3, "Z7MailHandler"

    const-string v4, "Call getAvailableConnectors() service"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :try_start_0
    invoke-static {}, Lcom/digc/seven/Z7MailHandler;->access$000()Lcom/android/email/Email;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/email/Email;->getIService()Lcom/seven/Z7/common/IZ7Service;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/seven/Z7/common/IZ7Service;->getAvailableConnectors(Landroid/os/Bundle;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :goto_0
    return-void

    .line 237
    :catch_0
    move-exception v1

    .line 238
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "Z7MailHandler"

    const-string v4, "Fail getAvailableConnectors() service"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 239
    instance-of v3, v1, Ljava/lang/NullPointerException;

    if-eqz v3, :cond_1

    .line 241
    :try_start_1
    invoke-static {}, Lcom/digc/seven/Z7MailHandler;->access$000()Lcom/android/email/Email;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/email/Email;->getIService()Lcom/seven/Z7/common/IZ7Service;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/seven/Z7/common/IZ7Service;->getAvailableConnectors(Landroid/os/Bundle;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 242
    :catch_1
    move-exception v2

    .line 244
    .local v2, e1:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/digc/seven/Z7MailHandler$2;->val$runnable:Ljava/lang/Runnable;

    if-eqz v3, :cond_0

    .line 245
    iget-object v3, p0, Lcom/digc/seven/Z7MailHandler$2;->val$mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/digc/seven/Z7MailHandler$2;->val$runnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 246
    :cond_0
    const-string v3, "Z7MailHandler"

    const-string v4, "Fail retry getAvailableConnectors() service"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 247
    iget-object v3, p0, Lcom/digc/seven/Z7MailHandler$2;->val$act:Landroid/app/Activity;

    iget-object v4, p0, Lcom/digc/seven/Z7MailHandler$2;->val$listener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v5, p0, Lcom/digc/seven/Z7MailHandler$2;->val$keyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-static {v3, v1, v4, v5}, Lcom/android/email/combined/common/ExceptionUtil;->showDialogException(Landroid/app/Activity;Ljava/lang/Exception;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnKeyListener;)V

    goto :goto_0

    .line 250
    .end local v2           #e1:Ljava/lang/Exception;
    :cond_1
    iget-object v3, p0, Lcom/digc/seven/Z7MailHandler$2;->val$runnable:Ljava/lang/Runnable;

    if-eqz v3, :cond_2

    .line 251
    iget-object v3, p0, Lcom/digc/seven/Z7MailHandler$2;->val$mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/digc/seven/Z7MailHandler$2;->val$runnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 252
    :cond_2
    const-string v3, "Z7MailHandler"

    const-string v4, "Fail getAvailableConnectors() service"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 253
    iget-object v3, p0, Lcom/digc/seven/Z7MailHandler$2;->val$act:Landroid/app/Activity;

    iget-object v4, p0, Lcom/digc/seven/Z7MailHandler$2;->val$listener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v5, p0, Lcom/digc/seven/Z7MailHandler$2;->val$keyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-static {v3, v1, v4, v5}, Lcom/android/email/combined/common/ExceptionUtil;->showDialogException(Landroid/app/Activity;Ljava/lang/Exception;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnKeyListener;)V

    goto :goto_0
.end method
