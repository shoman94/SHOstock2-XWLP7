.class public Lmyorg/bouncycastle/asn1/cmp/PollRepContent;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "PollRepContent.java"


# instance fields
.field private certReqId:Lmyorg/bouncycastle/asn1/DERInteger;

.field private checkAfter:Lmyorg/bouncycastle/asn1/DERInteger;

.field private reason:Lmyorg/bouncycastle/asn1/cmp/PKIFreeText;


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 2

    .prologue
    .line 61
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 63
    .local v0, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cmp/PollRepContent;->certReqId:Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 64
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cmp/PollRepContent;->checkAfter:Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 66
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cmp/PollRepContent;->reason:Lmyorg/bouncycastle/asn1/cmp/PKIFreeText;

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cmp/PollRepContent;->reason:Lmyorg/bouncycastle/asn1/cmp/PKIFreeText;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 70
    :cond_0
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
