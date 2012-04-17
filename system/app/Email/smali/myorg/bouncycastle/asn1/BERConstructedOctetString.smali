.class public Lmyorg/bouncycastle/asn1/BERConstructedOctetString;
.super Lmyorg/bouncycastle/asn1/DEROctetString;
.source "BERConstructedOctetString.java"


# instance fields
.field private octs:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Ljava/util/Vector;)V
    .locals 1
    .parameter "octs"

    .prologue
    .line 44
    invoke-static {p1}, Lmyorg/bouncycastle/asn1/BERConstructedOctetString;->toBytes(Ljava/util/Vector;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 46
    iput-object p1, p0, Lmyorg/bouncycastle/asn1/BERConstructedOctetString;->octs:Ljava/util/Vector;

    .line 47
    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/asn1/DEREncodable;)V
    .locals 1
    .parameter "obj"

    .prologue
    .line 54
    invoke-interface {p1}, Lmyorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/asn1/DEROctetString;-><init>(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 55
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .parameter "string"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lmyorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 41
    return-void
.end method

.method private generateOcts()Ljava/util/Vector;
    .locals 7

    .prologue
    .line 73
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 74
    .local v3, vec:Ljava/util/Vector;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lmyorg/bouncycastle/asn1/ASN1OctetString;->string:[B

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 77
    add-int/lit16 v4, v1, 0x3e8

    iget-object v5, p0, Lmyorg/bouncycastle/asn1/ASN1OctetString;->string:[B

    array-length v5, v5

    if-le v4, v5, :cond_0

    .line 78
    iget-object v4, p0, Lmyorg/bouncycastle/asn1/ASN1OctetString;->string:[B

    array-length v0, v4

    .line 83
    .local v0, end:I
    :goto_1
    sub-int v4, v0, v1

    new-array v2, v4, [B

    .line 85
    .local v2, nStr:[B
    iget-object v4, p0, Lmyorg/bouncycastle/asn1/ASN1OctetString;->string:[B

    const/4 v5, 0x0

    array-length v6, v2

    invoke-static {v4, v1, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    new-instance v4, Lmyorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v4, v2}, Lmyorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 74
    add-int/lit16 v1, v1, 0x3e8

    goto :goto_0

    .line 80
    .end local v0           #end:I
    .end local v2           #nStr:[B
    :cond_0
    add-int/lit16 v0, v1, 0x3e8

    .restart local v0       #end:I
    goto :goto_1

    .line 90
    .end local v0           #end:I
    :cond_1
    return-object v3
.end method

.method private static toBytes(Ljava/util/Vector;)[B
    .locals 7
    .parameter "octs"

    .prologue
    .line 16
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 18
    .local v0, bOut:Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v4

    if-eq v2, v4, :cond_0

    .line 20
    :try_start_0
    invoke-virtual {p0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmyorg/bouncycastle/asn1/DEROctetString;

    .line 22
    .local v3, o:Lmyorg/bouncycastle/asn1/DEROctetString;
    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/DEROctetString;->getOctets()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 18
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 23
    .end local v3           #o:Lmyorg/bouncycastle/asn1/DEROctetString;
    :catch_0
    move-exception v1

    .line 24
    .local v1, e:Ljava/lang/ClassCastException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " found in input should only contain DEROctetString"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 26
    .end local v1           #e:Ljava/lang/ClassCastException;
    :catch_1
    move-exception v1

    .line 27
    .local v1, e:Ljava/io/IOException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exception converting octets "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 31
    .end local v1           #e:Ljava/io/IOException;
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public encode(Lmyorg/bouncycastle/asn1/DEROutputStream;)V
    .locals 3
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 94
    instance-of v1, p1, Lmyorg/bouncycastle/asn1/ASN1OutputStream;

    if-nez v1, :cond_0

    instance-of v1, p1, Lmyorg/bouncycastle/asn1/BEROutputStream;

    if-eqz v1, :cond_2

    .line 95
    :cond_0
    const/16 v1, 0x24

    invoke-virtual {p1, v1}, Lmyorg/bouncycastle/asn1/DEROutputStream;->write(I)V

    .line 97
    const/16 v1, 0x80

    invoke-virtual {p1, v1}, Lmyorg/bouncycastle/asn1/DEROutputStream;->write(I)V

    .line 102
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/BERConstructedOctetString;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 103
    .local v0, e:Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lmyorg/bouncycastle/asn1/DEROutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 107
    :cond_1
    invoke-virtual {p1, v2}, Lmyorg/bouncycastle/asn1/DEROutputStream;->write(I)V

    .line 108
    invoke-virtual {p1, v2}, Lmyorg/bouncycastle/asn1/DEROutputStream;->write(I)V

    .line 112
    .end local v0           #e:Ljava/util/Enumeration;
    :goto_1
    return-void

    .line 110
    :cond_2
    invoke-super {p0, p1}, Lmyorg/bouncycastle/asn1/DEROctetString;->encode(Lmyorg/bouncycastle/asn1/DEROutputStream;)V

    goto :goto_1
.end method

.method public getObjects()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/BERConstructedOctetString;->octs:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 66
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/BERConstructedOctetString;->generateOcts()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 69
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/BERConstructedOctetString;->octs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    goto :goto_0
.end method

.method public getOctets()[B
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/ASN1OctetString;->string:[B

    return-object v0
.end method
