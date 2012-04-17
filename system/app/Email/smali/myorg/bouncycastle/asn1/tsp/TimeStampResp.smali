.class public Lmyorg/bouncycastle/asn1/tsp/TimeStampResp;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "TimeStampResp.java"


# instance fields
.field pkiStatusInfo:Lmyorg/bouncycastle/asn1/cmp/PKIStatusInfo;

.field timeStampToken:Lmyorg/bouncycastle/asn1/cms/ContentInfo;


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 65
    .local v0, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/tsp/TimeStampResp;->pkiStatusInfo:Lmyorg/bouncycastle/asn1/cmp/PKIStatusInfo;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 66
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/tsp/TimeStampResp;->timeStampToken:Lmyorg/bouncycastle/asn1/cms/ContentInfo;

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/tsp/TimeStampResp;->timeStampToken:Lmyorg/bouncycastle/asn1/cms/ContentInfo;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 70
    :cond_0
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
