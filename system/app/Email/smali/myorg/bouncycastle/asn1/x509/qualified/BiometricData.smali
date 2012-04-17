.class public Lmyorg/bouncycastle/asn1/x509/qualified/BiometricData;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "BiometricData.java"


# instance fields
.field biometricDataHash:Lmyorg/bouncycastle/asn1/ASN1OctetString;

.field hashAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field sourceDataUri:Lmyorg/bouncycastle/asn1/DERIA5String;

.field typeOfBiometricData:Lmyorg/bouncycastle/asn1/x509/qualified/TypeOfBiometricData;


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 2

    .prologue
    .line 93
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 94
    .local v0, seq:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/qualified/BiometricData;->typeOfBiometricData:Lmyorg/bouncycastle/asn1/x509/qualified/TypeOfBiometricData;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 95
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/qualified/BiometricData;->hashAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 96
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/qualified/BiometricData;->biometricDataHash:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 98
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/qualified/BiometricData;->sourceDataUri:Lmyorg/bouncycastle/asn1/DERIA5String;

    if-eqz v1, :cond_0

    .line 99
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/qualified/BiometricData;->sourceDataUri:Lmyorg/bouncycastle/asn1/DERIA5String;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 102
    :cond_0
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
