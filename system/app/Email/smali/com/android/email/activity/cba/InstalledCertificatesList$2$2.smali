.class Lcom/android/email/activity/cba/InstalledCertificatesList$2$2;
.super Ljava/lang/Object;
.source "InstalledCertificatesList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/cba/InstalledCertificatesList$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/cba/InstalledCertificatesList$2;


# direct methods
.method constructor <init>(Lcom/android/email/activity/cba/InstalledCertificatesList$2;)V
    .locals 0
    .parameter

    .prologue
    .line 363
    iput-object p1, p0, Lcom/android/email/activity/cba/InstalledCertificatesList$2$2;->this$1:Lcom/android/email/activity/cba/InstalledCertificatesList$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/email/activity/cba/InstalledCertificatesList$2$2;->this$1:Lcom/android/email/activity/cba/InstalledCertificatesList$2;

    iget-object v0, v0, Lcom/android/email/activity/cba/InstalledCertificatesList$2;->this$0:Lcom/android/email/activity/cba/InstalledCertificatesList;

    #calls: Lcom/android/email/activity/cba/InstalledCertificatesList;->fillCertificateList()V
    invoke-static {v0}, Lcom/android/email/activity/cba/InstalledCertificatesList;->access$300(Lcom/android/email/activity/cba/InstalledCertificatesList;)V

    .line 368
    iget-object v0, p0, Lcom/android/email/activity/cba/InstalledCertificatesList$2$2;->this$1:Lcom/android/email/activity/cba/InstalledCertificatesList$2;

    iget-object v0, v0, Lcom/android/email/activity/cba/InstalledCertificatesList$2;->this$0:Lcom/android/email/activity/cba/InstalledCertificatesList;

    invoke-virtual {v0}, Lcom/android/email/activity/cba/InstalledCertificatesList;->invalidateOptionsMenu()V

    .line 370
    return-void
.end method
