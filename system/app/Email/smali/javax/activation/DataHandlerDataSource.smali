.class final Ljavax/activation/DataHandlerDataSource;
.super Ljava/lang/Object;
.source "DataHandlerDataSource.java"

# interfaces
.implements Ljavax/activation/DataSource;


# instance fields
.field final dh:Ljavax/activation/DataHandler;


# direct methods
.method constructor <init>(Ljavax/activation/DataHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Ljavax/activation/DataHandlerDataSource;->dh:Ljavax/activation/DataHandler;

    .line 48
    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Ljavax/activation/DataHandlerDataSource;->dh:Ljavax/activation/DataHandler;

    invoke-virtual {v0}, Ljavax/activation/DataHandler;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Ljavax/activation/DataHandlerDataSource;->dh:Ljavax/activation/DataHandler;

    invoke-virtual {v0}, Ljavax/activation/DataHandler;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Ljavax/activation/DataHandlerDataSource;->dh:Ljavax/activation/DataHandler;

    invoke-virtual {v0}, Ljavax/activation/DataHandler;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
