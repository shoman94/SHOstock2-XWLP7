.class public final Lgnu/mail/handler/MultipartMixed;
.super Lgnu/mail/handler/Multipart;
.source "MultipartMixed.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 43
    const-string v0, "multipart/mixed"

    const-string v1, "multipart"

    invoke-direct {p0, v0, v1}, Lgnu/mail/handler/Multipart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method
