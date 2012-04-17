.class public Lgnu/mail/util/BOutputStream;
.super Lgnu/mail/util/Base64OutputStream;
.source "BOutputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .parameter

    .prologue
    .line 44
    const v0, 0x7fffffff

    invoke-direct {p0, p1, v0}, Lgnu/mail/util/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 45
    return-void
.end method

.method public static encodedLength([B)I
    .locals 1
    .parameter

    .prologue
    .line 49
    array-length v0, p0

    add-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    return v0
.end method
