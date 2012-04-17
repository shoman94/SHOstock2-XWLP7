.class public Lmyorg/bouncycastle/cms/CMSRuntimeException;
.super Ljava/lang/RuntimeException;
.source "CMSRuntimeException.java"


# instance fields
.field e:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 8
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 9
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lmyorg/bouncycastle/cms/CMSRuntimeException;->e:Ljava/lang/Exception;

    return-object v0
.end method
