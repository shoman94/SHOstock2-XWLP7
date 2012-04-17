.class final Lcom/android/emailcommon/utility/Utility$ListStateSaver$1;
.super Ljava/lang/Object;
.source "Utility.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/utility/Utility$ListStateSaver;
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
        "Lcom/android/emailcommon/utility/Utility$ListStateSaver;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 896
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/emailcommon/utility/Utility$ListStateSaver;
    .locals 2
    .parameter "in"

    .prologue
    .line 898
    new-instance v0, Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/emailcommon/utility/Utility$ListStateSaver;-><init>(Landroid/os/Parcel;Lcom/android/emailcommon/utility/Utility$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 896
    invoke-virtual {p0, p1}, Lcom/android/emailcommon/utility/Utility$ListStateSaver$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/emailcommon/utility/Utility$ListStateSaver;
    .locals 1
    .parameter "size"

    .prologue
    .line 902
    new-array v0, p1, [Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 896
    invoke-virtual {p0, p1}, Lcom/android/emailcommon/utility/Utility$ListStateSaver$1;->newArray(I)[Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    move-result-object v0

    return-object v0
.end method
