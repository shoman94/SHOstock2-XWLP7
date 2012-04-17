.class public abstract Lmyorg/bouncycastle/asn1/ASN1OctetString;
.super Lmyorg/bouncycastle/asn1/ASN1Object;
.source "ASN1OctetString.java"

# interfaces
.implements Lmyorg/bouncycastle/asn1/ASN1OctetStringParser;


# instance fields
.field string:[B


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/asn1/DEREncodable;)V
    .locals 4
    .parameter "obj"

    .prologue
    .line 69
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 71
    :try_start_0
    invoke-interface {p1}, Lmyorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v1

    const-string v2, "DER"

    invoke-virtual {v1, v2}, Lmyorg/bouncycastle/asn1/DERObject;->getEncoded(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/asn1/ASN1OctetString;->string:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error processing object : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>([B)V
    .locals 2
    .parameter "string"

    .prologue
    .line 62
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 63
    if-nez p1, :cond_0

    .line 64
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "string cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    iput-object p1, p0, Lmyorg/bouncycastle/asn1/ASN1OctetString;->string:[B

    .line 67
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/ASN1OctetString;
    .locals 5
    .parameter "obj"

    .prologue
    .line 36
    if-eqz p0, :cond_0

    instance-of v2, p0, Lmyorg/bouncycastle/asn1/ASN1OctetString;

    if-eqz v2, :cond_1

    .line 37
    :cond_0
    check-cast p0, Lmyorg/bouncycastle/asn1/ASN1OctetString;

    .line 52
    .end local p0
    .local v0, e:Ljava/util/Enumeration;
    .local v1, v:Ljava/util/Vector;
    :goto_0
    return-object p0

    .line 40
    .end local v0           #e:Ljava/util/Enumeration;
    .end local v1           #v:Ljava/util/Vector;
    .restart local p0
    :cond_1
    instance-of v2, p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v2, :cond_2

    .line 41
    check-cast p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    .end local p0
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v2

    invoke-static {v2}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object p0

    goto :goto_0

    .line 44
    .restart local p0
    :cond_2
    instance-of v2, p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v2, :cond_4

    .line 45
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 46
    .restart local v1       #v:Ljava/util/Vector;
    check-cast p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 48
    .restart local v0       #e:Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 49
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    .line 52
    :cond_3
    new-instance p0, Lmyorg/bouncycastle/asn1/BERConstructedOctetString;

    invoke-direct {p0, v1}, Lmyorg/bouncycastle/asn1/BERConstructedOctetString;-><init>(Ljava/util/Vector;)V

    goto :goto_0

    .line 55
    .end local v0           #e:Ljava/util/Enumeration;
    .end local v1           #v:Ljava/util/Vector;
    .restart local p0
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "illegal object in getInstance: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/ASN1OctetString;
    .locals 1
    .parameter "obj"
    .parameter "explicit"

    .prologue
    .line 26
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method asn1Equals(Lmyorg/bouncycastle/asn1/DERObject;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 94
    instance-of v1, p1, Lmyorg/bouncycastle/asn1/ASN1OctetString;

    if-nez v1, :cond_0

    .line 95
    const/4 v1, 0x0

    .line 100
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 98
    check-cast v0, Lmyorg/bouncycastle/asn1/ASN1OctetString;

    .line 100
    .local v0, other:Lmyorg/bouncycastle/asn1/ASN1OctetString;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/ASN1OctetString;->string:[B

    iget-object v2, v0, Lmyorg/bouncycastle/asn1/ASN1OctetString;->string:[B

    invoke-static {v1, v2}, Lmyorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v1

    goto :goto_0
.end method

.method public getOctetStream()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 78
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/ASN1OctetString;->string:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public getOctets()[B
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/ASN1OctetString;->string:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public parser()Lmyorg/bouncycastle/asn1/ASN1OctetStringParser;
    .locals 0

    .prologue
    .line 82
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/ASN1OctetString;->string:[B

    invoke-static {v2}, Lmyorg/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
