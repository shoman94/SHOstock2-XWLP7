.class public Lmyorg/bouncycastle/asn1/ocsp/CertStatus;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "CertStatus.java"

# interfaces
.implements Lmyorg/bouncycastle/asn1/ASN1Choice;


# instance fields
.field private tagNo:I

.field private value:Lmyorg/bouncycastle/asn1/DEREncodable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lmyorg/bouncycastle/asn1/ocsp/CertStatus;->tagNo:I

    .line 21
    new-instance v0, Lmyorg/bouncycastle/asn1/DERNull;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/DERNull;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/ocsp/CertStatus;->value:Lmyorg/bouncycastle/asn1/DEREncodable;

    .line 22
    return-void
.end method


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 4

    .prologue
    .line 82
    new-instance v0, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v1, 0x0

    iget v2, p0, Lmyorg/bouncycastle/asn1/ocsp/CertStatus;->tagNo:I

    iget-object v3, p0, Lmyorg/bouncycastle/asn1/ocsp/CertStatus;->value:Lmyorg/bouncycastle/asn1/DEREncodable;

    invoke-direct {v0, v1, v2, v3}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    return-object v0
.end method
