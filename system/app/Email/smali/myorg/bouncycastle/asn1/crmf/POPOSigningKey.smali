.class public Lmyorg/bouncycastle/asn1/crmf/POPOSigningKey;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "POPOSigningKey.java"


# instance fields
.field private algorithmIdentifier:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private poposkInput:Lmyorg/bouncycastle/asn1/crmf/POPOSigningKeyInput;

.field private signature:Lmyorg/bouncycastle/asn1/DERBitString;


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 2

    .prologue
    .line 65
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 67
    .local v0, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/crmf/POPOSigningKey;->poposkInput:Lmyorg/bouncycastle/asn1/crmf/POPOSigningKeyInput;

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/crmf/POPOSigningKey;->poposkInput:Lmyorg/bouncycastle/asn1/crmf/POPOSigningKeyInput;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 71
    :cond_0
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/crmf/POPOSigningKey;->algorithmIdentifier:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 72
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/crmf/POPOSigningKey;->signature:Lmyorg/bouncycastle/asn1/DERBitString;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 74
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
