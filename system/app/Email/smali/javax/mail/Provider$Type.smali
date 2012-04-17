.class public Ljavax/mail/Provider$Type;
.super Ljava/lang/Object;
.source "Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/mail/Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Type"
.end annotation


# static fields
.field public static final STORE:Ljavax/mail/Provider$Type;

.field public static final TRANSPORT:Ljavax/mail/Provider$Type;


# instance fields
.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    new-instance v0, Ljavax/mail/Provider$Type;

    const-string v1, "Store"

    invoke-direct {v0, v1}, Ljavax/mail/Provider$Type;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljavax/mail/Provider$Type;->STORE:Ljavax/mail/Provider$Type;

    .line 47
    new-instance v0, Ljavax/mail/Provider$Type;

    const-string v1, "Transport"

    invoke-direct {v0, v1}, Ljavax/mail/Provider$Type;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljavax/mail/Provider$Type;->TRANSPORT:Ljavax/mail/Provider$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Ljavax/mail/Provider$Type;->type:Ljava/lang/String;

    .line 54
    return-void
.end method
