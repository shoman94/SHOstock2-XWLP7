.class public Lmyorg/bouncycastle/asn1/DERIA5String;
.super Lmyorg/bouncycastle/asn1/ASN1Object;
.source "DERIA5String.java"

# interfaces
.implements Lmyorg/bouncycastle/asn1/DERString;


# instance fields
.field string:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmyorg/bouncycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;Z)V

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .parameter "string"
    .parameter "validate"

    .prologue
    .line 75
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 76
    if-nez p1, :cond_0

    .line 77
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "string cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p1}, Lmyorg/bouncycastle/asn1/DERIA5String;->isIA5String(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "string contains illegal characters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_1
    iput-object p1, p0, Lmyorg/bouncycastle/asn1/DERIA5String;->string:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public constructor <init>([B)V
    .locals 3
    .parameter "string"

    .prologue
    .line 50
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 51
    array-length v2, p1

    new-array v0, v2, [C

    .line 53
    .local v0, cs:[C
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_0

    .line 54
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 53
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/DERIA5String;->string:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/DERIA5String;
    .locals 3
    .parameter "obj"

    .prologue
    .line 18
    if-eqz p0, :cond_0

    instance-of v0, p0, Lmyorg/bouncycastle/asn1/DERIA5String;

    if-eqz v0, :cond_1

    .line 19
    :cond_0
    check-cast p0, Lmyorg/bouncycastle/asn1/DERIA5String;

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
    new-instance v0, Lmyorg/bouncycastle/asn1/DERIA5String;

    check-cast p0, Lmyorg/bouncycastle/asn1/ASN1OctetString;

    .end local p0
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERIA5String;-><init>([B)V

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

    invoke-static {v0}, Lmyorg/bouncycastle/asn1/DERIA5String;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/DERIA5String;

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

.method public static getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/DERIA5String;
    .locals 1
    .parameter "obj"
    .parameter "explicit"

    .prologue
    .line 44
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/asn1/DERIA5String;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/DERIA5String;

    move-result-object v0

    return-object v0
.end method

.method public static isIA5String(Ljava/lang/String;)Z
    .locals 3
    .parameter "str"

    .prologue
    .line 130
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 131
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 133
    .local v0, ch:C
    const/16 v2, 0x7f

    if-le v0, v2, :cond_0

    .line 134
    const/4 v2, 0x0

    .line 138
    .end local v0           #ch:C
    :goto_1
    return v2

    .line 130
    .restart local v0       #ch:C
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 138
    .end local v0           #ch:C
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method asn1Equals(Lmyorg/bouncycastle/asn1/DERObject;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 114
    instance-of v1, p1, Lmyorg/bouncycastle/asn1/DERIA5String;

    if-nez v1, :cond_0

    .line 115
    const/4 v1, 0x0

    .line 120
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 118
    check-cast v0, Lmyorg/bouncycastle/asn1/DERIA5String;

    .line 120
    .local v0, s:Lmyorg/bouncycastle/asn1/DERIA5String;
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/DERIA5String;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERIA5String;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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
    .line 106
    const/16 v0, 0x16

    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/DERIA5String;->getOctets()[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lmyorg/bouncycastle/asn1/DEROutputStream;->writeEncoded(I[B)V

    .line 107
    return-void
.end method

.method public getOctets()[B
    .locals 4

    .prologue
    .line 95
    iget-object v3, p0, Lmyorg/bouncycastle/asn1/DERIA5String;->string:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 96
    .local v1, cs:[C
    array-length v3, v1

    new-array v0, v3, [B

    .line 98
    .local v0, bs:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, v1

    if-eq v2, v3, :cond_0

    .line 99
    aget-char v3, v1, v2

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 98
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 102
    :cond_0
    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/DERIA5String;->string:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/DERIA5String;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/DERIA5String;->string:Ljava/lang/String;

    return-object v0
.end method
