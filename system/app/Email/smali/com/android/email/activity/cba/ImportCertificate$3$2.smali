.class Lcom/android/email/activity/cba/ImportCertificate$3$2;
.super Ljava/lang/Object;
.source "ImportCertificate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/cba/ImportCertificate$3;->onDismiss(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/cba/ImportCertificate$3;


# direct methods
.method constructor <init>(Lcom/android/email/activity/cba/ImportCertificate$3;)V
    .locals 0
    .parameter

    .prologue
    .line 333
    iput-object p1, p0, Lcom/android/email/activity/cba/ImportCertificate$3$2;->this$1:Lcom/android/email/activity/cba/ImportCertificate$3;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 336
    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/cba/ImportCertificate$3$2;->this$1:Lcom/android/email/activity/cba/ImportCertificate$3;

    iget-object v0, v0, Lcom/android/email/activity/cba/ImportCertificate$3;->this$0:Lcom/android/email/activity/cba/ImportCertificate;

    #getter for: Lcom/android/email/activity/cba/ImportCertificate;->mImportedCertificateName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/email/activity/cba/ImportCertificate;->access$900(Lcom/android/email/activity/cba/ImportCertificate;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/android/email/activity/cba/ImportCertificate$3$2;->this$1:Lcom/android/email/activity/cba/ImportCertificate$3;

    iget-object v0, v0, Lcom/android/email/activity/cba/ImportCertificate$3;->this$0:Lcom/android/email/activity/cba/ImportCertificate;

    #getter for: Lcom/android/email/activity/cba/ImportCertificate;->mCertificateManager:Lcom/android/email/cba/CertificateMgr;
    invoke-static {v0}, Lcom/android/email/activity/cba/ImportCertificate;->access$1000(Lcom/android/email/activity/cba/ImportCertificate;)Lcom/android/email/cba/CertificateMgr;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/cba/ImportCertificate$3$2;->this$1:Lcom/android/email/activity/cba/ImportCertificate$3;

    iget-object v1, v1, Lcom/android/email/activity/cba/ImportCertificate$3;->this$0:Lcom/android/email/activity/cba/ImportCertificate;

    #getter for: Lcom/android/email/activity/cba/ImportCertificate;->mImportedCertificateName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/email/activity/cba/ImportCertificate;->access$900(Lcom/android/email/activity/cba/ImportCertificate;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/cba/CertificateMgr;->removeCertificate(Ljava/lang/String;)Z

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/cba/ImportCertificate$3$2;->this$1:Lcom/android/email/activity/cba/ImportCertificate$3;

    iget-object v0, v0, Lcom/android/email/activity/cba/ImportCertificate$3;->this$0:Lcom/android/email/activity/cba/ImportCertificate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/cba/ImportCertificate;->removeDialog(I)V

    .line 340
    iget-object v0, p0, Lcom/android/email/activity/cba/ImportCertificate$3$2;->this$1:Lcom/android/email/activity/cba/ImportCertificate$3;

    iget-object v0, v0, Lcom/android/email/activity/cba/ImportCertificate$3;->this$0:Lcom/android/email/activity/cba/ImportCertificate;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/email/activity/cba/ImportCertificate;->removeDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    :goto_0
    return-void

    .line 341
    :catch_0
    move-exception v0

    goto :goto_0
.end method
