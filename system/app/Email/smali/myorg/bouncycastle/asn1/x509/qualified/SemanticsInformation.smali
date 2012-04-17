.class public Lmyorg/bouncycastle/asn1/x509/qualified/SemanticsInformation;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "SemanticsInformation.java"


# instance fields
.field nameRegistrationAuthorities:[Lmyorg/bouncycastle/asn1/x509/GeneralName;

.field semanticsIdentifier:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 4

    .prologue
    .line 95
    new-instance v1, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 97
    .local v1, seq:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v3, p0, Lmyorg/bouncycastle/asn1/x509/qualified/SemanticsInformation;->semanticsIdentifier:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    if-eqz v3, :cond_0

    .line 98
    iget-object v3, p0, Lmyorg/bouncycastle/asn1/x509/qualified/SemanticsInformation;->semanticsIdentifier:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1, v3}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 100
    :cond_0
    iget-object v3, p0, Lmyorg/bouncycastle/asn1/x509/qualified/SemanticsInformation;->nameRegistrationAuthorities:[Lmyorg/bouncycastle/asn1/x509/GeneralName;

    if-eqz v3, :cond_2

    .line 101
    new-instance v2, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 102
    .local v2, seqname:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lmyorg/bouncycastle/asn1/x509/qualified/SemanticsInformation;->nameRegistrationAuthorities:[Lmyorg/bouncycastle/asn1/x509/GeneralName;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 103
    iget-object v3, p0, Lmyorg/bouncycastle/asn1/x509/qualified/SemanticsInformation;->nameRegistrationAuthorities:[Lmyorg/bouncycastle/asn1/x509/GeneralName;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_1
    new-instance v3, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v3, v2}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-virtual {v1, v3}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 108
    .end local v0           #i:I
    .end local v2           #seqname:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    :cond_2
    new-instance v3, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v3, v1}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v3
.end method
