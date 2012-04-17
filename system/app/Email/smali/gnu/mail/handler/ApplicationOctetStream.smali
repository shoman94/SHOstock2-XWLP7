.class public final Lgnu/mail/handler/ApplicationOctetStream;
.super Lgnu/mail/handler/Application;
.source "ApplicationOctetStream.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 43
    const-string v0, "application/octet-stream"

    const-string v1, "binary"

    invoke-direct {p0, v0, v1}, Lgnu/mail/handler/Application;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method
