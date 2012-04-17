.class public Lmyorg/bouncycastle/asn1/DERGeneralString;
.super Lmyorg/bouncycastle/asn1/ASN1Object;
.source "DERGeneralString.java"

# interfaces
.implements Lmyorg/bouncycastle/asn1/DERString;


# instance fields
.field private string:Ljava/lang/String;


# direct methods
.method public constructor <init>([B)V
    .locals 3
    .parameter "string"

    .prologue
    .line 27
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 28
    array-length v2, p1

    new-array v0, v2, [C

    .line 29
    .local v0, cs:[C
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_0

    .line 30
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 29
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 32
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/DERGeneralString;->string:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method asn1Equals(Lmyorg/bouncycastle/asn1/DERObject;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 65
    instance-of v1, p1, Lmyorg/bouncycastle/asn1/DERGeneralString;

    if-nez v1, :cond_0

    .line 66
    const/4 v1, 0x0

    .line 69
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 68
    check-cast v0, Lmyorg/bouncycastle/asn1/DERGeneralString;

    .line 69
    .local v0, s:Lmyorg/bouncycastle/asn1/DERGeneralString;
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/DERGeneralString;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERGeneralString;->getString()Ljava/lang/String;

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
    .line 57
    const/16 v0, 0x1b

    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/DERGeneralString;->getOctets()[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lmyorg/bouncycastle/asn1/DEROutputStream;->writeEncoded(I[B)V

    .line 58
    return-void
.end method

.method public getOctets()[B
    .locals 4

    .prologue
    .line 48
    iget-object v3, p0, Lmyorg/bouncycastle/asn1/DERGeneralString;->string:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 49
    .local v1, cs:[C
    array-length v3, v1

    new-array v0, v3, [B

    .line 50
    .local v0, bs:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, v1

    if-eq v2, v3, :cond_0

    .line 51
    aget-char v3, v1, v2

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 50
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 53
    :cond_0
    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/DERGeneralString;->string:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/DERGeneralString;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/DERGeneralString;->string:Ljava/lang/String;

    return-object v0
.end method
