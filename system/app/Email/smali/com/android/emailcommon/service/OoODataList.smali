.class public Lcom/android/emailcommon/service/OoODataList;
.super Ljava/lang/Object;
.source "OoODataList.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/emailcommon/service/OoODataList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field dataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/service/OoOData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/android/emailcommon/service/OoODataList$1;

    invoke-direct {v0}, Lcom/android/emailcommon/service/OoODataList$1;-><init>()V

    sput-object v0, Lcom/android/emailcommon/service/OoODataList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/emailcommon/service/OoODataList;->dataList:Ljava/util/ArrayList;

    .line 32
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/emailcommon/service/OoODataList;->dataList:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {p0, p1}, Lcom/android/emailcommon/service/OoODataList;->readFromParcel(Landroid/os/Parcel;)V

    .line 28
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/emailcommon/service/OoODataList$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/android/emailcommon/service/OoODataList;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public AddOoOData(IIILjava/lang/String;)I
    .locals 2
    .parameter "atype"
    .parameter "astate"
    .parameter "aenabled"
    .parameter "amsg"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/emailcommon/service/OoODataList;->dataList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/emailcommon/service/OoOData;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/android/emailcommon/service/OoOData;-><init>(IIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public AddOoOData(IIILjava/lang/String;Ljava/util/Date;Ljava/util/Date;)I
    .locals 8
    .parameter "atype"
    .parameter "astate"
    .parameter "aenabled"
    .parameter "amsg"
    .parameter "astart"
    .parameter "aend"

    .prologue
    .line 57
    iget-object v7, p0, Lcom/android/emailcommon/service/OoODataList;->dataList:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/emailcommon/service/OoOData;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/emailcommon/service/OoOData;-><init>(IIILjava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/emailcommon/service/OoODataList;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/emailcommon/service/OoOData;
    .locals 1
    .parameter "i"

    .prologue
    .line 39
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/emailcommon/service/OoODataList;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/android/emailcommon/service/OoODataList;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/service/OoOData;

    .line 41
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 6
    .parameter "in"

    .prologue
    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v4

    .line 75
    .local v4, tmp:[Landroid/os/Parcelable;
    move-object v0, v4

    .local v0, arr$:[Landroid/os/Parcelable;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 76
    .local v3, p:Landroid/os/Parcelable;
    iget-object v5, p0, Lcom/android/emailcommon/service/OoODataList;->dataList:Ljava/util/ArrayList;

    check-cast v3, Lcom/android/emailcommon/service/OoOData;

    .end local v3           #p:Landroid/os/Parcelable;
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/emailcommon/service/OoODataList;->dataList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/emailcommon/service/OoOData;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 71
    return-void
.end method
