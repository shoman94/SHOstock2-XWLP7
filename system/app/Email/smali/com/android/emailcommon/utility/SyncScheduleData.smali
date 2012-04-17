.class public Lcom/android/emailcommon/utility/SyncScheduleData;
.super Ljava/lang/Object;
.source "SyncScheduleData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/emailcommon/utility/SyncScheduleData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mEndMinute:I

.field private mOffPeakSchedule:I

.field private mPeakDays:I

.field private mPeakSchedule:I

.field private mRoamingSchedule:I

.field private mStartMinute:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 109
    new-instance v0, Lcom/android/emailcommon/utility/SyncScheduleData$1;

    invoke-direct {v0}, Lcom/android/emailcommon/utility/SyncScheduleData$1;-><init>()V

    sput-object v0, Lcom/android/emailcommon/utility/SyncScheduleData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 0
    .parameter "peakStartMinute"
    .parameter "peakEndMinute"
    .parameter "peakDays"
    .parameter "peakSchedule"
    .parameter "offPeakSchedule"
    .parameter "roamingSchedule"

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/android/emailcommon/utility/SyncScheduleData;->mStartMinute:I

    .line 32
    iput p2, p0, Lcom/android/emailcommon/utility/SyncScheduleData;->mEndMinute:I

    .line 33
    iput p3, p0, Lcom/android/emailcommon/utility/SyncScheduleData;->mPeakDays:I

    .line 34
    iput p4, p0, Lcom/android/emailcommon/utility/SyncScheduleData;->mPeakSchedule:I

    .line 35
    iput p5, p0, Lcom/android/emailcommon/utility/SyncScheduleData;->mOffPeakSchedule:I

    .line 36
    iput p6, p0, Lcom/android/emailcommon/utility/SyncScheduleData;->mRoamingSchedule:I

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 100
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/utility/SyncScheduleData;->mStartMinute:I

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/utility/SyncScheduleData;->mEndMinute:I

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/utility/SyncScheduleData;->mPeakDays:I

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/utility/SyncScheduleData;->mPeakSchedule:I

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/utility/SyncScheduleData;->mOffPeakSchedule:I

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/utility/SyncScheduleData;->mRoamingSchedule:I

    .line 107
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public getEndMinute()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/android/emailcommon/utility/SyncScheduleData;->mEndMinute:I

    return v0
.end method

.method public getOffPeakSchedule()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/android/emailcommon/utility/SyncScheduleData;->mOffPeakSchedule:I

    return v0
.end method

.method public getPeakDay()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/android/emailcommon/utility/SyncScheduleData;->mPeakDays:I

    return v0
.end method

.method public getPeakSchedule()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/android/emailcommon/utility/SyncScheduleData;->mPeakSchedule:I

    return v0
.end method

.method public getRoamingSchedule()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/android/emailcommon/utility/SyncScheduleData;->mRoamingSchedule:I

    return v0
.end method

.method public getStartMinute()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/android/emailcommon/utility/SyncScheduleData;->mStartMinute:I

    return v0
.end method

.method public isManualScheduledNow(Landroid/content/Context;)Z
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, -0x1

    .line 121
    move-object v4, p0

    .line 123
    .local v4, syncSchedule:Lcom/android/emailcommon/utility/SyncScheduleData;
    const-string v5, "SyncScheduleData"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isManualScheduledNow | syncSchedule - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-static {v4}, Lcom/android/emailcommon/utility/SyncScheduler;->getIsPeakAndNextAlarm(Lcom/android/emailcommon/utility/SyncScheduleData;)Landroid/util/Pair;

    move-result-object v5

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 127
    .local v0, isPeak:Z
    const/4 v2, 0x0

    .line 131
    .local v2, ret:Z
    const-string v5, "phone"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    .line 134
    .local v1, isRoaming:Z
    if-eqz v1, :cond_0

    .line 136
    invoke-virtual {v4}, Lcom/android/emailcommon/utility/SyncScheduleData;->getRoamingSchedule()I

    move-result v3

    .line 138
    .local v3, roamingSchedule:I
    if-nez v3, :cond_0

    .line 140
    const-string v5, "SyncScheduleData"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isManualScheduledNow - Roaming and  isPeak - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " and Manaul is set"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/4 v5, 0x1

    .line 162
    .end local v3           #roamingSchedule:I
    :goto_0
    return v5

    .line 152
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v4}, Lcom/android/emailcommon/utility/SyncScheduleData;->getPeakSchedule()I

    move-result v5

    if-eq v5, v8, :cond_2

    :cond_1
    if-nez v0, :cond_3

    invoke-virtual {v4}, Lcom/android/emailcommon/utility/SyncScheduleData;->getOffPeakSchedule()I

    move-result v5

    if-ne v5, v8, :cond_3

    .line 156
    :cond_2
    const/4 v2, 0x1

    .line 160
    :cond_3
    const-string v5, "SyncScheduleData"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isManualScheduledNow isPeak - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isManual - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v2

    .line 162
    goto :goto_0
.end method

.method public setEndMinute(I)V
    .locals 0
    .parameter "endMinute"

    .prologue
    .line 52
    iput p1, p0, Lcom/android/emailcommon/utility/SyncScheduleData;->mEndMinute:I

    .line 53
    return-void
.end method

.method public setOffPeakSchedule(I)V
    .locals 0
    .parameter "offPeakSchedule"

    .prologue
    .line 76
    iput p1, p0, Lcom/android/emailcommon/utility/SyncScheduleData;->mOffPeakSchedule:I

    .line 77
    return-void
.end method

.method public setPeakDay(I)V
    .locals 0
    .parameter "peakDay"

    .prologue
    .line 60
    iput p1, p0, Lcom/android/emailcommon/utility/SyncScheduleData;->mPeakDays:I

    .line 61
    return-void
.end method

.method public setPeakSchedule(I)V
    .locals 0
    .parameter "peakSchedule"

    .prologue
    .line 68
    iput p1, p0, Lcom/android/emailcommon/utility/SyncScheduleData;->mPeakSchedule:I

    .line 69
    return-void
.end method

.method public setRoamingSchedule(I)V
    .locals 0
    .parameter "roamingSchedule"

    .prologue
    .line 84
    iput p1, p0, Lcom/android/emailcommon/utility/SyncScheduleData;->mRoamingSchedule:I

    .line 85
    return-void
.end method

.method public setStartMinute(I)V
    .locals 0
    .parameter "startMinute"

    .prologue
    .line 44
    iput p1, p0, Lcom/android/emailcommon/utility/SyncScheduleData;->mStartMinute:I

    .line 45
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 92
    iget v0, p0, Lcom/android/emailcommon/utility/SyncScheduleData;->mStartMinute:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    iget v0, p0, Lcom/android/emailcommon/utility/SyncScheduleData;->mEndMinute:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget v0, p0, Lcom/android/emailcommon/utility/SyncScheduleData;->mPeakDays:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget v0, p0, Lcom/android/emailcommon/utility/SyncScheduleData;->mPeakSchedule:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget v0, p0, Lcom/android/emailcommon/utility/SyncScheduleData;->mOffPeakSchedule:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    iget v0, p0, Lcom/android/emailcommon/utility/SyncScheduleData;->mRoamingSchedule:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    return-void
.end method
