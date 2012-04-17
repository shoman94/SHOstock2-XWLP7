.class Lcom/seven/Z7/app/Z7AppBaseActivity$15;
.super Ljava/lang/Object;
.source "Z7AppBaseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seven/Z7/app/Z7AppBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/seven/Z7/app/Z7AppBaseActivity;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$positiveCall:Ljava/lang/Runnable;


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 583
    iget-object v1, p0, Lcom/seven/Z7/app/Z7AppBaseActivity$15;->this$0:Lcom/seven/Z7/app/Z7AppBaseActivity;

    iget-object v1, v1, Lcom/seven/Z7/app/Z7AppBaseActivity;->mApp:Lcom/android/email/Email;

    invoke-virtual {v1}, Lcom/android/email/Email;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 585
    :try_start_0
    iget-object v1, p0, Lcom/seven/Z7/app/Z7AppBaseActivity$15;->this$0:Lcom/seven/Z7/app/Z7AppBaseActivity;

    iget-object v1, v1, Lcom/seven/Z7/app/Z7AppBaseActivity;->mApp:Lcom/android/email/Email;

    invoke-virtual {v1}, Lcom/android/email/Email;->getIService()Lcom/seven/Z7/common/IZ7Service;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/seven/Z7/common/IZ7Service;->pause(Z)V

    .line 586
    iget-object v1, p0, Lcom/seven/Z7/app/Z7AppBaseActivity$15;->this$0:Lcom/seven/Z7/app/Z7AppBaseActivity;

    iget-object v1, v1, Lcom/seven/Z7/app/Z7AppBaseActivity;->mApp:Lcom/android/email/Email;

    iget-object v2, p0, Lcom/seven/Z7/app/Z7AppBaseActivity$15;->val$handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/seven/Z7/app/Z7AppBaseActivity$15;->val$positiveCall:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v3}, Lcom/android/email/Email;->callWhenServiceConnected(Landroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 591
    :cond_0
    :goto_0
    return-void

    .line 587
    :catch_0
    move-exception v0

    .line 588
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "Z7AppBaseActivity"

    const-string v2, "onOptionsItemSelected"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
