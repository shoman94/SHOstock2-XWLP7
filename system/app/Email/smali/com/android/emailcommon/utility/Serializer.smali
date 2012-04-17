.class public Lcom/android/emailcommon/utility/Serializer;
.super Ljava/lang/Object;
.source "Serializer.java"


# instance fields
.field buf:Ljava/io/ByteArrayOutputStream;

.field private logging:Z

.field nameStack:[Ljava/lang/String;

.field out:Ljava/io/ByteArrayOutputStream;

.field pendingTag:I

.field tagTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/emailcommon/utility/Serializer;-><init>(Z)V

    .line 66
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .parameter "startDocument"

    .prologue
    .line 74
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, "Serializer"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/emailcommon/utility/Serializer;->logging:Z

    .line 46
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/android/emailcommon/utility/Serializer;->out:Ljava/io/ByteArrayOutputStream;

    .line 48
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/android/emailcommon/utility/Serializer;->buf:Ljava/io/ByteArrayOutputStream;

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/emailcommon/utility/Serializer;->pendingTag:I

    .line 58
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/emailcommon/utility/Serializer;->nameStack:[Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/emailcommon/utility/Serializer;->tagTable:Ljava/util/Hashtable;

    .line 75
    if-eqz p1, :cond_0

    .line 77
    :try_start_0
    invoke-virtual {p0}, Lcom/android/emailcommon/utility/Serializer;->startDocument()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/utility/Serializer;->out:Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public startDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/emailcommon/utility/Serializer;->out:Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 118
    iget-object v0, p0, Lcom/android/emailcommon/utility/Serializer;->out:Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 119
    iget-object v0, p0, Lcom/android/emailcommon/utility/Serializer;->out:Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 120
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/emailcommon/utility/Serializer;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
