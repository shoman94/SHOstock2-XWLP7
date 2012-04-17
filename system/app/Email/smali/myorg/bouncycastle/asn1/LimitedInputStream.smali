.class abstract Lmyorg/bouncycastle/asn1/LimitedInputStream;
.super Ljava/io/InputStream;
.source "LimitedInputStream.java"


# instance fields
.field protected final _in:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 10
    iput-object p1, p0, Lmyorg/bouncycastle/asn1/LimitedInputStream;->_in:Ljava/io/InputStream;

    .line 11
    return-void
.end method


# virtual methods
.method protected setParentEofDetect(Z)V
    .locals 1
    .parameter "on"

    .prologue
    .line 14
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/LimitedInputStream;->_in:Ljava/io/InputStream;

    instance-of v0, v0, Lmyorg/bouncycastle/asn1/IndefiniteLengthInputStream;

    if-eqz v0, :cond_0

    .line 15
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/LimitedInputStream;->_in:Ljava/io/InputStream;

    check-cast v0, Lmyorg/bouncycastle/asn1/IndefiniteLengthInputStream;

    invoke-virtual {v0, p1}, Lmyorg/bouncycastle/asn1/IndefiniteLengthInputStream;->setEofOn00(Z)V

    .line 17
    :cond_0
    return-void
.end method
