.class public Lmyorg/bouncycastle/asn1/DERNumericString;
.super Lmyorg/bouncycastle/asn1/ASN1Object;
.source "DERNumericString.java"

# interfaces
.implements Lmyorg/bouncycastle/asn1/DERString;


# instance fields
.field string:Ljava/lang/String;


# direct methods
.method public constructor <init>([B)V
    .locals 3
    .parameter "string"

    .prologue
    .line 51
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 52
    array-length v2, p1

    new-array v0, v2, [C

    .line 54
    .local v0, cs:[C
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_0

    .line 55
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 54
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 58
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/DERNumericString;->string:Ljava/lang/String;

    .line 59
    return-void
.end method


# virtual methods
.method asn1Equals(Lmyorg/bouncycastle/asn1/DERObject;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 112
    instance-of v1, p1, Lmyorg/bouncycastle/asn1/DERNumericString;

    if-nez v1, :cond_0

    .line 113
    const/4 v1, 0x0

    .line 118
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 116
    check-cast v0, Lmyorg/bouncycastle/asn1/DERNumericString;

    .line 118
    .local v0, s:Lmyorg/bouncycastle/asn1/DERNumericString;
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/DERNumericString;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERNumericString;->getString()Ljava/lang/String;

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
    .line 104
    const/16 v0, 0x12

    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/DERNumericString;->getOctets()[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lmyorg/bouncycastle/asn1/DEROutputStream;->writeEncoded(I[B)V

    .line 105
    return-void
.end method

.method public getOctets()[B
    .locals 4

    .prologue
    .line 93
    iget-object v3, p0, Lmyorg/bouncycastle/asn1/DERNumericString;->string:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 94
    .local v1, cs:[C
    array-length v3, v1

    new-array v0, v3, [B

    .line 96
    .local v0, bs:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, v1

    if-eq v2, v3, :cond_0

    .line 97
    aget-char v3, v1, v2

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 96
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 100
    :cond_0
    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/DERNumericString;->string:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/DERNumericString;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/DERNumericString;->string:Ljava/lang/String;

    return-object v0
.end method
