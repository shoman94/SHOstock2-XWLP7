.class public Lmyorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;
.super Ljava/lang/Object;
.source "X509V2AttributeCertificateGenerator.java"


# instance fields
.field private acInfoGen:Lmyorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;

.field private extGenerator:Lmyorg/bouncycastle/asn1/x509/X509ExtensionsGenerator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lmyorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->acInfoGen:Lmyorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;

    .line 44
    new-instance v0, Lmyorg/bouncycastle/asn1/x509/X509ExtensionsGenerator;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/x509/X509ExtensionsGenerator;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->extGenerator:Lmyorg/bouncycastle/asn1/x509/X509ExtensionsGenerator;

    .line 45
    return-void
.end method
