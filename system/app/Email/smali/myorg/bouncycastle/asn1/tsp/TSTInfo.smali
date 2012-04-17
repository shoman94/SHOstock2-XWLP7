.class public Lmyorg/bouncycastle/asn1/tsp/TSTInfo;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "TSTInfo.java"


# instance fields
.field accuracy:Lmyorg/bouncycastle/asn1/tsp/Accuracy;

.field extensions:Lmyorg/bouncycastle/asn1/x509/X509Extensions;

.field genTime:Lmyorg/bouncycastle/asn1/DERGeneralizedTime;

.field messageImprint:Lmyorg/bouncycastle/asn1/tsp/MessageImprint;

.field nonce:Lmyorg/bouncycastle/asn1/DERInteger;

.field ordering:Lmyorg/bouncycastle/asn1/DERBoolean;

.field serialNumber:Lmyorg/bouncycastle/asn1/DERInteger;

.field tsa:Lmyorg/bouncycastle/asn1/x509/GeneralName;

.field tsaPolicyId:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field version:Lmyorg/bouncycastle/asn1/DERInteger;


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 186
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 187
    .local v0, seq:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/tsp/TSTInfo;->version:Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 189
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/tsp/TSTInfo;->tsaPolicyId:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 190
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/tsp/TSTInfo;->messageImprint:Lmyorg/bouncycastle/asn1/tsp/MessageImprint;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 191
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/tsp/TSTInfo;->serialNumber:Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 192
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/tsp/TSTInfo;->genTime:Lmyorg/bouncycastle/asn1/DERGeneralizedTime;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 194
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/tsp/TSTInfo;->accuracy:Lmyorg/bouncycastle/asn1/tsp/Accuracy;

    if-eqz v1, :cond_0

    .line 195
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/tsp/TSTInfo;->accuracy:Lmyorg/bouncycastle/asn1/tsp/Accuracy;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 198
    :cond_0
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/tsp/TSTInfo;->ordering:Lmyorg/bouncycastle/asn1/DERBoolean;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/tsp/TSTInfo;->ordering:Lmyorg/bouncycastle/asn1/DERBoolean;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DERBoolean;->isTrue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 199
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/tsp/TSTInfo;->ordering:Lmyorg/bouncycastle/asn1/DERBoolean;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 202
    :cond_1
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/tsp/TSTInfo;->nonce:Lmyorg/bouncycastle/asn1/DERInteger;

    if-eqz v1, :cond_2

    .line 203
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/tsp/TSTInfo;->nonce:Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 206
    :cond_2
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/tsp/TSTInfo;->tsa:Lmyorg/bouncycastle/asn1/x509/GeneralName;

    if-eqz v1, :cond_3

    .line 207
    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/tsp/TSTInfo;->tsa:Lmyorg/bouncycastle/asn1/x509/GeneralName;

    invoke-direct {v1, v4, v3, v2}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 210
    :cond_3
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/tsp/TSTInfo;->extensions:Lmyorg/bouncycastle/asn1/x509/X509Extensions;

    if-eqz v1, :cond_4

    .line 211
    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/tsp/TSTInfo;->extensions:Lmyorg/bouncycastle/asn1/x509/X509Extensions;

    invoke-direct {v1, v3, v4, v2}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 214
    :cond_4
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
