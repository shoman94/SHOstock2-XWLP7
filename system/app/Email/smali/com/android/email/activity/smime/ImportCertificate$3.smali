.class Lcom/android/email/activity/smime/ImportCertificate$3;
.super Ljava/lang/Object;
.source "ImportCertificate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/smime/ImportCertificate;->importCertificate(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/smime/ImportCertificate;

.field final synthetic val$e:Lcom/android/emailcommon/smime/CertificateManagerException;


# direct methods
.method constructor <init>(Lcom/android/email/activity/smime/ImportCertificate;Lcom/android/emailcommon/smime/CertificateManagerException;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 286
    iput-object p1, p0, Lcom/android/email/activity/smime/ImportCertificate$3;->this$0:Lcom/android/email/activity/smime/ImportCertificate;

    iput-object p2, p0, Lcom/android/email/activity/smime/ImportCertificate$3;->val$e:Lcom/android/emailcommon/smime/CertificateManagerException;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 288
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 289
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "certificate_error_msg"

    iget-object v3, p0, Lcom/android/email/activity/smime/ImportCertificate$3;->val$e:Lcom/android/emailcommon/smime/CertificateManagerException;

    invoke-virtual {v3}, Lcom/android/emailcommon/smime/CertificateManagerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 291
    .local v1, msg:Landroid/os/Message;
    const/16 v2, 0x3ea

    iput v2, v1, Landroid/os/Message;->what:I

    .line 292
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 293
    iget-object v2, p0, Lcom/android/email/activity/smime/ImportCertificate$3;->this$0:Lcom/android/email/activity/smime/ImportCertificate;

    #getter for: Lcom/android/email/activity/smime/ImportCertificate;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/email/activity/smime/ImportCertificate;->access$500(Lcom/android/email/activity/smime/ImportCertificate;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 295
    return-void
.end method
