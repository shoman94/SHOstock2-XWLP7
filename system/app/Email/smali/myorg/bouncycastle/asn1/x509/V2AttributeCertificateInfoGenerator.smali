.class public Lmyorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;
.super Ljava/lang/Object;
.source "V2AttributeCertificateInfoGenerator.java"


# instance fields
.field private attributes:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

.field private version:Lmyorg/bouncycastle/asn1/DERInteger;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lmyorg/bouncycastle/asn1/DERInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->version:Lmyorg/bouncycastle/asn1/DERInteger;

    .line 46
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->attributes:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    .line 47
    return-void
.end method
