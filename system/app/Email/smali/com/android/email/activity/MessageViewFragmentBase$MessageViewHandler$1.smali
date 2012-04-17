.class Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler$1;
.super Ljava/lang/Object;
.source "MessageViewFragmentBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 10756
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler$1;->this$1:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 10761
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    .line 10762
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler$1;->this$1:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    iget-object v3, v3, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase;->dialogCancelled:Z
    invoke-static {v3, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9502(Lcom/android/email/activity/MessageViewFragmentBase;Z)Z

    .line 10765
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler$1;->this$1:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    iget-object v3, v3, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mDownloadSmimeAttachment:Z
    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7700(Lcom/android/email/activity/MessageViewFragmentBase;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 10767
    :try_start_0
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler$1;->this$1:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    iget-object v2, v2, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v2, v2, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_0

    .line 10768
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler$1;->this$1:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    iget-object v2, v2, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v2, v2, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog2:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 10804
    :cond_0
    :goto_0
    return v1

    .line 10770
    :catch_0
    move-exception v0

    .line 10771
    .local v0, e:Landroid/view/WindowManager$BadTokenException;
    :try_start_1
    const-string v2, "MessageViewFragmentBase >>"

    const-string v3, "BadTokenException!!!!!!!"

    invoke-static {v2, v3}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 10773
    invoke-virtual {v0}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 10781
    .end local v0           #e:Landroid/view/WindowManager$BadTokenException;
    :catchall_0
    move-exception v1

    throw v1

    .line 10774
    :catch_1
    move-exception v0

    .line 10775
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_2
    const-string v2, "MessageViewFragmentBase >>"

    const-string v3, "IllegalStateException!!!!!!!"

    invoke-static {v2, v3}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 10777
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 10778
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    .line 10779
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v2, "MessageViewFragmentBase >>"

    const-string v3, "IllegalArgumentException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10780
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 10786
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :cond_1
    sget-boolean v3, Lcom/android/email/activity/MessageViewFragmentBase;->mIsLaunchAttach:Z

    if-ne v3, v1, :cond_2

    .line 10787
    sput-boolean v2, Lcom/android/email/activity/MessageViewFragmentBase;->mIsLaunchAttach:Z

    .line 10792
    invoke-static {v1}, Lcom/android/email/Controller;->SetAttachdownstop(Z)V

    .line 10793
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler$1;->this$1:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    iget-object v3, v3, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;
    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->fetching_attachmentProgress_cancel()V

    .line 10800
    :cond_2
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler$1;->this$1:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    iget-object v3, v3, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;
    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->setAttachmentsEnabled(Z)V

    move v1, v2

    .line 10801
    goto :goto_0

    :cond_3
    move v1, v2

    .line 10804
    goto :goto_0
.end method
