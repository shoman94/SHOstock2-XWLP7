.class public Lmyorg/bouncycastle/asn1/x509/PrivateKeyUsagePeriod;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "PrivateKeyUsagePeriod.java"


# instance fields
.field private _notAfter:Lmyorg/bouncycastle/asn1/DERGeneralizedTime;

.field private _notBefore:Lmyorg/bouncycastle/asn1/DERGeneralizedTime;


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 64
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 66
    .local v0, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/PrivateKeyUsagePeriod;->_notBefore:Lmyorg/bouncycastle/asn1/DERGeneralizedTime;

    if-eqz v1, :cond_0

    .line 67
    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/x509/PrivateKeyUsagePeriod;->_notBefore:Lmyorg/bouncycastle/asn1/DERGeneralizedTime;

    invoke-direct {v1, v4, v4, v2}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 69
    :cond_0
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/PrivateKeyUsagePeriod;->_notAfter:Lmyorg/bouncycastle/asn1/DERGeneralizedTime;

    if-eqz v1, :cond_1

    .line 70
    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x1

    iget-object v3, p0, Lmyorg/bouncycastle/asn1/x509/PrivateKeyUsagePeriod;->_notAfter:Lmyorg/bouncycastle/asn1/DERGeneralizedTime;

    invoke-direct {v1, v4, v2, v3}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 73
    :cond_1
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
