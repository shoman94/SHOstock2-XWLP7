.class public Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;
.super Ljava/lang/Object;
.source "AccessibilityContentDescriptions.java"


# static fields
.field static final DATA_5_LEVEL_CONNECTION_STRENGTH:[I

.field static final DATA_6_LEVEL_CONNECTION_STRENGTH:[I

.field static final DATA_CONNECTION_STRENGTH:[I

.field static final PHONE_5_LEVEL_SIGNAL_STRENGTH:[I

.field static final PHONE_6_LEVEL_SIGNAL_STRENGTH:[I

.field static final PHONE_SIGNAL_STRENGTH:[I

.field static final WIFI_CONNECTION_STRENGTH:[I

.field static final WIMAX_CONNECTION_STRENGTH:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x7

    const/4 v2, 0x6

    const/4 v1, 0x5

    .line 14
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 23
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_5_LEVEL_SIGNAL_STRENGTH:[I

    .line 32
    new-array v0, v3, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_6_LEVEL_SIGNAL_STRENGTH:[I

    .line 43
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->DATA_CONNECTION_STRENGTH:[I

    .line 52
    new-array v0, v2, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->DATA_5_LEVEL_CONNECTION_STRENGTH:[I

    .line 61
    new-array v0, v3, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->DATA_6_LEVEL_CONNECTION_STRENGTH:[I

    .line 72
    new-array v0, v1, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    .line 79
    new-array v0, v1, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIMAX_CONNECTION_STRENGTH:[I

    return-void

    .line 14
    :array_0
    .array-data 0x4
        0x47t 0x0t 0x8t 0x7ft
        0x48t 0x0t 0x8t 0x7ft
        0x49t 0x0t 0x8t 0x7ft
        0x4at 0x0t 0x8t 0x7ft
        0x4dt 0x0t 0x8t 0x7ft
    .end array-data

    .line 23
    :array_1
    .array-data 0x4
        0x47t 0x0t 0x8t 0x7ft
        0x48t 0x0t 0x8t 0x7ft
        0x49t 0x0t 0x8t 0x7ft
        0x4at 0x0t 0x8t 0x7ft
        0x4bt 0x0t 0x8t 0x7ft
        0x4dt 0x0t 0x8t 0x7ft
    .end array-data

    .line 32
    :array_2
    .array-data 0x4
        0x47t 0x0t 0x8t 0x7ft
        0x48t 0x0t 0x8t 0x7ft
        0x49t 0x0t 0x8t 0x7ft
        0x4at 0x0t 0x8t 0x7ft
        0x4bt 0x0t 0x8t 0x7ft
        0x4ct 0x0t 0x8t 0x7ft
        0x4dt 0x0t 0x8t 0x7ft
    .end array-data

    .line 43
    :array_3
    .array-data 0x4
        0x4et 0x0t 0x8t 0x7ft
        0x4ft 0x0t 0x8t 0x7ft
        0x50t 0x0t 0x8t 0x7ft
        0x51t 0x0t 0x8t 0x7ft
        0x54t 0x0t 0x8t 0x7ft
    .end array-data

    .line 52
    :array_4
    .array-data 0x4
        0x4et 0x0t 0x8t 0x7ft
        0x4ft 0x0t 0x8t 0x7ft
        0x50t 0x0t 0x8t 0x7ft
        0x51t 0x0t 0x8t 0x7ft
        0x52t 0x0t 0x8t 0x7ft
        0x54t 0x0t 0x8t 0x7ft
    .end array-data

    .line 61
    :array_5
    .array-data 0x4
        0x4et 0x0t 0x8t 0x7ft
        0x4ft 0x0t 0x8t 0x7ft
        0x50t 0x0t 0x8t 0x7ft
        0x51t 0x0t 0x8t 0x7ft
        0x52t 0x0t 0x8t 0x7ft
        0x53t 0x0t 0x8t 0x7ft
        0x54t 0x0t 0x8t 0x7ft
    .end array-data

    .line 72
    :array_6
    .array-data 0x4
        0x55t 0x0t 0x8t 0x7ft
        0x56t 0x0t 0x8t 0x7ft
        0x57t 0x0t 0x8t 0x7ft
        0x58t 0x0t 0x8t 0x7ft
        0x59t 0x0t 0x8t 0x7ft
    .end array-data

    .line 79
    :array_7
    .array-data 0x4
        0x5at 0x0t 0x8t 0x7ft
        0x5bt 0x0t 0x8t 0x7ft
        0x5ct 0x0t 0x8t 0x7ft
        0x5dt 0x0t 0x8t 0x7ft
        0x5et 0x0t 0x8t 0x7ft
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
