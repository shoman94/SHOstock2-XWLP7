.class public Lmyorg/bouncycastle/asn1/LazyDERSequence;
.super Lmyorg/bouncycastle/asn1/DERSequence;
.source "LazyDERSequence.java"


# instance fields
.field private encoded:[B

.field private parsed:Z

.field private size:I


# direct methods
.method constructor <init>([B)V
    .locals 1
    .parameter "encoded"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmyorg/bouncycastle/asn1/LazyDERSequence;->parsed:Z

    .line 10
    const/4 v0, -0x1

    iput v0, p0, Lmyorg/bouncycastle/asn1/LazyDERSequence;->size:I

    .line 13
    iput-object p1, p0, Lmyorg/bouncycastle/asn1/LazyDERSequence;->encoded:[B

    .line 14
    return-void
.end method

.method private parse()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Lmyorg/bouncycastle/asn1/LazyDERConstructionEnumeration;

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/LazyDERSequence;->encoded:[B

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/LazyDERConstructionEnumeration;-><init>([B)V

    .line 19
    .local v0, en:Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 20
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/asn1/DEREncodable;

    invoke-virtual {p0, v1}, Lmyorg/bouncycastle/asn1/LazyDERSequence;->addObject(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_0

    .line 23
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmyorg/bouncycastle/asn1/LazyDERSequence;->parsed:Z

    .line 24
    return-void
.end method


# virtual methods
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
    const/16 v0, 0x30

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/LazyDERSequence;->encoded:[B

    invoke-virtual {p1, v0, v1}, Lmyorg/bouncycastle/asn1/DEROutputStream;->writeEncoded(I[B)V

    .line 58
    return-void
.end method

.method public getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;
    .locals 1
    .parameter "index"

    .prologue
    .line 27
    iget-boolean v0, p0, Lmyorg/bouncycastle/asn1/LazyDERSequence;->parsed:Z

    if-nez v0, :cond_0

    .line 28
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/LazyDERSequence;->parse()V

    .line 31
    :cond_0
    invoke-super {p0, p1}, Lmyorg/bouncycastle/asn1/DERSequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    return-object v0
.end method

.method public getObjects()Ljava/util/Enumeration;
    .locals 2

    .prologue
    .line 35
    iget-boolean v0, p0, Lmyorg/bouncycastle/asn1/LazyDERSequence;->parsed:Z

    if-eqz v0, :cond_0

    .line 36
    invoke-super {p0}, Lmyorg/bouncycastle/asn1/DERSequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 39
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lmyorg/bouncycastle/asn1/LazyDERConstructionEnumeration;

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/LazyDERSequence;->encoded:[B

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/LazyDERConstructionEnumeration;-><init>([B)V

    goto :goto_0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 43
    iget v1, p0, Lmyorg/bouncycastle/asn1/LazyDERSequence;->size:I

    if-gez v1, :cond_0

    .line 44
    new-instance v0, Lmyorg/bouncycastle/asn1/LazyDERConstructionEnumeration;

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/LazyDERSequence;->encoded:[B

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/LazyDERConstructionEnumeration;-><init>([B)V

    .line 46
    .local v0, en:Ljava/util/Enumeration;
    const/4 v1, 0x0

    iput v1, p0, Lmyorg/bouncycastle/asn1/LazyDERSequence;->size:I

    .line 47
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 49
    iget v1, p0, Lmyorg/bouncycastle/asn1/LazyDERSequence;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmyorg/bouncycastle/asn1/LazyDERSequence;->size:I

    goto :goto_0

    .line 53
    .end local v0           #en:Ljava/util/Enumeration;
    :cond_0
    iget v1, p0, Lmyorg/bouncycastle/asn1/LazyDERSequence;->size:I

    return v1
.end method
