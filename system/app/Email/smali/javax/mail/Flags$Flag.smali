.class public final Ljavax/mail/Flags$Flag;
.super Ljava/lang/Object;
.source "Flags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/mail/Flags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Flag"
.end annotation


# static fields
.field public static final ANSWERED:Ljavax/mail/Flags$Flag;

.field public static final DELETED:Ljavax/mail/Flags$Flag;

.field public static final DRAFT:Ljavax/mail/Flags$Flag;

.field public static final FLAGGED:Ljavax/mail/Flags$Flag;

.field public static final RECENT:Ljavax/mail/Flags$Flag;

.field public static final SEEN:Ljavax/mail/Flags$Flag;

.field public static final USER:Ljavax/mail/Flags$Flag;

.field private static final flag2flag:Ljava/util/HashMap;


# instance fields
.field flag:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Ljavax/mail/Flags$Flag;->flag2flag:Ljava/util/HashMap;

    .line 63
    new-instance v0, Ljavax/mail/Flags$Flag;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljavax/mail/Flags$Flag;-><init>(I)V

    sput-object v0, Ljavax/mail/Flags$Flag;->ANSWERED:Ljavax/mail/Flags$Flag;

    .line 68
    new-instance v0, Ljavax/mail/Flags$Flag;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljavax/mail/Flags$Flag;-><init>(I)V

    sput-object v0, Ljavax/mail/Flags$Flag;->DELETED:Ljavax/mail/Flags$Flag;

    .line 73
    new-instance v0, Ljavax/mail/Flags$Flag;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljavax/mail/Flags$Flag;-><init>(I)V

    sput-object v0, Ljavax/mail/Flags$Flag;->DRAFT:Ljavax/mail/Flags$Flag;

    .line 78
    new-instance v0, Ljavax/mail/Flags$Flag;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljavax/mail/Flags$Flag;-><init>(I)V

    sput-object v0, Ljavax/mail/Flags$Flag;->FLAGGED:Ljavax/mail/Flags$Flag;

    .line 83
    new-instance v0, Ljavax/mail/Flags$Flag;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljavax/mail/Flags$Flag;-><init>(I)V

    sput-object v0, Ljavax/mail/Flags$Flag;->RECENT:Ljavax/mail/Flags$Flag;

    .line 88
    new-instance v0, Ljavax/mail/Flags$Flag;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljavax/mail/Flags$Flag;-><init>(I)V

    sput-object v0, Ljavax/mail/Flags$Flag;->SEEN:Ljavax/mail/Flags$Flag;

    .line 94
    new-instance v0, Ljavax/mail/Flags$Flag;

    const/high16 v1, -0x8000

    invoke-direct {v0, v1}, Ljavax/mail/Flags$Flag;-><init>(I)V

    sput-object v0, Ljavax/mail/Flags$Flag;->USER:Ljavax/mail/Flags$Flag;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 2
    .parameter

    .prologue
    .line 102
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput p1, p0, Ljavax/mail/Flags$Flag;->flag:I

    .line 104
    sget-object v0, Ljavax/mail/Flags$Flag;->flag2flag:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    return-void
.end method

.method static synthetic access$000()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Ljavax/mail/Flags$Flag;->flag2flag:Ljava/util/HashMap;

    return-object v0
.end method
