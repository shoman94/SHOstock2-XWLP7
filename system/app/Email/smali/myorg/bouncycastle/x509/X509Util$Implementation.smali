.class Lmyorg/bouncycastle/x509/X509Util$Implementation;
.super Ljava/lang/Object;
.source "X509Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/x509/X509Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Implementation"
.end annotation


# instance fields
.field engine:Ljava/lang/Object;

.field provider:Ljava/security/Provider;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/security/Provider;)V
    .locals 0
    .parameter "engine"
    .parameter "provider"

    .prologue
    .line 250
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 251
    iput-object p1, p0, Lmyorg/bouncycastle/x509/X509Util$Implementation;->engine:Ljava/lang/Object;

    .line 252
    iput-object p2, p0, Lmyorg/bouncycastle/x509/X509Util$Implementation;->provider:Ljava/security/Provider;

    .line 253
    return-void
.end method


# virtual methods
.method getEngine()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lmyorg/bouncycastle/x509/X509Util$Implementation;->engine:Ljava/lang/Object;

    return-object v0
.end method

.method getProvider()Ljava/security/Provider;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lmyorg/bouncycastle/x509/X509Util$Implementation;->provider:Ljava/security/Provider;

    return-object v0
.end method
