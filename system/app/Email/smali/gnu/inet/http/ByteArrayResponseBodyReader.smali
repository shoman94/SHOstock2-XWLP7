.class public Lgnu/inet/http/ByteArrayResponseBodyReader;
.super Ljava/lang/Object;
.source "ByteArrayResponseBodyReader.java"

# interfaces
.implements Lgnu/inet/http/ResponseBodyReader;


# instance fields
.field protected content:[B

.field protected len:I

.field protected pos:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    const/16 v0, 0x1000

    invoke-direct {p0, v0}, Lgnu/inet/http/ByteArrayResponseBodyReader;-><init>(I)V

    .line 71
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    .line 79
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-array v0, p1, [B

    iput-object v0, p0, Lgnu/inet/http/ByteArrayResponseBodyReader;->content:[B

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lgnu/inet/http/ByteArrayResponseBodyReader;->len:I

    iput v0, p0, Lgnu/inet/http/ByteArrayResponseBodyReader;->pos:I

    .line 82
    return-void
.end method


# virtual methods
.method public accept(Lgnu/inet/http/Request;Lgnu/inet/http/Response;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 89
    const/4 v0, 0x1

    return v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    iput v0, p0, Lgnu/inet/http/ByteArrayResponseBodyReader;->pos:I

    .line 109
    return-void
.end method

.method public read([BII)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 94
    sub-int v0, p3, p2

    .line 95
    iget v1, p0, Lgnu/inet/http/ByteArrayResponseBodyReader;->pos:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lgnu/inet/http/ByteArrayResponseBodyReader;->content:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 97
    iget-object v1, p0, Lgnu/inet/http/ByteArrayResponseBodyReader;->content:[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    .line 98
    iget-object v2, p0, Lgnu/inet/http/ByteArrayResponseBodyReader;->content:[B

    iget v3, p0, Lgnu/inet/http/ByteArrayResponseBodyReader;->pos:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    iput-object v1, p0, Lgnu/inet/http/ByteArrayResponseBodyReader;->content:[B

    .line 101
    :cond_0
    iget-object v1, p0, Lgnu/inet/http/ByteArrayResponseBodyReader;->content:[B

    iget v2, p0, Lgnu/inet/http/ByteArrayResponseBodyReader;->pos:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    iget v1, p0, Lgnu/inet/http/ByteArrayResponseBodyReader;->pos:I

    add-int/2addr v0, v1

    iput v0, p0, Lgnu/inet/http/ByteArrayResponseBodyReader;->pos:I

    .line 103
    iget v0, p0, Lgnu/inet/http/ByteArrayResponseBodyReader;->pos:I

    iput v0, p0, Lgnu/inet/http/ByteArrayResponseBodyReader;->len:I

    .line 104
    return-void
.end method

.method public toByteArray()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 117
    iget v0, p0, Lgnu/inet/http/ByteArrayResponseBodyReader;->len:I

    new-array v0, v0, [B

    .line 118
    iget-object v1, p0, Lgnu/inet/http/ByteArrayResponseBodyReader;->content:[B

    iget v2, p0, Lgnu/inet/http/ByteArrayResponseBodyReader;->len:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    return-object v0
.end method
