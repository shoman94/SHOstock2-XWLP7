.class Lcom/android/email/activity/cba/InstalledCertificatesList$InstalledCertificateInformation;
.super Ljava/lang/Object;
.source "InstalledCertificatesList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/cba/InstalledCertificatesList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InstalledCertificateInformation"
.end annotation


# instance fields
.field alias:Ljava/lang/String;

.field id:I

.field final synthetic this$0:Lcom/android/email/activity/cba/InstalledCertificatesList;


# direct methods
.method constructor <init>(Lcom/android/email/activity/cba/InstalledCertificatesList;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "alias"
    .parameter "tag"

    .prologue
    .line 518
    iput-object p1, p0, Lcom/android/email/activity/cba/InstalledCertificatesList$InstalledCertificateInformation;->this$0:Lcom/android/email/activity/cba/InstalledCertificatesList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 519
    iput-object p2, p0, Lcom/android/email/activity/cba/InstalledCertificatesList$InstalledCertificateInformation;->alias:Ljava/lang/String;

    .line 520
    iput p3, p0, Lcom/android/email/activity/cba/InstalledCertificatesList$InstalledCertificateInformation;->id:I

    .line 521
    return-void
.end method


# virtual methods
.method public getAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/android/email/activity/cba/InstalledCertificatesList$InstalledCertificateInformation;->alias:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcom/android/email/activity/cba/InstalledCertificatesList$InstalledCertificateInformation;->alias:Ljava/lang/String;

    return-object v0
.end method
