.class public Lmyorg/bouncycastle/asn1/OIDTokenizer;
.super Ljava/lang/Object;
.source "OIDTokenizer.java"


# instance fields
.field private index:I

.field private oid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "oid"

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lmyorg/bouncycastle/asn1/OIDTokenizer;->oid:Ljava/lang/String;

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lmyorg/bouncycastle/asn1/OIDTokenizer;->index:I

    .line 16
    return-void
.end method


# virtual methods
.method public hasMoreTokens()Z
    .locals 2

    .prologue
    .line 19
    iget v0, p0, Lmyorg/bouncycastle/asn1/OIDTokenizer;->index:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextToken()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 23
    iget v2, p0, Lmyorg/bouncycastle/asn1/OIDTokenizer;->index:I

    if-ne v2, v5, :cond_0

    .line 24
    const/4 v1, 0x0

    .line 39
    :goto_0
    return-object v1

    .line 28
    :cond_0
    iget-object v2, p0, Lmyorg/bouncycastle/asn1/OIDTokenizer;->oid:Ljava/lang/String;

    const/16 v3, 0x2e

    iget v4, p0, Lmyorg/bouncycastle/asn1/OIDTokenizer;->index:I

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 30
    .local v0, end:I
    if-ne v0, v5, :cond_1

    .line 31
    iget-object v2, p0, Lmyorg/bouncycastle/asn1/OIDTokenizer;->oid:Ljava/lang/String;

    iget v3, p0, Lmyorg/bouncycastle/asn1/OIDTokenizer;->index:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 32
    .local v1, token:Ljava/lang/String;
    iput v5, p0, Lmyorg/bouncycastle/asn1/OIDTokenizer;->index:I

    goto :goto_0

    .line 36
    .end local v1           #token:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lmyorg/bouncycastle/asn1/OIDTokenizer;->oid:Ljava/lang/String;

    iget v3, p0, Lmyorg/bouncycastle/asn1/OIDTokenizer;->index:I

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 38
    .restart local v1       #token:Ljava/lang/String;
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lmyorg/bouncycastle/asn1/OIDTokenizer;->index:I

    goto :goto_0
.end method
