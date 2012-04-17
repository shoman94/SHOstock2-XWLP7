.class public Lcom/seven/Z7/common/Z7ExtConstants;
.super Ljava/lang/Object;
.source "Z7ExtConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;,
        Lcom/seven/Z7/common/Z7ExtConstants$Z7SyncCommon;,
        Lcom/seven/Z7/common/Z7ExtConstants$Z7Mail;,
        Lcom/seven/Z7/common/Z7ExtConstants$Z7Appointment;,
        Lcom/seven/Z7/common/Z7ExtConstants$Z7ServiceSettings;,
        Lcom/seven/Z7/common/Z7ExtConstants$Z7TransportConstants;,
        Lcom/seven/Z7/common/Z7ExtConstants$Z7SettingsConstants;,
        Lcom/seven/Z7/common/Z7ExtConstants$ResponseListener;,
        Lcom/seven/Z7/common/Z7ExtConstants$Z7IMConstants;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 926
    return-void
.end method

.method private static Z7_MAKE_KEY(II)I
    .locals 1
    .parameter "group"
    .parameter "keycode"

    .prologue
    .line 923
    shl-int/lit8 v0, p0, 0xa

    add-int/2addr v0, p1

    return v0
.end method

.method private static Z7_MAKE_KEY_GROUP(II)I
    .locals 1
    .parameter "vendor"
    .parameter "groupcode"

    .prologue
    .line 919
    shl-int/lit8 v0, p0, 0xa

    add-int/2addr v0, p1

    return v0
.end method

.method static synthetic access$000(II)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4
    invoke-static {p0, p1}, Lcom/seven/Z7/common/Z7ExtConstants;->Z7_MAKE_KEY_GROUP(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(II)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4
    invoke-static {p0, p1}, Lcom/seven/Z7/common/Z7ExtConstants;->Z7_MAKE_KEY(II)I

    move-result v0

    return v0
.end method
