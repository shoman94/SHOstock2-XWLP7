.class public Lmyorg/bouncycastle/asn1/icao/LDSSecurityObject;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "LDSSecurityObject.java"

# interfaces
.implements Lmyorg/bouncycastle/asn1/icao/ICAOObjectIdentifiers;


# instance fields
.field datagroupHash:[Lmyorg/bouncycastle/asn1/icao/DataGroupHash;

.field digestAlgorithmIdentifier:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field version:Lmyorg/bouncycastle/asn1/DERInteger;


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 4

    .prologue
    .line 97
    new-instance v1, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 99
    .local v1, seq:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v3, p0, Lmyorg/bouncycastle/asn1/icao/LDSSecurityObject;->version:Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v1, v3}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 100
    iget-object v3, p0, Lmyorg/bouncycastle/asn1/icao/LDSSecurityObject;->digestAlgorithmIdentifier:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v1, v3}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 102
    new-instance v2, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 103
    .local v2, seqname:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lmyorg/bouncycastle/asn1/icao/LDSSecurityObject;->datagroupHash:[Lmyorg/bouncycastle/asn1/icao/DataGroupHash;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 104
    iget-object v3, p0, Lmyorg/bouncycastle/asn1/icao/LDSSecurityObject;->datagroupHash:[Lmyorg/bouncycastle/asn1/icao/DataGroupHash;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    :cond_0
    new-instance v3, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v3, v2}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-virtual {v1, v3}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 108
    new-instance v3, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v3, v1}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v3
.end method
