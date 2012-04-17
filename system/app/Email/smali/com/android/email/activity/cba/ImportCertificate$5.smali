.class Lcom/android/email/activity/cba/ImportCertificate$5;
.super Ljava/lang/Object;
.source "ImportCertificate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/cba/ImportCertificate;->importCertificate(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/cba/ImportCertificate;


# direct methods
.method constructor <init>(Lcom/android/email/activity/cba/ImportCertificate;)V
    .locals 0
    .parameter

    .prologue
    .line 460
    iput-object p1, p0, Lcom/android/email/activity/cba/ImportCertificate$5;->this$0:Lcom/android/email/activity/cba/ImportCertificate;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 462
    iget-object v0, p0, Lcom/android/email/activity/cba/ImportCertificate$5;->this$0:Lcom/android/email/activity/cba/ImportCertificate;

    invoke-virtual {v0}, Lcom/android/email/activity/cba/ImportCertificate;->finish()V

    .line 463
    iget-object v0, p0, Lcom/android/email/activity/cba/ImportCertificate$5;->this$0:Lcom/android/email/activity/cba/ImportCertificate;

    invoke-virtual {v0}, Lcom/android/email/activity/cba/ImportCertificate;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0804c8

    const/16 v2, 0xbb8

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 466
    return-void
.end method
