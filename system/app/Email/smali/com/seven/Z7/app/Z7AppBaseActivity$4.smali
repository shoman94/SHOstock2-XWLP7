.class Lcom/seven/Z7/app/Z7AppBaseActivity$4;
.super Landroid/os/Handler;
.source "Z7AppBaseActivity.java"


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


# direct methods
.method constructor <init>(Lcom/seven/Z7/app/Z7AppBaseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/seven/Z7/app/Z7AppBaseActivity$4;->this$0:Lcom/seven/Z7/app/Z7AppBaseActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity$4;->this$0:Lcom/seven/Z7/app/Z7AppBaseActivity;

    invoke-virtual {v0}, Lcom/seven/Z7/app/Z7AppBaseActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3ea

    if-ne v0, v1, :cond_1

    .line 154
    iget-object v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity$4;->this$0:Lcom/seven/Z7/app/Z7AppBaseActivity;

    iget-object v1, p0, Lcom/seven/Z7/app/Z7AppBaseActivity$4;->this$0:Lcom/seven/Z7/app/Z7AppBaseActivity;

    #getter for: Lcom/seven/Z7/app/Z7AppBaseActivity;->listenerForpHandler:Lcom/android/email/Email$Z7ConnectionListener;
    invoke-static {v1}, Lcom/seven/Z7/app/Z7AppBaseActivity;->access$200(Lcom/seven/Z7/app/Z7AppBaseActivity;)Lcom/android/email/Email$Z7ConnectionListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/seven/Z7/app/Z7AppBaseActivity;->initializeSevenEngineAndCallGAC(Lcom/android/email/Email$Z7ConnectionListener;)V

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3eb

    if-ne v0, v1, :cond_0

    .line 157
    const-string v0, "Z7AppBaseActivity"

    const-string v1, "GetAvailable Fail ~~~~~~~~~~~~~"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity$4;->this$0:Lcom/seven/Z7/app/Z7AppBaseActivity;

    invoke-virtual {v0}, Lcom/seven/Z7/app/Z7AppBaseActivity;->stopConnectionTimeOut()V

    .line 159
    iget-object v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity$4;->this$0:Lcom/seven/Z7/app/Z7AppBaseActivity;

    #calls: Lcom/seven/Z7/app/Z7AppBaseActivity;->showPopUpForConnectionFail()V
    invoke-static {v0}, Lcom/seven/Z7/app/Z7AppBaseActivity;->access$100(Lcom/seven/Z7/app/Z7AppBaseActivity;)V

    goto :goto_0
.end method
