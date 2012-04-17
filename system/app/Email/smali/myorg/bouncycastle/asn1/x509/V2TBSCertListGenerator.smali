.class public Lmyorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;
.super Ljava/lang/Object;
.source "V2TBSCertListGenerator.java"


# instance fields
.field private crlentries:Ljava/util/Vector;

.field extensions:Lmyorg/bouncycastle/asn1/x509/X509Extensions;

.field nextUpdate:Lmyorg/bouncycastle/asn1/x509/Time;

.field version:Lmyorg/bouncycastle/asn1/DERInteger;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lmyorg/bouncycastle/asn1/DERInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->version:Lmyorg/bouncycastle/asn1/DERInteger;

    .line 46
    iput-object v2, p0, Lmyorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->nextUpdate:Lmyorg/bouncycastle/asn1/x509/Time;

    .line 47
    iput-object v2, p0, Lmyorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->extensions:Lmyorg/bouncycastle/asn1/x509/X509Extensions;

    .line 48
    iput-object v2, p0, Lmyorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->crlentries:Ljava/util/Vector;

    .line 51
    return-void
.end method
