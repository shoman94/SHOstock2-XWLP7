.class Lmyorg/bouncycastle/cms/BaseDigestCalculator;
.super Ljava/lang/Object;
.source "BaseDigestCalculator.java"

# interfaces
.implements Lmyorg/bouncycastle/cms/DigestCalculator;


# instance fields
.field private final digest:[B


# direct methods
.method constructor <init>([B)V
    .locals 0
    .parameter "digest"

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lmyorg/bouncycastle/cms/BaseDigestCalculator;->digest:[B

    .line 11
    return-void
.end method


# virtual methods
.method public getDigest()[B
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lmyorg/bouncycastle/cms/BaseDigestCalculator;->digest:[B

    invoke-static {v0}, Lmyorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method
