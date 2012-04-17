.class public Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "SubjectPublicKeyInfo.java"


# instance fields
.field private algId:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private keyData:Lmyorg/bouncycastle/asn1/DERBitString;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4
    .parameter "seq"

    .prologue
    .line 51
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 52
    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 53
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad sequence size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 56
    :cond_0
    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 58
    .local v0, e:Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->algId:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 59
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lmyorg/bouncycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/DERBitString;

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->keyData:Lmyorg/bouncycastle/asn1/DERBitString;

    .line 60
    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/DEREncodable;)V
    .locals 1
    .parameter "algId"
    .parameter "publicKey"

    .prologue
    .line 41
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 42
    new-instance v0, Lmyorg/bouncycastle/asn1/DERBitString;

    invoke-direct {v0, p2}, Lmyorg/bouncycastle/asn1/DERBitString;-><init>(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->keyData:Lmyorg/bouncycastle/asn1/DERBitString;

    .line 43
    iput-object p1, p0, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->algId:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 44
    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V
    .locals 1
    .parameter "algId"
    .parameter "publicKey"

    .prologue
    .line 46
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 47
    new-instance v0, Lmyorg/bouncycastle/asn1/DERBitString;

    invoke-direct {v0, p2}, Lmyorg/bouncycastle/asn1/DERBitString;-><init>([B)V

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->keyData:Lmyorg/bouncycastle/asn1/DERBitString;

    .line 48
    iput-object p1, p0, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->algId:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 49
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .locals 3
    .parameter "obj"

    .prologue
    .line 32
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    if-eqz v0, :cond_0

    .line 33
    check-cast p0, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 35
    .end local p0
    :goto_0
    return-object p0

    .line 34
    .restart local p0
    :cond_0
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_1

    .line 35
    new-instance v0, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    check-cast p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 38
    .restart local p0
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in factory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getAlgorithmId()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->algId:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getPublicKey()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1InputStream;

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->keyData:Lmyorg/bouncycastle/asn1/DERBitString;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 76
    .local v0, aIn:Lmyorg/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v1

    return-object v1
.end method

.method public getPublicKeyData()Lmyorg/bouncycastle/asn1/DERBitString;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->keyData:Lmyorg/bouncycastle/asn1/DERBitString;

    return-object v0
.end method

.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 2

    .prologue
    .line 96
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 98
    .local v0, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->algId:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 99
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->keyData:Lmyorg/bouncycastle/asn1/DERBitString;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 101
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
