.class public Lmyorg/bouncycastle/jce/examples/PKCS12Example;
.super Ljava/lang/Object;
.source "PKCS12Example.java"


# static fields
.field static passwd:[C

.field static v1CertGen:Lmyorg/bouncycastle/x509/X509V1CertificateGenerator;

.field static v3CertGen:Lmyorg/bouncycastle/x509/X509V3CertificateGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/16 v0, 0xb

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lmyorg/bouncycastle/jce/examples/PKCS12Example;->passwd:[C

    .line 44
    new-instance v0, Lmyorg/bouncycastle/x509/X509V1CertificateGenerator;

    invoke-direct {v0}, Lmyorg/bouncycastle/x509/X509V1CertificateGenerator;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/jce/examples/PKCS12Example;->v1CertGen:Lmyorg/bouncycastle/x509/X509V1CertificateGenerator;

    .line 45
    new-instance v0, Lmyorg/bouncycastle/x509/X509V3CertificateGenerator;

    invoke-direct {v0}, Lmyorg/bouncycastle/x509/X509V3CertificateGenerator;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/jce/examples/PKCS12Example;->v3CertGen:Lmyorg/bouncycastle/x509/X509V3CertificateGenerator;

    return-void

    .line 40
    :array_0
    .array-data 0x2
        0x68t 0x0t
        0x65t 0x0t
        0x6ct 0x0t
        0x6ct 0x0t
        0x6ft 0x0t
        0x20t 0x0t
        0x77t 0x0t
        0x6ft 0x0t
        0x72t 0x0t
        0x6ct 0x0t
        0x64t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
