.class public Lmyorg/bouncycastle/asn1/crmf/EncryptedValue;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "EncryptedValue.java"


# instance fields
.field private encSymmKey:Lmyorg/bouncycastle/asn1/DERBitString;

.field private encValue:Lmyorg/bouncycastle/asn1/DERBitString;

.field private intendedAlg:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private keyAlg:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private symmAlg:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private valueHint:Lmyorg/bouncycastle/asn1/ASN1OctetString;


# direct methods
.method private addOptional(Lmyorg/bouncycastle/asn1/ASN1EncodableVector;ILmyorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 2
    .parameter "v"
    .parameter "tagNo"
    .parameter "obj"

    .prologue
    .line 100
    if-eqz p3, :cond_0

    .line 101
    new-instance v0, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, p3}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {p1, v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 103
    :cond_0
    return-void
.end method


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 3

    .prologue
    .line 86
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 88
    .local v0, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v1, 0x0

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/crmf/EncryptedValue;->intendedAlg:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {p0, v0, v1, v2}, Lmyorg/bouncycastle/asn1/crmf/EncryptedValue;->addOptional(Lmyorg/bouncycastle/asn1/ASN1EncodableVector;ILmyorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 89
    const/4 v1, 0x1

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/crmf/EncryptedValue;->symmAlg:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {p0, v0, v1, v2}, Lmyorg/bouncycastle/asn1/crmf/EncryptedValue;->addOptional(Lmyorg/bouncycastle/asn1/ASN1EncodableVector;ILmyorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 90
    const/4 v1, 0x2

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/crmf/EncryptedValue;->encSymmKey:Lmyorg/bouncycastle/asn1/DERBitString;

    invoke-direct {p0, v0, v1, v2}, Lmyorg/bouncycastle/asn1/crmf/EncryptedValue;->addOptional(Lmyorg/bouncycastle/asn1/ASN1EncodableVector;ILmyorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 91
    const/4 v1, 0x3

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/crmf/EncryptedValue;->keyAlg:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {p0, v0, v1, v2}, Lmyorg/bouncycastle/asn1/crmf/EncryptedValue;->addOptional(Lmyorg/bouncycastle/asn1/ASN1EncodableVector;ILmyorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 92
    const/4 v1, 0x4

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/crmf/EncryptedValue;->valueHint:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    invoke-direct {p0, v0, v1, v2}, Lmyorg/bouncycastle/asn1/crmf/EncryptedValue;->addOptional(Lmyorg/bouncycastle/asn1/ASN1EncodableVector;ILmyorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 94
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/crmf/EncryptedValue;->encValue:Lmyorg/bouncycastle/asn1/DERBitString;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 96
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
