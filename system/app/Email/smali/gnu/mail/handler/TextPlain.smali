.class public final Lgnu/mail/handler/TextPlain;
.super Lgnu/mail/handler/Text;
.source "TextPlain.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 42
    const-string v0, "text/plain"

    const-string v1, "plaintext"

    invoke-direct {p0, v0, v1}, Lgnu/mail/handler/Text;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method
