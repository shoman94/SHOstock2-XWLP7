.class Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask$2;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;)V
    .locals 0
    .parameter

    .prologue
    .line 4817
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask$2;->this$1:Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 4821
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 4822
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask$2;->this$1:Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;

    const/4 v1, 0x1

    #setter for: Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;->sendCanceled:Z
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;->access$7802(Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;Z)Z

    .line 4823
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask$2;->this$1:Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 4825
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
