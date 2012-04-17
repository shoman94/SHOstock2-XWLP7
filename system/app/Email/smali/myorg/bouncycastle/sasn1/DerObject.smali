.class public Lmyorg/bouncycastle/sasn1/DerObject;
.super Lmyorg/bouncycastle/sasn1/Asn1Object;
.source "DerObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmyorg/bouncycastle/sasn1/DerObject$BasicDerGenerator;
    }
.end annotation


# instance fields
.field private _content:[B


# direct methods
.method constructor <init>(II[B)V
    .locals 1
    .parameter "baseTag"
    .parameter "tagNumber"
    .parameter "content"

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmyorg/bouncycastle/sasn1/Asn1Object;-><init>(IILjava/io/InputStream;)V

    .line 19
    iput-object p3, p0, Lmyorg/bouncycastle/sasn1/DerObject;->_content:[B

    .line 20
    return-void
.end method


# virtual methods
.method public getRawContentStream()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 27
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lmyorg/bouncycastle/sasn1/DerObject;->_content:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method
