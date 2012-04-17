.class Lcom/android/email/activity/MessageViewFragmentBase$9;
.super Ljava/lang/Object;
.source "MessageViewFragmentBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageViewFragmentBase;->onDownloadAttachmentAll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragmentBase;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;)V
    .locals 0
    .parameter

    .prologue
    .line 3112
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$9;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "arg0"
    .parameter "arg1"
    .parameter "event"

    .prologue
    .line 3115
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 3117
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$9;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mDownloadAttachmentAllTask:Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2000(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 3118
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$9;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v1, 0x0

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase;->mDownloadAttachmentAllTask:Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2002(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;)Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;

    .line 3120
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$9;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->onCancelDownloadAllAttachment()V
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2100(Lcom/android/email/activity/MessageViewFragmentBase;)V

    .line 3122
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$9;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1000(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3123
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$9;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1000(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 3126
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
