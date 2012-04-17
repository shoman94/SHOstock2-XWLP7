.class public Lmyorg/bouncycastle/asn1/pkcs/PBKDF2Params;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "PBKDF2Params.java"


# instance fields
.field iterationCount:Lmyorg/bouncycastle/asn1/DERInteger;

.field keyLength:Lmyorg/bouncycastle/asn1/DERInteger;

.field octStr:Lmyorg/bouncycastle/asn1/ASN1OctetString;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 2
    .parameter "seq"

    .prologue
    .line 38
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 39
    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 41
    .local v0, e:Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/asn1/ASN1OctetString;

    iput-object v1, p0, Lmyorg/bouncycastle/asn1/pkcs/PBKDF2Params;->octStr:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    .line 42
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/asn1/DERInteger;

    iput-object v1, p0, Lmyorg/bouncycastle/asn1/pkcs/PBKDF2Params;->iterationCount:Lmyorg/bouncycastle/asn1/DERInteger;

    .line 44
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/asn1/DERInteger;

    iput-object v1, p0, Lmyorg/bouncycastle/asn1/pkcs/PBKDF2Params;->keyLength:Lmyorg/bouncycastle/asn1/DERInteger;

    .line 49
    :goto_0
    return-void

    .line 47
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lmyorg/bouncycastle/asn1/pkcs/PBKDF2Params;->keyLength:Lmyorg/bouncycastle/asn1/DERInteger;

    goto :goto_0
.end method

.method public constructor <init>([BI)V
    .locals 1
    .parameter "salt"
    .parameter "iterationCount"

    .prologue
    .line 33
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 34
    new-instance v0, Lmyorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v0, p1}, Lmyorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/pkcs/PBKDF2Params;->octStr:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    .line 35
    new-instance v0, Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v0, p2}, Lmyorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/pkcs/PBKDF2Params;->iterationCount:Lmyorg/bouncycastle/asn1/DERInteger;

    .line 36
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/pkcs/PBKDF2Params;
    .locals 3
    .parameter "obj"

    .prologue
    .line 22
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/pkcs/PBKDF2Params;

    if-eqz v0, :cond_0

    .line 23
    check-cast p0, Lmyorg/bouncycastle/asn1/pkcs/PBKDF2Params;

    .line 27
    .end local p0
    :goto_0
    return-object p0

    .line 26
    .restart local p0
    :cond_0
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_1

    .line 27
    new-instance v0, Lmyorg/bouncycastle/asn1/pkcs/PBKDF2Params;

    check-cast p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lmyorg/bouncycastle/asn1/pkcs/PBKDF2Params;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 30
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
.method public getIterationCount()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/pkcs/PBKDF2Params;->iterationCount:Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getSalt()[B
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/pkcs/PBKDF2Params;->octStr:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    return-object v0
.end method

.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 2

    .prologue
    .line 68
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 70
    .local v0, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/pkcs/PBKDF2Params;->octStr:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 71
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/pkcs/PBKDF2Params;->iterationCount:Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 73
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/pkcs/PBKDF2Params;->keyLength:Lmyorg/bouncycastle/asn1/DERInteger;

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/pkcs/PBKDF2Params;->keyLength:Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 77
    :cond_0
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
