.class public Lmyorg/bouncycastle/x509/examples/AttrCertExample;
.super Ljava/lang/Object;
.source "AttrCertExample.java"


# static fields
.field static v1CertGen:Lmyorg/bouncycastle/x509/X509V1CertificateGenerator;

.field static v3CertGen:Lmyorg/bouncycastle/x509/X509V3CertificateGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lmyorg/bouncycastle/x509/X509V1CertificateGenerator;

    invoke-direct {v0}, Lmyorg/bouncycastle/x509/X509V1CertificateGenerator;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/x509/examples/AttrCertExample;->v1CertGen:Lmyorg/bouncycastle/x509/X509V1CertificateGenerator;

    .line 26
    new-instance v0, Lmyorg/bouncycastle/x509/X509V3CertificateGenerator;

    invoke-direct {v0}, Lmyorg/bouncycastle/x509/X509V3CertificateGenerator;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/x509/examples/AttrCertExample;->v3CertGen:Lmyorg/bouncycastle/x509/X509V3CertificateGenerator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
