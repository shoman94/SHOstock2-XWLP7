.class Lcom/seven/Z7/util/Z7Marshaller$CountOutputStream;
.super Ljava/io/OutputStream;
.source "Z7Marshaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seven/Z7/util/Z7Marshaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CountOutputStream"
.end annotation


# instance fields
.field count:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 149
    const/4 v0, 0x0

    iput v0, p0, Lcom/seven/Z7/util/Z7Marshaller$CountOutputStream;->count:I

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 1
    .parameter "i"

    .prologue
    .line 152
    iget v0, p0, Lcom/seven/Z7/util/Z7Marshaller$CountOutputStream;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/seven/Z7/util/Z7Marshaller$CountOutputStream;->count:I

    .line 153
    return-void
.end method

.method public write([BII)V
    .locals 1
    .parameter "buf"
    .parameter "offset"
    .parameter "len"

    .prologue
    .line 156
    iget v0, p0, Lcom/seven/Z7/util/Z7Marshaller$CountOutputStream;->count:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/seven/Z7/util/Z7Marshaller$CountOutputStream;->count:I

    .line 157
    return-void
.end method
