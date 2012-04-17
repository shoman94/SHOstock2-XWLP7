.class public Lmyorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;
.super Ljava/lang/Object;
.source "V1TBSCertificateGenerator.java"


# instance fields
.field version:Lmyorg/bouncycastle/asn1/DERTaggedObject;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    new-instance v1, Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    invoke-direct {v0, v2, v1}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILmyorg/bouncycastle/asn1/DEREncodable;)V

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->version:Lmyorg/bouncycastle/asn1/DERTaggedObject;

    .line 36
    return-void
.end method
