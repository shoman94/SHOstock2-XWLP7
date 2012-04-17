.class Lcom/android/emailcommon/smime/SMIMEHelper$StoresContainer;
.super Ljava/lang/Object;
.source "SMIMEHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/smime/SMIMEHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StoresContainer"
.end annotation


# instance fields
.field public mCertStore:Ljava/security/cert/CertStore;

.field public mSignerInformationStore:Lmyorg/bouncycastle/cms/SignerInformationStore;


# direct methods
.method public constructor <init>(Ljava/security/cert/CertStore;Lmyorg/bouncycastle/cms/SignerInformationStore;)V
    .locals 0
    .parameter "certStore"
    .parameter "signerInformationStore"

    .prologue
    .line 788
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 789
    iput-object p1, p0, Lcom/android/emailcommon/smime/SMIMEHelper$StoresContainer;->mCertStore:Ljava/security/cert/CertStore;

    .line 790
    iput-object p2, p0, Lcom/android/emailcommon/smime/SMIMEHelper$StoresContainer;->mSignerInformationStore:Lmyorg/bouncycastle/cms/SignerInformationStore;

    .line 791
    return-void
.end method
