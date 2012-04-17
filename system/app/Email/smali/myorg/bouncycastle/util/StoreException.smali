.class public Lmyorg/bouncycastle/util/StoreException;
.super Ljava/lang/RuntimeException;
.source "StoreException.java"


# instance fields
.field private _e:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "s"
    .parameter "e"

    .prologue
    .line 8
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 9
    iput-object p2, p0, Lmyorg/bouncycastle/util/StoreException;->_e:Ljava/lang/Throwable;

    .line 10
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lmyorg/bouncycastle/util/StoreException;->_e:Ljava/lang/Throwable;

    return-object v0
.end method
