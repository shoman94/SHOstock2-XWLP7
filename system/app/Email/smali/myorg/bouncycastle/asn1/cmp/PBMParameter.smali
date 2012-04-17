.class public Lmyorg/bouncycastle/asn1/cmp/PBMParameter;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "PBMParameter.java"


# instance fields
.field private iterationCount:Lmyorg/bouncycastle/asn1/DERInteger;

.field private mac:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private owf:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private salt:Lmyorg/bouncycastle/asn1/ASN1OctetString;


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 2

    .prologue
    .line 72
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 74
    .local v0, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cmp/PBMParameter;->salt:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 75
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cmp/PBMParameter;->owf:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 76
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cmp/PBMParameter;->iterationCount:Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 77
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cmp/PBMParameter;->mac:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 79
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
