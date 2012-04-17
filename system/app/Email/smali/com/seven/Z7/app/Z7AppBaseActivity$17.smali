.class Lcom/seven/Z7/app/Z7AppBaseActivity$17;
.super Ljava/lang/Object;
.source "Z7AppBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/seven/Z7/app/Z7AppBaseActivity;->initializeSevenEngineAndCallGAC(Lcom/android/email/Email$Z7ConnectionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/seven/Z7/app/Z7AppBaseActivity;

.field final synthetic val$listener:Lcom/android/email/Email$Z7ConnectionListener;


# direct methods
.method constructor <init>(Lcom/seven/Z7/app/Z7AppBaseActivity;Lcom/android/email/Email$Z7ConnectionListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 753
    iput-object p1, p0, Lcom/seven/Z7/app/Z7AppBaseActivity$17;->this$0:Lcom/seven/Z7/app/Z7AppBaseActivity;

    iput-object p2, p0, Lcom/seven/Z7/app/Z7AppBaseActivity$17;->val$listener:Lcom/android/email/Email$Z7ConnectionListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const-wide/16 v4, 0x1f4

    const/16 v3, 0x3ea

    .line 756
    iget-object v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity$17;->this$0:Lcom/seven/Z7/app/Z7AppBaseActivity;

    iget-object v0, v0, Lcom/seven/Z7/app/Z7AppBaseActivity;->mApp:Lcom/android/email/Email;

    invoke-virtual {v0}, Lcom/android/email/Email;->isServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 757
    const-string v0, "Z7AppBaseActivity"

    const-string v1, "waiting for service connection..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    iget-object v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity$17;->this$0:Lcom/seven/Z7/app/Z7AppBaseActivity;

    #getter for: Lcom/seven/Z7/app/Z7AppBaseActivity;->pHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/seven/Z7/app/Z7AppBaseActivity;->access$500(Lcom/seven/Z7/app/Z7AppBaseActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 808
    :goto_0
    return-void

    .line 762
    :cond_0
    iget-object v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity$17;->this$0:Lcom/seven/Z7/app/Z7AppBaseActivity;

    iget-object v0, v0, Lcom/seven/Z7/app/Z7AppBaseActivity;->mApp:Lcom/android/email/Email;

    invoke-virtual {v0}, Lcom/android/email/Email;->isEngineInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity$17;->this$0:Lcom/seven/Z7/app/Z7AppBaseActivity;

    #getter for: Lcom/seven/Z7/app/Z7AppBaseActivity;->mWaitForEngineRetryTimes:I
    invoke-static {v0}, Lcom/seven/Z7/app/Z7AppBaseActivity;->access$600(Lcom/seven/Z7/app/Z7AppBaseActivity;)I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 764
    iget-object v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity$17;->this$0:Lcom/seven/Z7/app/Z7AppBaseActivity;

    invoke-static {v0}, Lcom/seven/Z7/app/Z7AppBaseActivity;->access$608(Lcom/seven/Z7/app/Z7AppBaseActivity;)I

    .line 765
    const-string v0, "Z7AppBaseActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "waiting for engine initialized, retry times:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/seven/Z7/app/Z7AppBaseActivity$17;->this$0:Lcom/seven/Z7/app/Z7AppBaseActivity;

    #getter for: Lcom/seven/Z7/app/Z7AppBaseActivity;->mWaitForEngineRetryTimes:I
    invoke-static {v2}, Lcom/seven/Z7/app/Z7AppBaseActivity;->access$600(Lcom/seven/Z7/app/Z7AppBaseActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    iget-object v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity$17;->this$0:Lcom/seven/Z7/app/Z7AppBaseActivity;

    #getter for: Lcom/seven/Z7/app/Z7AppBaseActivity;->pHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/seven/Z7/app/Z7AppBaseActivity;->access$500(Lcom/seven/Z7/app/Z7AppBaseActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 771
    :cond_1
    iget-object v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity$17;->this$0:Lcom/seven/Z7/app/Z7AppBaseActivity;

    const/4 v1, 0x0

    #setter for: Lcom/seven/Z7/app/Z7AppBaseActivity;->mWaitForEngineRetryTimes:I
    invoke-static {v0, v1}, Lcom/seven/Z7/app/Z7AppBaseActivity;->access$602(Lcom/seven/Z7/app/Z7AppBaseActivity;I)I

    .line 772
    const-string v0, "Z7AppBaseActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Seven engine isInitialized:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/seven/Z7/app/Z7AppBaseActivity$17;->this$0:Lcom/seven/Z7/app/Z7AppBaseActivity;

    iget-object v2, v2, Lcom/seven/Z7/app/Z7AppBaseActivity;->mApp:Lcom/android/email/Email;

    invoke-virtual {v2}, Lcom/android/email/Email;->isEngineInitialized()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    :try_start_0
    iget-object v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity$17;->this$0:Lcom/seven/Z7/app/Z7AppBaseActivity;

    iget-object v0, v0, Lcom/seven/Z7/app/Z7AppBaseActivity;->zHandler:Lcom/digc/seven/Z7MailHandler;

    invoke-virtual {v0}, Lcom/digc/seven/Z7MailHandler;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 775
    iget-object v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity$17;->this$0:Lcom/seven/Z7/app/Z7AppBaseActivity;

    #getter for: Lcom/seven/Z7/app/Z7AppBaseActivity;->pHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/seven/Z7/app/Z7AppBaseActivity;->access$500(Lcom/seven/Z7/app/Z7AppBaseActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3eb

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 778
    :catch_0
    move-exception v6

    .line 780
    .local v6, e:Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    .line 782
    .end local v6           #e:Landroid/os/RemoteException;
    :cond_2
    iget-object v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity$17;->this$0:Lcom/seven/Z7/app/Z7AppBaseActivity;

    iget-object v0, v0, Lcom/seven/Z7/app/Z7AppBaseActivity;->zHandler:Lcom/digc/seven/Z7MailHandler;

    iget-object v1, p0, Lcom/seven/Z7/app/Z7AppBaseActivity$17;->val$listener:Lcom/android/email/Email$Z7ConnectionListener;

    invoke-virtual {v0, v1}, Lcom/digc/seven/Z7MailHandler;->registerListener(Lcom/android/email/Email$Z7ConnectionListener;)V

    .line 783
    iget-object v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity$17;->this$0:Lcom/seven/Z7/app/Z7AppBaseActivity;

    iget-object v0, v0, Lcom/seven/Z7/app/Z7AppBaseActivity;->zHandler:Lcom/digc/seven/Z7MailHandler;

    iget-object v1, p0, Lcom/seven/Z7/app/Z7AppBaseActivity$17;->this$0:Lcom/seven/Z7/app/Z7AppBaseActivity;

    iget-object v1, v1, Lcom/seven/Z7/app/Z7AppBaseActivity;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/seven/Z7/app/Z7AppBaseActivity$17;->this$0:Lcom/seven/Z7/app/Z7AppBaseActivity;

    new-instance v3, Lcom/seven/Z7/app/Z7AppBaseActivity$17$1;

    invoke-direct {v3, p0}, Lcom/seven/Z7/app/Z7AppBaseActivity$17$1;-><init>(Lcom/seven/Z7/app/Z7AppBaseActivity$17;)V

    new-instance v4, Lcom/seven/Z7/app/Z7AppBaseActivity$17$2;

    invoke-direct {v4, p0}, Lcom/seven/Z7/app/Z7AppBaseActivity$17$2;-><init>(Lcom/seven/Z7/app/Z7AppBaseActivity$17;)V

    new-instance v5, Lcom/seven/Z7/app/Z7AppBaseActivity$17$3;

    invoke-direct {v5, p0}, Lcom/seven/Z7/app/Z7AppBaseActivity$17$3;-><init>(Lcom/seven/Z7/app/Z7AppBaseActivity$17;)V

    invoke-virtual/range {v0 .. v5}, Lcom/digc/seven/Z7MailHandler;->getAvailableConnectors(Landroid/os/Handler;Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnKeyListener;Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method
