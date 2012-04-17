.class public Lmyorg/bouncycastle/asn1/DEREnumerated;
.super Lmyorg/bouncycastle/asn1/ASN1Object;
.source "DEREnumerated.java"


# instance fields
.field bytes:[B


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 47
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 48
    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/DEREnumerated;->bytes:[B

    .line 49
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .parameter "bytes"

    .prologue
    .line 55
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 56
    iput-object p1, p0, Lmyorg/bouncycastle/asn1/DEREnumerated;->bytes:[B

    .line 57
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/DEREnumerated;
    .locals 3
    .parameter "obj"

    .prologue
    .line 18
    if-eqz p0, :cond_0

    instance-of v0, p0, Lmyorg/bouncycastle/asn1/DEREnumerated;

    if-eqz v0, :cond_1

    .line 19
    :cond_0
    check-cast p0, Lmyorg/bouncycastle/asn1/DEREnumerated;

    .line 27
    .end local p0
    :goto_0
    return-object p0

    .line 22
    .restart local p0
    :cond_1
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_2

    .line 23
    new-instance v0, Lmyorg/bouncycastle/asn1/DEREnumerated;

    check-cast p0, Lmyorg/bouncycastle/asn1/ASN1OctetString;

    .end local p0
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DEREnumerated;-><init>([B)V

    move-object p0, v0

    goto :goto_0

    .line 26
    .restart local p0
    :cond_2
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_3

    .line 27
    check-cast p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    .end local p0
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/asn1/DEREnumerated;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/DEREnumerated;

    move-result-object p0

    goto :goto_0

    .line 30
    .restart local p0
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal object in getInstance: "

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
.method asn1Equals(Lmyorg/bouncycastle/asn1/DERObject;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 68
    instance-of v1, p1, Lmyorg/bouncycastle/asn1/DEREnumerated;

    if-nez v1, :cond_0

    .line 69
    const/4 v1, 0x0

    .line 74
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 72
    check-cast v0, Lmyorg/bouncycastle/asn1/DEREnumerated;

    .line 74
    .local v0, other:Lmyorg/bouncycastle/asn1/DEREnumerated;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/DEREnumerated;->bytes:[B

    iget-object v2, v0, Lmyorg/bouncycastle/asn1/DEREnumerated;->bytes:[B

    invoke-static {v1, v2}, Lmyorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v1

    goto :goto_0
.end method

.method encode(Lmyorg/bouncycastle/asn1/DEROutputStream;)V
    .locals 2
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    const/16 v0, 0xa

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/DEREnumerated;->bytes:[B

    invoke-virtual {p1, v0, v1}, Lmyorg/bouncycastle/asn1/DEROutputStream;->writeEncoded(I[B)V

    .line 65
    return-void
.end method

.method public getValue()Ljava/math/BigInteger;
    .locals 2

    .prologue
    .line 60
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/DEREnumerated;->bytes:[B

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/DEREnumerated;->bytes:[B

    invoke-static {v0}, Lmyorg/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method
