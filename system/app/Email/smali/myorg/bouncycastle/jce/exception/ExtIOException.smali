.class public Lmyorg/bouncycastle/jce/exception/ExtIOException;
.super Ljava/io/IOException;
.source "ExtIOException.java"

# interfaces
.implements Lmyorg/bouncycastle/jce/exception/ExtException;


# instance fields
.field private cause:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "message"
    .parameter "cause"

    .prologue
    .line 10
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 11
    iput-object p2, p0, Lmyorg/bouncycastle/jce/exception/ExtIOException;->cause:Ljava/lang/Throwable;

    .line 12
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lmyorg/bouncycastle/jce/exception/ExtIOException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method
