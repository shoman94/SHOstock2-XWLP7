.class interface abstract Lgnu/inet/ftp/DTP;
.super Ljava/lang/Object;
.source "DTP.java"


# virtual methods
.method public abstract abort()Z
.end method

.method public abstract complete()V
.end method

.method public abstract getInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getOutputStream()Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setTransferMode(I)V
.end method

.method public abstract transferComplete()V
.end method
