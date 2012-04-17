.class public final Lgnu/mail/providers/imap/Rights$Right;
.super Ljava/lang/Object;
.source "Rights.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgnu/mail/providers/imap/Rights;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Right"
.end annotation


# static fields
.field public static final ADMINISTER:Lgnu/mail/providers/imap/Rights$Right;

.field public static final CREATE:Lgnu/mail/providers/imap/Rights$Right;

.field public static final DELETE:Lgnu/mail/providers/imap/Rights$Right;

.field public static final INSERT:Lgnu/mail/providers/imap/Rights$Right;

.field public static final KEEP_SEEN:Lgnu/mail/providers/imap/Rights$Right;

.field public static final LOOKUP:Lgnu/mail/providers/imap/Rights$Right;

.field public static final POST:Lgnu/mail/providers/imap/Rights$Right;

.field public static final READ:Lgnu/mail/providers/imap/Rights$Right;

.field public static final WRITE:Lgnu/mail/providers/imap/Rights$Right;


# instance fields
.field final code:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    new-instance v0, Lgnu/mail/providers/imap/Rights$Right;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lgnu/mail/providers/imap/Rights$Right;-><init>(I)V

    sput-object v0, Lgnu/mail/providers/imap/Rights$Right;->LOOKUP:Lgnu/mail/providers/imap/Rights$Right;

    .line 47
    new-instance v0, Lgnu/mail/providers/imap/Rights$Right;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lgnu/mail/providers/imap/Rights$Right;-><init>(I)V

    sput-object v0, Lgnu/mail/providers/imap/Rights$Right;->READ:Lgnu/mail/providers/imap/Rights$Right;

    .line 48
    new-instance v0, Lgnu/mail/providers/imap/Rights$Right;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lgnu/mail/providers/imap/Rights$Right;-><init>(I)V

    sput-object v0, Lgnu/mail/providers/imap/Rights$Right;->KEEP_SEEN:Lgnu/mail/providers/imap/Rights$Right;

    .line 49
    new-instance v0, Lgnu/mail/providers/imap/Rights$Right;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lgnu/mail/providers/imap/Rights$Right;-><init>(I)V

    sput-object v0, Lgnu/mail/providers/imap/Rights$Right;->WRITE:Lgnu/mail/providers/imap/Rights$Right;

    .line 50
    new-instance v0, Lgnu/mail/providers/imap/Rights$Right;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lgnu/mail/providers/imap/Rights$Right;-><init>(I)V

    sput-object v0, Lgnu/mail/providers/imap/Rights$Right;->INSERT:Lgnu/mail/providers/imap/Rights$Right;

    .line 51
    new-instance v0, Lgnu/mail/providers/imap/Rights$Right;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lgnu/mail/providers/imap/Rights$Right;-><init>(I)V

    sput-object v0, Lgnu/mail/providers/imap/Rights$Right;->POST:Lgnu/mail/providers/imap/Rights$Right;

    .line 52
    new-instance v0, Lgnu/mail/providers/imap/Rights$Right;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lgnu/mail/providers/imap/Rights$Right;-><init>(I)V

    sput-object v0, Lgnu/mail/providers/imap/Rights$Right;->CREATE:Lgnu/mail/providers/imap/Rights$Right;

    .line 53
    new-instance v0, Lgnu/mail/providers/imap/Rights$Right;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lgnu/mail/providers/imap/Rights$Right;-><init>(I)V

    sput-object v0, Lgnu/mail/providers/imap/Rights$Right;->DELETE:Lgnu/mail/providers/imap/Rights$Right;

    .line 54
    new-instance v0, Lgnu/mail/providers/imap/Rights$Right;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lgnu/mail/providers/imap/Rights$Right;-><init>(I)V

    sput-object v0, Lgnu/mail/providers/imap/Rights$Right;->ADMINISTER:Lgnu/mail/providers/imap/Rights$Right;

    return-void
.end method

.method constructor <init>(I)V
    .locals 0
    .parameter

    .prologue
    .line 60
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput p1, p0, Lgnu/mail/providers/imap/Rights$Right;->code:I

    .line 62
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lgnu/mail/providers/imap/Rights$Right;->code:I

    sparse-switch v0, :sswitch_data_0

    .line 114
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 96
    :sswitch_0
    const-string v0, "l"

    .line 112
    :goto_0
    return-object v0

    .line 98
    :sswitch_1
    const-string v0, "r"

    goto :goto_0

    .line 100
    :sswitch_2
    const-string v0, "s"

    goto :goto_0

    .line 102
    :sswitch_3
    const-string v0, "w"

    goto :goto_0

    .line 104
    :sswitch_4
    const-string v0, "i"

    goto :goto_0

    .line 106
    :sswitch_5
    const-string v0, "p"

    goto :goto_0

    .line 108
    :sswitch_6
    const-string v0, "c"

    goto :goto_0

    .line 110
    :sswitch_7
    const-string v0, "d"

    goto :goto_0

    .line 112
    :sswitch_8
    const-string v0, "a"

    goto :goto_0

    .line 93
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
        0x40 -> :sswitch_6
        0x80 -> :sswitch_7
        0x100 -> :sswitch_8
    .end sparse-switch
.end method
