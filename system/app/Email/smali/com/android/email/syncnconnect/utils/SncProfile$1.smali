.class final Lcom/android/email/syncnconnect/utils/SncProfile$1;
.super Ljava/lang/Object;
.source "SncProfile.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/syncnconnect/utils/SncProfile;
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
        "Lcom/android/email/syncnconnect/utils/SncProfile;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 268
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/email/syncnconnect/utils/SncProfile;
    .locals 1
    .parameter "source"

    .prologue
    .line 270
    new-instance v0, Lcom/android/email/syncnconnect/utils/SncProfile;

    invoke-direct {v0, p1}, Lcom/android/email/syncnconnect/utils/SncProfile;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 268
    invoke-virtual {p0, p1}, Lcom/android/email/syncnconnect/utils/SncProfile$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/email/syncnconnect/utils/SncProfile;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/email/syncnconnect/utils/SncProfile;
    .locals 1
    .parameter "size"

    .prologue
    .line 274
    new-array v0, p1, [Lcom/android/email/syncnconnect/utils/SncProfile;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 268
    invoke-virtual {p0, p1}, Lcom/android/email/syncnconnect/utils/SncProfile$1;->newArray(I)[Lcom/android/email/syncnconnect/utils/SncProfile;

    move-result-object v0

    return-object v0
.end method
