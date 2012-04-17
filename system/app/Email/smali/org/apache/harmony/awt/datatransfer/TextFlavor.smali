.class public Lorg/apache/harmony/awt/datatransfer/TextFlavor;
.super Ljava/lang/Object;
.source "TextFlavor.java"


# static fields
.field public static final charsetTextClasses:[Ljava/lang/Class;

.field public static final unicodeTextClasses:[Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    .line 37
    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v2

    const-class v1, Ljava/io/Reader;

    aput-object v1, v0, v3

    const-class v1, Ljava/nio/CharBuffer;

    aput-object v1, v0, v4

    const-class v1, [C

    aput-object v1, v0, v5

    .line 36
    sput-object v0, Lorg/apache/harmony/awt/datatransfer/TextFlavor;->unicodeTextClasses:[Ljava/lang/Class;

    .line 39
    new-array v0, v5, [Ljava/lang/Class;

    .line 40
    const-class v1, Ljava/io/InputStream;

    aput-object v1, v0, v2

    const-class v1, Ljava/nio/ByteBuffer;

    aput-object v1, v0, v3

    const-class v1, [B

    aput-object v1, v0, v4

    .line 39
    sput-object v0, Lorg/apache/harmony/awt/datatransfer/TextFlavor;->charsetTextClasses:[Ljava/lang/Class;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
