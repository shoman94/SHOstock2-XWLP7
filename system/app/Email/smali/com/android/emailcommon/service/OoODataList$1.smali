.class final Lcom/android/emailcommon/service/OoODataList$1;
.super Ljava/lang/Object;
.source "OoODataList.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/service/OoODataList;
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
        "Lcom/android/emailcommon/service/OoODataList;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/emailcommon/service/OoODataList;
    .locals 2
    .parameter "in"

    .prologue
    .line 18
    new-instance v0, Lcom/android/emailcommon/service/OoODataList;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/emailcommon/service/OoODataList;-><init>(Landroid/os/Parcel;Lcom/android/emailcommon/service/OoODataList$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/android/emailcommon/service/OoODataList$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/emailcommon/service/OoODataList;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/emailcommon/service/OoODataList;
    .locals 1
    .parameter "size"

    .prologue
    .line 22
    new-array v0, p1, [Lcom/android/emailcommon/service/OoODataList;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/android/emailcommon/service/OoODataList$1;->newArray(I)[Lcom/android/emailcommon/service/OoODataList;

    move-result-object v0

    return-object v0
.end method
