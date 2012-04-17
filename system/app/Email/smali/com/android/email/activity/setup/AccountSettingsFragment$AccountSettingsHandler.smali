.class Lcom/android/email/activity/setup/AccountSettingsFragment$AccountSettingsHandler;
.super Landroid/os/Handler;
.source "AccountSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccountSettingsHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 864
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$AccountSettingsHandler;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public emptyTrashStatus(I)V
    .locals 3
    .parameter "status"

    .prologue
    .line 885
    const/4 v1, 0x1

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 886
    .local v0, msg:Landroid/os/Message;
    packed-switch p1, :pswitch_data_0

    .line 901
    :pswitch_0
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$AccountSettingsHandler;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    const v2, 0x7f0801f3

    invoke-virtual {v1, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 904
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment$AccountSettingsHandler;->sendMessage(Landroid/os/Message;)Z

    .line 905
    return-void

    .line 888
    :pswitch_1
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$AccountSettingsHandler;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    const v2, 0x7f0801f2

    invoke-virtual {v1, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0

    .line 891
    :pswitch_2
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$AccountSettingsHandler;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    const v2, 0x7f0801f4

    invoke-virtual {v1, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0

    .line 894
    :pswitch_3
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$AccountSettingsHandler;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    const v2, 0x7f08033d

    invoke-virtual {v1, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0

    .line 897
    :pswitch_4
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$AccountSettingsHandler;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    const v2, 0x7f08050d

    invoke-virtual {v1, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0

    .line 886
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 869
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 879
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 882
    :cond_0
    :goto_0
    return-void

    .line 872
    :pswitch_0
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$AccountSettingsHandler;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mPostEmptyTrash_0:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$1000(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 873
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$AccountSettingsHandler;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mPostEmptyTrash_0:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$1000(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 874
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$AccountSettingsHandler;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mPostEmptyTrash_1:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$1100(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/app/AlertDialog;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 875
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$AccountSettingsHandler;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mPostEmptyTrash_1:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$1100(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 869
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
