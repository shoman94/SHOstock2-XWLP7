.class public Lgnu/inet/http/ByteArrayRequestBodyWriter;
.super Ljava/lang/Object;
.source "ByteArrayRequestBodyWriter.java"

# interfaces
.implements Lgnu/inet/http/RequestBodyWriter;


# instance fields
.field protected content:[B

.field protected pos:I


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .parameter

    .prologue
    .line 66
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lgnu/inet/http/ByteArrayRequestBodyWriter;->content:[B

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lgnu/inet/http/ByteArrayRequestBodyWriter;->pos:I

    .line 69
    return-void
.end method


# virtual methods
.method public getContentLength()I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lgnu/inet/http/ByteArrayRequestBodyWriter;->content:[B

    array-length v0, v0

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lgnu/inet/http/ByteArrayRequestBodyWriter;->pos:I

    .line 87
    return-void
.end method

.method public write([B)I
    .locals 4
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lgnu/inet/http/ByteArrayRequestBodyWriter;->content:[B

    array-length v0, v0

    iget v1, p0, Lgnu/inet/http/ByteArrayRequestBodyWriter;->pos:I

    sub-int/2addr v0, v1

    .line 97
    array-length v1, p1

    if-ge v1, v0, :cond_0

    array-length v0, p1

    .line 98
    :cond_0
    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    .line 100
    iget-object v1, p0, Lgnu/inet/http/ByteArrayRequestBodyWriter;->content:[B

    iget v2, p0, Lgnu/inet/http/ByteArrayRequestBodyWriter;->pos:I

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    iget v1, p0, Lgnu/inet/http/ByteArrayRequestBodyWriter;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lgnu/inet/http/ByteArrayRequestBodyWriter;->pos:I

    .line 103
    :cond_1
    return v0
.end method
