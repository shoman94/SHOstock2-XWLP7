.class public Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "GOST3410PublicKeyAlgParameters.java"


# instance fields
.field private digestParamSet:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field private encryptionParamSet:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field private publicKeyParamSet:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 2
    .parameter "seq"

    .prologue
    const/4 v1, 0x2

    .line 47
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 48
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->publicKeyParamSet:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 49
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->digestParamSet:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 51
    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 52
    invoke-virtual {p1, v1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->encryptionParamSet:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 54
    :cond_0
    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)V
    .locals 1
    .parameter "publicKeyParamSet"
    .parameter "digestParamSet"

    .prologue
    .line 34
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 35
    iput-object p1, p0, Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->publicKeyParamSet:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 36
    iput-object p2, p0, Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->digestParamSet:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->encryptionParamSet:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 38
    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)V
    .locals 0
    .parameter "publicKeyParamSet"
    .parameter "digestParamSet"
    .parameter "encryptionParamSet"

    .prologue
    .line 41
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 42
    iput-object p1, p0, Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->publicKeyParamSet:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 43
    iput-object p2, p0, Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->digestParamSet:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 44
    iput-object p3, p0, Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->encryptionParamSet:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 45
    return-void
.end method


# virtual methods
.method public getDigestParamSet()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->digestParamSet:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    return-object v0
.end method

.method public getEncryptionParamSet()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->encryptionParamSet:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    return-object v0
.end method

.method public getPublicKeyParamSet()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->publicKeyParamSet:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    return-object v0
.end method

.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 2

    .prologue
    .line 69
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 71
    .local v0, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->publicKeyParamSet:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 72
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->digestParamSet:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 74
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->encryptionParamSet:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->encryptionParamSet:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 78
    :cond_0
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
