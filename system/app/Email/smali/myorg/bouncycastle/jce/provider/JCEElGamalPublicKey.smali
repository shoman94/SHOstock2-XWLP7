.class public Lmyorg/bouncycastle/jce/provider/JCEElGamalPublicKey;
.super Ljava/lang/Object;
.source "JCEElGamalPublicKey.java"

# interfaces
.implements Ljavax/crypto/interfaces/DHPublicKey;
.implements Lmyorg/bouncycastle/jce/interfaces/ElGamalPublicKey;


# static fields
.field static final serialVersionUID:J = 0x78e9d455552c6634L


# instance fields
.field private elSpec:Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;

.field private y:Ljava/math/BigInteger;


# direct methods
.method constructor <init>(Ljavax/crypto/interfaces/DHPublicKey;)V
    .locals 3
    .parameter "key"

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEElGamalPublicKey;->y:Ljava/math/BigInteger;

    .line 47
    new-instance v0, Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEElGamalPublicKey;->elSpec:Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;

    .line 48
    return-void
.end method

.method constructor <init>(Ljavax/crypto/spec/DHPublicKeySpec;)V
    .locals 3
    .parameter "spec"

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Ljavax/crypto/spec/DHPublicKeySpec;->getY()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEElGamalPublicKey;->y:Ljava/math/BigInteger;

    .line 37
    new-instance v0, Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;

    invoke-virtual {p1}, Ljavax/crypto/spec/DHPublicKeySpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/crypto/spec/DHPublicKeySpec;->getG()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEElGamalPublicKey;->elSpec:Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;

    .line 38
    return-void
.end method

.method constructor <init>(Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .locals 6
    .parameter "info"

    .prologue
    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v2, Lmyorg/bouncycastle/asn1/oiw/ElGamalParameter;

    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithmId()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    check-cast v3, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/asn1/oiw/ElGamalParameter;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 64
    .local v2, params:Lmyorg/bouncycastle/asn1/oiw/ElGamalParameter;
    const/4 v0, 0x0

    .line 67
    .local v0, derY:Lmyorg/bouncycastle/asn1/DERInteger;
    :try_start_0
    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKey()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    .end local v0           #derY:Lmyorg/bouncycastle/asn1/DERInteger;
    check-cast v0, Lmyorg/bouncycastle/asn1/DERInteger;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .restart local v0       #derY:Lmyorg/bouncycastle/asn1/DERInteger;
    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, p0, Lmyorg/bouncycastle/jce/provider/JCEElGamalPublicKey;->y:Ljava/math/BigInteger;

    .line 73
    new-instance v3, Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;

    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/oiw/ElGamalParameter;->getP()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/oiw/ElGamalParameter;->getG()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v3, p0, Lmyorg/bouncycastle/jce/provider/JCEElGamalPublicKey;->elSpec:Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;

    .line 74
    return-void

    .line 68
    .end local v0           #derY:Lmyorg/bouncycastle/asn1/DERInteger;
    :catch_0
    move-exception v1

    .line 69
    .local v1, e:Ljava/io/IOException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "invalid info structure in DSA public key"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method constructor <init>(Lmyorg/bouncycastle/crypto/params/ElGamalPublicKeyParameters;)V
    .locals 3
    .parameter "params"

    .prologue
    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Lmyorg/bouncycastle/crypto/params/ElGamalPublicKeyParameters;->getY()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEElGamalPublicKey;->y:Ljava/math/BigInteger;

    .line 52
    new-instance v0, Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;

    invoke-virtual {p1}, Lmyorg/bouncycastle/crypto/params/ElGamalPublicKeyParameters;->getParameters()Lmyorg/bouncycastle/crypto/params/ElGamalParameters;

    move-result-object v1

    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/params/ElGamalParameters;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Lmyorg/bouncycastle/crypto/params/ElGamalPublicKeyParameters;->getParameters()Lmyorg/bouncycastle/crypto/params/ElGamalParameters;

    move-result-object v2

    invoke-virtual {v2}, Lmyorg/bouncycastle/crypto/params/ElGamalParameters;->getG()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEElGamalPublicKey;->elSpec:Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;

    .line 54
    return-void
.end method

.method constructor <init>(Lmyorg/bouncycastle/jce/interfaces/ElGamalPublicKey;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-interface {p1}, Lmyorg/bouncycastle/jce/interfaces/ElGamalPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEElGamalPublicKey;->y:Ljava/math/BigInteger;

    .line 42
    invoke-interface {p1}, Lmyorg/bouncycastle/jce/interfaces/ElGamalPublicKey;->getParameters()Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEElGamalPublicKey;->elSpec:Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;

    .line 43
    return-void
.end method

.method constructor <init>(Lmyorg/bouncycastle/jce/spec/ElGamalPublicKeySpec;)V
    .locals 3
    .parameter "spec"

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p1}, Lmyorg/bouncycastle/jce/spec/ElGamalPublicKeySpec;->getY()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEElGamalPublicKey;->y:Ljava/math/BigInteger;

    .line 32
    new-instance v0, Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;

    invoke-virtual {p1}, Lmyorg/bouncycastle/jce/spec/ElGamalPublicKeySpec;->getParams()Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Lmyorg/bouncycastle/jce/spec/ElGamalPublicKeySpec;->getParams()Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;

    move-result-object v2

    invoke-virtual {v2}, Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEElGamalPublicKey;->elSpec:Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;

    .line 33
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEElGamalPublicKey;->y:Ljava/math/BigInteger;

    .line 106
    new-instance v2, Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/math/BigInteger;

    invoke-direct {v2, v0, v1}, Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEElGamalPublicKey;->elSpec:Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;

    .line 108
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/provider/JCEElGamalPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 112
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEElGamalPublicKey;->elSpec:Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;

    invoke-virtual {v0}, Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 113
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEElGamalPublicKey;->elSpec:Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;

    invoke-virtual {v0}, Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 114
    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    const-string v0, "ElGamal"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 6

    .prologue
    .line 85
    new-instance v0, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    new-instance v1, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v2, Lmyorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->elGamalAlgorithm:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v3, Lmyorg/bouncycastle/asn1/oiw/ElGamalParameter;

    iget-object v4, p0, Lmyorg/bouncycastle/jce/provider/JCEElGamalPublicKey;->elSpec:Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;

    invoke-virtual {v4}, Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v4

    iget-object v5, p0, Lmyorg/bouncycastle/jce/provider/JCEElGamalPublicKey;->elSpec:Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;

    invoke-virtual {v5}, Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lmyorg/bouncycastle/asn1/oiw/ElGamalParameter;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/oiw/ElGamalParameter;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v2, Lmyorg/bouncycastle/asn1/DERInteger;

    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/JCEElGamalPublicKey;->y:Ljava/math/BigInteger;

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v0, v1, v2}, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 89
    .local v0, info:Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getDEREncoded()[B

    move-result-object v1

    return-object v1
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    const-string v0, "X.509"

    return-object v0
.end method

.method public getParameters()Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEElGamalPublicKey;->elSpec:Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;

    return-object v0
.end method

.method public getParams()Ljavax/crypto/spec/DHParameterSpec;
    .locals 3

    .prologue
    .line 97
    new-instance v0, Ljavax/crypto/spec/DHParameterSpec;

    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/JCEElGamalPublicKey;->elSpec:Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;

    invoke-virtual {v1}, Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEElGamalPublicKey;->elSpec:Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;

    invoke-virtual {v2}, Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public getY()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEElGamalPublicKey;->y:Ljava/math/BigInteger;

    return-object v0
.end method
