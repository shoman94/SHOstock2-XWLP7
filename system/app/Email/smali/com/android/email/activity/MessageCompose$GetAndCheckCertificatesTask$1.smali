.class Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask$1;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;->doInBackground([Ljava/lang/Void;)[Ljava/lang/String;
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
    .line 4778
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask$1;->this$1:Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 4780
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask$1;->this$1:Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;->mDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask$1;->this$1:Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;

    iget-object v1, v1, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    const v2, 0x7f0804d7

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 4781
    return-void
.end method
