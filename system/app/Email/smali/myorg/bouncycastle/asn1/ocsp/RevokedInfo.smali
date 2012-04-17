.class public Lmyorg/bouncycastle/asn1/ocsp/RevokedInfo;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "RevokedInfo.java"


# instance fields
.field private revocationReason:Lmyorg/bouncycastle/asn1/x509/CRLReason;

.field private revocationTime:Lmyorg/bouncycastle/asn1/DERGeneralizedTime;


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 5

    .prologue
    .line 65
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 67
    .local v0, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/ocsp/RevokedInfo;->revocationTime:Lmyorg/bouncycastle/asn1/DERGeneralizedTime;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 68
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/ocsp/RevokedInfo;->revocationReason:Lmyorg/bouncycastle/asn1/x509/CRLReason;

    if-eqz v1, :cond_0

    .line 69
    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lmyorg/bouncycastle/asn1/ocsp/RevokedInfo;->revocationReason:Lmyorg/bouncycastle/asn1/x509/CRLReason;

    invoke-direct {v1, v2, v3, v4}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 72
    :cond_0
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
