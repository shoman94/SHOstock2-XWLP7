.class Lcom/android/email/activity/smime/InstalledCertificatesList$ArrayAdapterWithButtons;
.super Landroid/widget/ArrayAdapter;
.source "InstalledCertificatesList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/smime/InstalledCertificatesList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ArrayAdapterWithButtons"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/email/activity/smime/InstalledCertificatesList$InstalledCertificateInformation;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field mInstalledCerInfoObject:[Lcom/android/email/activity/smime/InstalledCertificatesList$InstalledCertificateInformation;

.field private mOnDeleteListener:Landroid/view/View$OnClickListener;

.field final synthetic this$0:Lcom/android/email/activity/smime/InstalledCertificatesList;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/smime/InstalledCertificatesList;Landroid/content/Context;[Lcom/android/email/activity/smime/InstalledCertificatesList$InstalledCertificateInformation;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "installedCerInfoObject"

    .prologue
    .line 411
    iput-object p1, p0, Lcom/android/email/activity/smime/InstalledCertificatesList$ArrayAdapterWithButtons;->this$0:Lcom/android/email/activity/smime/InstalledCertificatesList;

    .line 412
    const v0, 0x7f04004b

    const v1, 0x7f1000ea

    invoke-direct {p0, p2, v0, v1, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 445
    new-instance v0, Lcom/android/email/activity/smime/InstalledCertificatesList$ArrayAdapterWithButtons$1;

    invoke-direct {v0, p0}, Lcom/android/email/activity/smime/InstalledCertificatesList$ArrayAdapterWithButtons$1;-><init>(Lcom/android/email/activity/smime/InstalledCertificatesList$ArrayAdapterWithButtons;)V

    iput-object v0, p0, Lcom/android/email/activity/smime/InstalledCertificatesList$ArrayAdapterWithButtons;->mOnDeleteListener:Landroid/view/View$OnClickListener;

    .line 413
    iput-object p2, p0, Lcom/android/email/activity/smime/InstalledCertificatesList$ArrayAdapterWithButtons;->mContext:Landroid/content/Context;

    .line 414
    iput-object p3, p0, Lcom/android/email/activity/smime/InstalledCertificatesList$ArrayAdapterWithButtons;->mInstalledCerInfoObject:[Lcom/android/email/activity/smime/InstalledCertificatesList$InstalledCertificateInformation;

    .line 415
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v3, 0x1

    .line 420
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 421
    iget-object v1, p0, Lcom/android/email/activity/smime/InstalledCertificatesList$ArrayAdapterWithButtons;->mInstalledCerInfoObject:[Lcom/android/email/activity/smime/InstalledCertificatesList$InstalledCertificateInformation;

    aget-object v1, v1, p1

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 422
    iget-object v1, p0, Lcom/android/email/activity/smime/InstalledCertificatesList$ArrayAdapterWithButtons;->mOnDeleteListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 427
    const v1, 0x7f1000eb

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 429
    .local v0, listItem_delete:Landroid/widget/CheckBox;
    iget-object v1, p0, Lcom/android/email/activity/smime/InstalledCertificatesList$ArrayAdapterWithButtons;->this$0:Lcom/android/email/activity/smime/InstalledCertificatesList;

    #getter for: Lcom/android/email/activity/smime/InstalledCertificatesList;->mDeleteItems:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/android/email/activity/smime/InstalledCertificatesList;->access$300(Lcom/android/email/activity/smime/InstalledCertificatesList;)Ljava/util/HashSet;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/smime/InstalledCertificatesList$ArrayAdapterWithButtons;->mInstalledCerInfoObject:[Lcom/android/email/activity/smime/InstalledCertificatesList$InstalledCertificateInformation;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_0

    .line 432
    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 442
    :goto_0
    return-object p2

    .line 436
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method
