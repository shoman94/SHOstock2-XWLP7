.class Lmyorg/bouncycastle/math/ec/ZTauElement;
.super Ljava/lang/Object;
.source "ZTauElement.java"


# instance fields
.field public final u:Ljava/math/BigInteger;

.field public final v:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0
    .parameter "u"
    .parameter "v"

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lmyorg/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    .line 34
    iput-object p2, p0, Lmyorg/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    .line 35
    return-void
.end method
