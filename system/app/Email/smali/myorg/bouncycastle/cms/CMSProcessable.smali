.class public interface abstract Lmyorg/bouncycastle/cms/CMSProcessable;
.super Ljava/lang/Object;
.source "CMSProcessable.java"


# virtual methods
.method public abstract getContent()Ljava/lang/Object;
.end method

.method public abstract write(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmyorg/bouncycastle/cms/CMSException;
        }
    .end annotation
.end method
