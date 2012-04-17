.class public final Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;
.super Ljava/lang/Object;
.source "ReflectionSocketFactory.java"


# static fields
.field private static INETSOCKETADDRESS_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

.field private static REFLECTION_FAILED:Z

.field private static SOCKETBIND_METHOD:Ljava/lang/reflect/Method;

.field private static SOCKETCONNECT_METHOD:Ljava/lang/reflect/Method;

.field private static SOCKETTIMEOUTEXCEPTION_CLASS:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 87
    const/4 v0, 0x0

    sput-boolean v0, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->REFLECTION_FAILED:Z

    .line 89
    sput-object v1, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->INETSOCKETADDRESS_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    .line 91
    sput-object v1, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->SOCKETCONNECT_METHOD:Ljava/lang/reflect/Method;

    .line 93
    sput-object v1, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->SOCKETBIND_METHOD:Ljava/lang/reflect/Method;

    .line 95
    sput-object v1, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->SOCKETTIMEOUTEXCEPTION_CLASS:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 101
    return-void
.end method
