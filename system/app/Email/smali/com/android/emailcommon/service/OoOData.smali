.class public Lcom/android/emailcommon/service/OoOData;
.super Ljava/lang/Object;
.source "OoOData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/emailcommon/service/OoOData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public enabled:I

.field public end:Ljava/util/Date;

.field public msg:Ljava/lang/String;

.field public start:Ljava/util/Date;

.field public state:I

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/android/emailcommon/service/OoOData$1;

    invoke-direct {v0}, Lcom/android/emailcommon/service/OoOData$1;-><init>()V

    sput-object v0, Lcom/android/emailcommon/service/OoOData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;)V
    .locals 1
    .parameter "atype"
    .parameter "astate"
    .parameter "aenabled"
    .parameter "amsg"

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput p1, p0, Lcom/android/emailcommon/service/OoOData;->type:I

    .line 87
    iput p2, p0, Lcom/android/emailcommon/service/OoOData;->state:I

    .line 88
    iput p3, p0, Lcom/android/emailcommon/service/OoOData;->enabled:I

    .line 89
    iput-object p4, p0, Lcom/android/emailcommon/service/OoOData;->msg:Ljava/lang/String;

    .line 90
    iput-object v0, p0, Lcom/android/emailcommon/service/OoOData;->start:Ljava/util/Date;

    .line 91
    iput-object v0, p0, Lcom/android/emailcommon/service/OoOData;->end:Ljava/util/Date;

    .line 93
    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Ljava/util/Date;Ljava/util/Date;)V
    .locals 0
    .parameter "atype"
    .parameter "astate"
    .parameter "aenabled"
    .parameter "amsg"
    .parameter "astart"
    .parameter "aend"

    .prologue
    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput p1, p0, Lcom/android/emailcommon/service/OoOData;->type:I

    .line 63
    iput p2, p0, Lcom/android/emailcommon/service/OoOData;->state:I

    .line 64
    iput p3, p0, Lcom/android/emailcommon/service/OoOData;->enabled:I

    .line 65
    iput-object p5, p0, Lcom/android/emailcommon/service/OoOData;->start:Ljava/util/Date;

    .line 66
    iput-object p6, p0, Lcom/android/emailcommon/service/OoOData;->end:Ljava/util/Date;

    .line 67
    iput-object p4, p0, Lcom/android/emailcommon/service/OoOData;->msg:Ljava/lang/String;

    .line 69
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p0, p1}, Lcom/android/emailcommon/service/OoOData;->readFromParcel(Landroid/os/Parcel;)V

    .line 54
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/emailcommon/service/OoOData$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/android/emailcommon/service/OoOData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 6
    .parameter "in"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/emailcommon/service/OoOData;->type:I

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/emailcommon/service/OoOData;->state:I

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/emailcommon/service/OoOData;->enabled:I

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/emailcommon/service/OoOData;->msg:Ljava/lang/String;

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 148
    .local v0, s:J
    cmp-long v2, v0, v4

    if-eqz v2, :cond_0

    .line 149
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object v2, p0, Lcom/android/emailcommon/service/OoOData;->start:Ljava/util/Date;

    .line 152
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 153
    cmp-long v2, v0, v4

    if-eqz v2, :cond_1

    .line 154
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object v2, p0, Lcom/android/emailcommon/service/OoOData;->end:Ljava/util/Date;

    .line 157
    :goto_1
    return-void

    .line 151
    :cond_0
    iput-object v3, p0, Lcom/android/emailcommon/service/OoOData;->start:Ljava/util/Date;

    goto :goto_0

    .line 156
    :cond_1
    iput-object v3, p0, Lcom/android/emailcommon/service/OoOData;->end:Ljava/util/Date;

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    const-wide/16 v2, 0x0

    .line 128
    iget v0, p0, Lcom/android/emailcommon/service/OoOData;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    iget v0, p0, Lcom/android/emailcommon/service/OoOData;->state:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    iget v0, p0, Lcom/android/emailcommon/service/OoOData;->enabled:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    iget-object v0, p0, Lcom/android/emailcommon/service/OoOData;->msg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/android/emailcommon/service/OoOData;->start:Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/emailcommon/service/OoOData;->start:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 136
    :goto_0
    iget-object v0, p0, Lcom/android/emailcommon/service/OoOData;->end:Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/android/emailcommon/service/OoOData;->end:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 140
    :goto_1
    return-void

    .line 135
    :cond_0
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_1
.end method
