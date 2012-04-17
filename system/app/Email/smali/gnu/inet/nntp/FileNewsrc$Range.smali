.class Lgnu/inet/nntp/FileNewsrc$Range;
.super Ljava/lang/Object;
.source "FileNewsrc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgnu/inet/nntp/FileNewsrc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Range"
.end annotation


# instance fields
.field from:I

.field to:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 573
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 574
    if-le p1, p2, :cond_0

    .line 576
    iput p2, p0, Lgnu/inet/nntp/FileNewsrc$Range;->from:I

    .line 577
    iput p1, p0, Lgnu/inet/nntp/FileNewsrc$Range;->to:I

    .line 584
    :goto_0
    return-void

    .line 581
    :cond_0
    iput p1, p0, Lgnu/inet/nntp/FileNewsrc$Range;->from:I

    .line 582
    iput p2, p0, Lgnu/inet/nntp/FileNewsrc$Range;->to:I

    goto :goto_0
.end method


# virtual methods
.method public contains(I)Z
    .locals 1
    .parameter

    .prologue
    .line 588
    iget v0, p0, Lgnu/inet/nntp/FileNewsrc$Range;->from:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lgnu/inet/nntp/FileNewsrc$Range;->to:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 593
    iget v0, p0, Lgnu/inet/nntp/FileNewsrc$Range;->from:I

    iget v1, p0, Lgnu/inet/nntp/FileNewsrc$Range;->to:I

    if-eq v0, v1, :cond_0

    .line 595
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p0, Lgnu/inet/nntp/FileNewsrc$Range;->from:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lgnu/inet/nntp/FileNewsrc$Range;->to:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 603
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lgnu/inet/nntp/FileNewsrc$Range;->from:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
