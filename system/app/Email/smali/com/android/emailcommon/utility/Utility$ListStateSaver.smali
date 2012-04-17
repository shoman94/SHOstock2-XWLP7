.class public Lcom/android/emailcommon/utility/Utility$ListStateSaver;
.super Ljava/lang/Object;
.source "Utility.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/utility/Utility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListStateSaver"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/emailcommon/utility/Utility$ListStateSaver;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mState:Landroid/os/Parcelable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 896
    new-instance v0, Lcom/android/emailcommon/utility/Utility$ListStateSaver$1;

    invoke-direct {v0}, Lcom/android/emailcommon/utility/Utility$ListStateSaver$1;-><init>()V

    sput-object v0, Lcom/android/emailcommon/utility/Utility$ListStateSaver;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "p"

    .prologue
    .line 864
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 865
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/utility/Utility$ListStateSaver;->mState:Landroid/os/Parcelable;

    .line 866
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/emailcommon/utility/Utility$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 861
    invoke-direct {p0, p1}, Lcom/android/emailcommon/utility/Utility$ListStateSaver;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/widget/AbsListView;)V
    .locals 2
    .parameter "lv"

    .prologue
    .line 868
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 870
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/AbsListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/utility/Utility$ListStateSaver;->mState:Landroid/os/Parcelable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 875
    :goto_0
    return-void

    .line 872
    :catch_0
    move-exception v0

    .line 873
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 888
    const/4 v0, 0x0

    return v0
.end method

.method public restore(Landroid/widget/AbsListView;)V
    .locals 2
    .parameter "lv"

    .prologue
    .line 879
    :try_start_0
    iget-object v1, p0, Lcom/android/emailcommon/utility/Utility$ListStateSaver;->mState:Landroid/os/Parcelable;

    invoke-virtual {p1, v1}, Landroid/widget/AbsListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 884
    :goto_0
    return-void

    .line 881
    :catch_0
    move-exception v0

    .line 882
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 893
    iget-object v0, p0, Lcom/android/emailcommon/utility/Utility$ListStateSaver;->mState:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 894
    return-void
.end method
