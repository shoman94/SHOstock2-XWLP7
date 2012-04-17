.class public Lmyorg/bouncycastle/util/encoders/UrlBase64;
.super Ljava/lang/Object;
.source "UrlBase64.java"


# static fields
.field private static final encoder:Lmyorg/bouncycastle/util/encoders/Encoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lmyorg/bouncycastle/util/encoders/UrlBase64Encoder;

    invoke-direct {v0}, Lmyorg/bouncycastle/util/encoders/UrlBase64Encoder;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/util/encoders/UrlBase64;->encoder:Lmyorg/bouncycastle/util/encoders/Encoder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
