.class public Lmyorg/bouncycastle/asn1/cms/AuthenticatedData;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "AuthenticatedData.java"


# instance fields
.field private authAttrs:Lmyorg/bouncycastle/asn1/ASN1Set;

.field private digestAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private encapsulatedContentInfo:Lmyorg/bouncycastle/asn1/cms/ContentInfo;

.field private mac:Lmyorg/bouncycastle/asn1/ASN1OctetString;

.field private macAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private originatorInfo:Lmyorg/bouncycastle/asn1/cms/OriginatorInfo;

.field private recipientInfos:Lmyorg/bouncycastle/asn1/ASN1Set;

.field private unauthAttrs:Lmyorg/bouncycastle/asn1/ASN1Set;

.field private version:Lmyorg/bouncycastle/asn1/DERInteger;


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 176
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 178
    .local v0, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/AuthenticatedData;->version:Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 180
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/AuthenticatedData;->originatorInfo:Lmyorg/bouncycastle/asn1/cms/OriginatorInfo;

    if-eqz v1, :cond_0

    .line 181
    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/cms/AuthenticatedData;->originatorInfo:Lmyorg/bouncycastle/asn1/cms/OriginatorInfo;

    invoke-direct {v1, v4, v4, v2}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 184
    :cond_0
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/AuthenticatedData;->recipientInfos:Lmyorg/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 185
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/AuthenticatedData;->macAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 187
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/AuthenticatedData;->digestAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    if-eqz v1, :cond_1

    .line 188
    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x1

    iget-object v3, p0, Lmyorg/bouncycastle/asn1/cms/AuthenticatedData;->digestAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v1, v4, v2, v3}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 191
    :cond_1
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/AuthenticatedData;->encapsulatedContentInfo:Lmyorg/bouncycastle/asn1/cms/ContentInfo;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 193
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/AuthenticatedData;->authAttrs:Lmyorg/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_2

    .line 194
    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x2

    iget-object v3, p0, Lmyorg/bouncycastle/asn1/cms/AuthenticatedData;->authAttrs:Lmyorg/bouncycastle/asn1/ASN1Set;

    invoke-direct {v1, v4, v2, v3}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 197
    :cond_2
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/AuthenticatedData;->mac:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 199
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/AuthenticatedData;->unauthAttrs:Lmyorg/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_3

    .line 200
    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x3

    iget-object v3, p0, Lmyorg/bouncycastle/asn1/cms/AuthenticatedData;->unauthAttrs:Lmyorg/bouncycastle/asn1/ASN1Set;

    invoke-direct {v1, v4, v2, v3}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 203
    :cond_3
    new-instance v1, Lmyorg/bouncycastle/asn1/BERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/BERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
