.class public Lcom/seven/Z7/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final INTDATE_MASK_DAY:I

.field private static final INTDATE_MASK_MONTH:I

.field private static final INTDATE_MASK_YEAR:I

.field private static final MONTH_DAYS_NON_LEAP:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/seven/Z7/util/Utils;->getMask(I)I

    move-result v0

    sput v0, Lcom/seven/Z7/util/Utils;->INTDATE_MASK_DAY:I

    .line 49
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/seven/Z7/util/Utils;->getMask(I)I

    move-result v0

    sput v0, Lcom/seven/Z7/util/Utils;->INTDATE_MASK_MONTH:I

    .line 51
    const/16 v0, 0x15

    invoke-static {v0}, Lcom/seven/Z7/util/Utils;->getMask(I)I

    move-result v0

    sput v0, Lcom/seven/Z7/util/Utils;->INTDATE_MASK_YEAR:I

    .line 61
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/seven/Z7/util/Utils;->MONTH_DAYS_NON_LEAP:[I

    return-void

    :array_0
    .array-data 0x4
        0x1ft 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getMask(I)I
    .locals 3
    .parameter "bitsToSet"

    .prologue
    .line 68
    const/4 v1, 0x0

    .line 69
    .local v1, mask:I
    move v0, p0

    .local v0, i:I
    :goto_0
    if-lez v0, :cond_0

    .line 70
    shl-int/lit8 v2, v1, 0x1

    or-int/lit8 v1, v2, 0x1

    .line 69
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 72
    :cond_0
    return v1
.end method

.method public static final isEmpty(Ljava/lang/String;)Z
    .locals 1
    .parameter "str"

    .prologue
    .line 624
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
