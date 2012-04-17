.class public abstract Lmyorg/bouncycastle/sasn1/Asn1Object;
.super Ljava/lang/Object;
.source "Asn1Object.java"


# instance fields
.field protected _baseTag:I

.field protected _contentStream:Ljava/io/InputStream;

.field protected _tagNumber:I


# direct methods
.method protected constructor <init>(IILjava/io/InputStream;)V
    .locals 0
    .parameter "baseTag"
    .parameter "tagNumber"
    .parameter "contentStream"

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lmyorg/bouncycastle/sasn1/Asn1Object;->_baseTag:I

    .line 16
    iput p2, p0, Lmyorg/bouncycastle/sasn1/Asn1Object;->_tagNumber:I

    .line 17
    iput-object p3, p0, Lmyorg/bouncycastle/sasn1/Asn1Object;->_contentStream:Ljava/io/InputStream;

    .line 18
    return-void
.end method


# virtual methods
.method public getRawContentStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lmyorg/bouncycastle/sasn1/Asn1Object;->_contentStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public isConstructed()Z
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lmyorg/bouncycastle/sasn1/Asn1Object;->_baseTag:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
