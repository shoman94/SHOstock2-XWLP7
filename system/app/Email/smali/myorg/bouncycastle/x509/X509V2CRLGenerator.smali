.class public Lmyorg/bouncycastle/x509/X509V2CRLGenerator;
.super Ljava/lang/Object;
.source "X509V2CRLGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmyorg/bouncycastle/x509/X509V2CRLGenerator$ExtCRLException;
    }
.end annotation


# instance fields
.field private extGenerator:Lmyorg/bouncycastle/asn1/x509/X509ExtensionsGenerator;

.field private tbsGen:Lmyorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lmyorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/x509/X509V2CRLGenerator;->tbsGen:Lmyorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    .line 53
    new-instance v0, Lmyorg/bouncycastle/asn1/x509/X509ExtensionsGenerator;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/x509/X509ExtensionsGenerator;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/x509/X509V2CRLGenerator;->extGenerator:Lmyorg/bouncycastle/asn1/x509/X509ExtensionsGenerator;

    .line 54
    return-void
.end method
