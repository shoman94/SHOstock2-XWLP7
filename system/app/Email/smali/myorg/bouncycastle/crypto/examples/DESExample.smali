.class public Lmyorg/bouncycastle/crypto/examples/DESExample;
.super Ljava/lang/Object;
.source "DESExample.java"


# instance fields
.field private cipher:Lmyorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

.field private encrypt:Z

.field private in:Ljava/io/BufferedInputStream;

.field private key:[B

.field private out:Ljava/io/BufferedOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmyorg/bouncycastle/crypto/examples/DESExample;->encrypt:Z

    .line 58
    iput-object v1, p0, Lmyorg/bouncycastle/crypto/examples/DESExample;->cipher:Lmyorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    .line 61
    iput-object v1, p0, Lmyorg/bouncycastle/crypto/examples/DESExample;->in:Ljava/io/BufferedInputStream;

    .line 64
    iput-object v1, p0, Lmyorg/bouncycastle/crypto/examples/DESExample;->out:Ljava/io/BufferedOutputStream;

    .line 67
    iput-object v1, p0, Lmyorg/bouncycastle/crypto/examples/DESExample;->key:[B

    .line 100
    return-void
.end method
