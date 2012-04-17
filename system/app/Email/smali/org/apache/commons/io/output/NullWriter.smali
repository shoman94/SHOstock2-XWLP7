.class public Lorg/apache/commons/io/output/NullWriter;
.super Ljava/io/Writer;
.source "NullWriter.java"


# static fields
.field public static final NULL_WRITER:Lorg/apache/commons/io/output/NullWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lorg/apache/commons/io/output/NullWriter;

    invoke-direct {v0}, Lorg/apache/commons/io/output/NullWriter;-><init>()V

    sput-object v0, Lorg/apache/commons/io/output/NullWriter;->NULL_WRITER:Lorg/apache/commons/io/output/NullWriter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 41
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method public write(I)V
    .locals 0
    .parameter "idx"

    .prologue
    .line 50
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 0
    .parameter "str"

    .prologue
    .line 79
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 0
    .parameter "str"
    .parameter "st"
    .parameter "end"

    .prologue
    .line 90
    return-void
.end method

.method public write([C)V
    .locals 0
    .parameter "chr"

    .prologue
    .line 59
    return-void
.end method

.method public write([CII)V
    .locals 0
    .parameter "chr"
    .parameter "st"
    .parameter "end"

    .prologue
    .line 70
    return-void
.end method
