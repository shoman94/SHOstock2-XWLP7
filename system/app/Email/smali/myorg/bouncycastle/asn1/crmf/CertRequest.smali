.class public Lmyorg/bouncycastle/asn1/crmf/CertRequest;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "CertRequest.java"


# instance fields
.field private certReqId:Lmyorg/bouncycastle/asn1/DERInteger;

.field private certTemplate:Lmyorg/bouncycastle/asn1/crmf/CertTemplate;

.field private controls:Lmyorg/bouncycastle/asn1/crmf/Controls;


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 2

    .prologue
    .line 59
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 61
    .local v0, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/crmf/CertRequest;->certReqId:Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 62
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/crmf/CertRequest;->certTemplate:Lmyorg/bouncycastle/asn1/crmf/CertTemplate;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 64
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/crmf/CertRequest;->controls:Lmyorg/bouncycastle/asn1/crmf/Controls;

    if-eqz v1, :cond_0

    .line 65
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/crmf/CertRequest;->controls:Lmyorg/bouncycastle/asn1/crmf/Controls;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 68
    :cond_0
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
