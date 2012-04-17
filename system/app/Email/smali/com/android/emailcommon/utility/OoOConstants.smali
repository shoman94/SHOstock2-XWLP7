.class public Lcom/android/emailcommon/utility/OoOConstants;
.super Ljava/lang/Object;
.source "OoOConstants.java"


# static fields
.field public static OOO_GET_DATA:Ljava/lang/String;

.field public static OOO_SET_DATA:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const-string v0, "oooGetData"

    sput-object v0, Lcom/android/emailcommon/utility/OoOConstants;->OOO_GET_DATA:Ljava/lang/String;

    .line 8
    const-string v0, "oooSetData"

    sput-object v0, Lcom/android/emailcommon/utility/OoOConstants;->OOO_SET_DATA:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
