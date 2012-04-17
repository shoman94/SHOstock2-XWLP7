.class public Lmyorg/bouncycastle/crypto/agreement/kdf/DHKDFParameters;
.super Ljava/lang/Object;
.source "DHKDFParameters.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/DerivationParameters;


# instance fields
.field private final algorithm:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field private final extraInfo:[B

.field private final keySize:I

.field private final z:[B


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;I[B)V
    .locals 1
    .parameter "algorithm"
    .parameter "keySize"
    .parameter "z"

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lmyorg/bouncycastle/crypto/agreement/kdf/DHKDFParameters;->algorithm:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 15
    iput p2, p0, Lmyorg/bouncycastle/crypto/agreement/kdf/DHKDFParameters;->keySize:I

    .line 16
    iput-object p3, p0, Lmyorg/bouncycastle/crypto/agreement/kdf/DHKDFParameters;->z:[B

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/agreement/kdf/DHKDFParameters;->extraInfo:[B

    .line 18
    return-void
.end method


# virtual methods
.method public getAlgorithm()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/agreement/kdf/DHKDFParameters;->algorithm:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    return-object v0
.end method

.method public getExtraInfo()[B
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/agreement/kdf/DHKDFParameters;->extraInfo:[B

    return-object v0
.end method

.method public getKeySize()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lmyorg/bouncycastle/crypto/agreement/kdf/DHKDFParameters;->keySize:I

    return v0
.end method

.method public getZ()[B
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/agreement/kdf/DHKDFParameters;->z:[B

    return-object v0
.end method
