.class Lcom/android/email/activity/cba/InstalledCertificatesList$ArrayAdapterWithButtons$1;
.super Ljava/lang/Object;
.source "InstalledCertificatesList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/cba/InstalledCertificatesList$ArrayAdapterWithButtons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/cba/InstalledCertificatesList$ArrayAdapterWithButtons;


# direct methods
.method constructor <init>(Lcom/android/email/activity/cba/InstalledCertificatesList$ArrayAdapterWithButtons;)V
    .locals 0
    .parameter

    .prologue
    .line 488
    iput-object p1, p0, Lcom/android/email/activity/cba/InstalledCertificatesList$ArrayAdapterWithButtons$1;->this$1:Lcom/android/email/activity/cba/InstalledCertificatesList$ArrayAdapterWithButtons;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    const v2, 0x7f1000eb

    .line 492
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/cba/InstalledCertificatesList$InstalledCertificateInformation;

    .line 494
    .local v0, installedCerInfoObject:Lcom/android/email/activity/cba/InstalledCertificatesList$InstalledCertificateInformation;
    iget-object v1, p0, Lcom/android/email/activity/cba/InstalledCertificatesList$ArrayAdapterWithButtons$1;->this$1:Lcom/android/email/activity/cba/InstalledCertificatesList$ArrayAdapterWithButtons;

    iget-object v1, v1, Lcom/android/email/activity/cba/InstalledCertificatesList$ArrayAdapterWithButtons;->this$0:Lcom/android/email/activity/cba/InstalledCertificatesList;

    #getter for: Lcom/android/email/activity/cba/InstalledCertificatesList;->mDeleteItems:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/android/email/activity/cba/InstalledCertificatesList;->access$200(Lcom/android/email/activity/cba/InstalledCertificatesList;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 495
    iget-object v1, p0, Lcom/android/email/activity/cba/InstalledCertificatesList$ArrayAdapterWithButtons$1;->this$1:Lcom/android/email/activity/cba/InstalledCertificatesList$ArrayAdapterWithButtons;

    iget-object v1, v1, Lcom/android/email/activity/cba/InstalledCertificatesList$ArrayAdapterWithButtons;->this$0:Lcom/android/email/activity/cba/InstalledCertificatesList;

    #getter for: Lcom/android/email/activity/cba/InstalledCertificatesList;->mDeleteItems:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/android/email/activity/cba/InstalledCertificatesList;->access$200(Lcom/android/email/activity/cba/InstalledCertificatesList;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 499
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 507
    :goto_0
    return-void

    .line 501
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/cba/InstalledCertificatesList$ArrayAdapterWithButtons$1;->this$1:Lcom/android/email/activity/cba/InstalledCertificatesList$ArrayAdapterWithButtons;

    iget-object v1, v1, Lcom/android/email/activity/cba/InstalledCertificatesList$ArrayAdapterWithButtons;->this$0:Lcom/android/email/activity/cba/InstalledCertificatesList;

    #getter for: Lcom/android/email/activity/cba/InstalledCertificatesList;->mDeleteItems:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/android/email/activity/cba/InstalledCertificatesList;->access$200(Lcom/android/email/activity/cba/InstalledCertificatesList;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 505
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method
