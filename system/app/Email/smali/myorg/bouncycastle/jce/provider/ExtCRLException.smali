.class Lmyorg/bouncycastle/jce/provider/ExtCRLException;
.super Ljava/security/cert/CRLException;
.source "ExtCRLException.java"


# instance fields
.field cause:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "message"
    .parameter "cause"

    .prologue
    .line 10
    invoke-direct {p0, p1}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    .line 11
    iput-object p2, p0, Lmyorg/bouncycastle/jce/provider/ExtCRLException;->cause:Ljava/lang/Throwable;

    .line 12
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/ExtCRLException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method
