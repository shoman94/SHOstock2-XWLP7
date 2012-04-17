.class final Lcom/android/emailcommon/utility/SyncScheduleData$1;
.super Ljava/lang/Object;
.source "SyncScheduleData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/utility/SyncScheduleData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/emailcommon/utility/SyncScheduleData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 109
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/emailcommon/utility/SyncScheduleData;
    .locals 1
    .parameter "in"

    .prologue
    .line 111
    new-instance v0, Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-direct {v0, p1}, Lcom/android/emailcommon/utility/SyncScheduleData;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lcom/android/emailcommon/utility/SyncScheduleData$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/emailcommon/utility/SyncScheduleData;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/emailcommon/utility/SyncScheduleData;
    .locals 1
    .parameter "size"

    .prologue
    .line 115
    new-array v0, p1, [Lcom/android/emailcommon/utility/SyncScheduleData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lcom/android/emailcommon/utility/SyncScheduleData$1;->newArray(I)[Lcom/android/emailcommon/utility/SyncScheduleData;

    move-result-object v0

    return-object v0
.end method
