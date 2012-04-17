.class public Lmyorg/bouncycastle/crypto/agreement/kdf/ECDHKEKGenerator;
.super Ljava/lang/Object;
.source "ECDHKEKGenerator.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/DerivationFunction;


# instance fields
.field private algorithm:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field private kdf:Lmyorg/bouncycastle/crypto/DerivationFunction;

.field private keySize:I

.field private z:[B


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/crypto/Digest;)V
    .locals 1
    .parameter "digest"

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lmyorg/bouncycastle/crypto/generators/KDF2BytesGenerator;

    invoke-direct {v0, p1}, Lmyorg/bouncycastle/crypto/generators/KDF2BytesGenerator;-><init>(Lmyorg/bouncycastle/crypto/Digest;)V

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/agreement/kdf/ECDHKEKGenerator;->kdf:Lmyorg/bouncycastle/crypto/DerivationFunction;

    .line 30
    return-void
.end method

.method private integerToBytes(I)[B
    .locals 3
    .parameter "keySize"

    .prologue
    .line 58
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 60
    .local v0, val:[B
    const/4 v1, 0x0

    shr-int/lit8 v2, p1, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 61
    const/4 v1, 0x1

    shr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 62
    const/4 v1, 0x2

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 63
    const/4 v1, 0x3

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 65
    return-object v0
.end method


# virtual methods
.method public generateBytes([BII)I
    .locals 6
    .parameter "out"
    .parameter "outOff"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 49
    .local v0, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v1, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/agreement/kdf/ECDHKEKGenerator;->algorithm:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v3, Lmyorg/bouncycastle/asn1/DERNull;

    invoke-direct {v3}, Lmyorg/bouncycastle/asn1/DERNull;-><init>()V

    invoke-direct {v1, v2, v3}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 50
    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x1

    const/4 v3, 0x2

    new-instance v4, Lmyorg/bouncycastle/asn1/DEROctetString;

    iget v5, p0, Lmyorg/bouncycastle/crypto/agreement/kdf/ECDHKEKGenerator;->keySize:I

    invoke-direct {p0, v5}, Lmyorg/bouncycastle/crypto/agreement/kdf/ECDHKEKGenerator;->integerToBytes(I)[B

    move-result-object v5

    invoke-direct {v4, v5}, Lmyorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v1, v2, v3, v4}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 52
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/agreement/kdf/ECDHKEKGenerator;->kdf:Lmyorg/bouncycastle/crypto/DerivationFunction;

    new-instance v2, Lmyorg/bouncycastle/crypto/params/KDFParameters;

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/agreement/kdf/ECDHKEKGenerator;->z:[B

    new-instance v4, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v4, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-virtual {v4}, Lmyorg/bouncycastle/asn1/DERSequence;->getDEREncoded()[B

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lmyorg/bouncycastle/crypto/params/KDFParameters;-><init>([B[B)V

    invoke-interface {v1, v2}, Lmyorg/bouncycastle/crypto/DerivationFunction;->init(Lmyorg/bouncycastle/crypto/DerivationParameters;)V

    .line 54
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/agreement/kdf/ECDHKEKGenerator;->kdf:Lmyorg/bouncycastle/crypto/DerivationFunction;

    invoke-interface {v1, p1, p2, p3}, Lmyorg/bouncycastle/crypto/DerivationFunction;->generateBytes([BII)I

    move-result v1

    return v1
.end method

.method public init(Lmyorg/bouncycastle/crypto/DerivationParameters;)V
    .locals 2
    .parameter "param"

    .prologue
    .line 33
    move-object v0, p1

    check-cast v0, Lmyorg/bouncycastle/crypto/agreement/kdf/DHKDFParameters;

    .line 35
    .local v0, params:Lmyorg/bouncycastle/crypto/agreement/kdf/DHKDFParameters;
    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/agreement/kdf/DHKDFParameters;->getAlgorithm()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/agreement/kdf/ECDHKEKGenerator;->algorithm:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 36
    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/agreement/kdf/DHKDFParameters;->getKeySize()I

    move-result v1

    iput v1, p0, Lmyorg/bouncycastle/crypto/agreement/kdf/ECDHKEKGenerator;->keySize:I

    .line 37
    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/agreement/kdf/DHKDFParameters;->getZ()[B

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/agreement/kdf/ECDHKEKGenerator;->z:[B

    .line 38
    return-void
.end method
