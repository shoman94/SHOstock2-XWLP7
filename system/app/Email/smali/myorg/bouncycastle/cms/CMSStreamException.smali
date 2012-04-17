.class public Lmyorg/bouncycastle/cms/CMSStreamException;
.super Ljava/io/IOException;
.source "CMSStreamException.java"


# instance fields
.field private final underlying:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 10
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lmyorg/bouncycastle/cms/CMSStreamException;->underlying:Ljava/lang/Throwable;

    .line 12
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "msg"
    .parameter "underlying"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 16
    iput-object p2, p0, Lmyorg/bouncycastle/cms/CMSStreamException;->underlying:Ljava/lang/Throwable;

    .line 17
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lmyorg/bouncycastle/cms/CMSStreamException;->underlying:Ljava/lang/Throwable;

    return-object v0
.end method
