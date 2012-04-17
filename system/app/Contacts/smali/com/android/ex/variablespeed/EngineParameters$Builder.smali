.class public Lcom/android/ex/variablespeed/EngineParameters$Builder;
.super Ljava/lang/Object;
.source "EngineParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/variablespeed/EngineParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# instance fields
.field private mAudioStreamType:I

.field private mDecodeBufferInitialSize:I

.field private mDecodeBufferMaxSize:I

.field private mInitialRate:F

.field private mMaxPlayBufferCount:I

.field private mStartPositionMillis:I

.field private mTargetFrames:I

.field private mWindowDuration:F

.field private mWindowOverlapDuration:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 100
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/ex/variablespeed/EngineParameters$Builder;->mTargetFrames:I

    .line 102
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/ex/variablespeed/EngineParameters$Builder;->mMaxPlayBufferCount:I

    .line 103
    const v0, 0x3da3d70a

    iput v0, p0, Lcom/android/ex/variablespeed/EngineParameters$Builder;->mWindowDuration:F

    .line 104
    const v0, 0x3c03126f

    iput v0, p0, Lcom/android/ex/variablespeed/EngineParameters$Builder;->mWindowOverlapDuration:F

    .line 105
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/ex/variablespeed/EngineParameters$Builder;->mInitialRate:F

    .line 106
    const/16 v0, 0x1400

    iput v0, p0, Lcom/android/ex/variablespeed/EngineParameters$Builder;->mDecodeBufferInitialSize:I

    .line 107
    const/16 v0, 0x5000

    iput v0, p0, Lcom/android/ex/variablespeed/EngineParameters$Builder;->mDecodeBufferMaxSize:I

    .line 108
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/ex/variablespeed/EngineParameters$Builder;->mStartPositionMillis:I

    .line 109
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/ex/variablespeed/EngineParameters$Builder;->mAudioStreamType:I

    return-void
.end method


# virtual methods
.method public audioStreamType(I)Lcom/android/ex/variablespeed/EngineParameters$Builder;
    .locals 0
    .parameter "audioStreamType"

    .prologue
    .line 154
    iput p1, p0, Lcom/android/ex/variablespeed/EngineParameters$Builder;->mAudioStreamType:I

    .line 155
    return-object p0
.end method

.method public build()Lcom/android/ex/variablespeed/EngineParameters;
    .locals 11

    .prologue
    .line 112
    new-instance v0, Lcom/android/ex/variablespeed/EngineParameters;

    iget v1, p0, Lcom/android/ex/variablespeed/EngineParameters$Builder;->mTargetFrames:I

    iget v2, p0, Lcom/android/ex/variablespeed/EngineParameters$Builder;->mMaxPlayBufferCount:I

    iget v3, p0, Lcom/android/ex/variablespeed/EngineParameters$Builder;->mWindowDuration:F

    iget v4, p0, Lcom/android/ex/variablespeed/EngineParameters$Builder;->mWindowOverlapDuration:F

    iget v5, p0, Lcom/android/ex/variablespeed/EngineParameters$Builder;->mInitialRate:F

    iget v6, p0, Lcom/android/ex/variablespeed/EngineParameters$Builder;->mDecodeBufferInitialSize:I

    iget v7, p0, Lcom/android/ex/variablespeed/EngineParameters$Builder;->mDecodeBufferMaxSize:I

    iget v8, p0, Lcom/android/ex/variablespeed/EngineParameters$Builder;->mStartPositionMillis:I

    iget v9, p0, Lcom/android/ex/variablespeed/EngineParameters$Builder;->mAudioStreamType:I

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Lcom/android/ex/variablespeed/EngineParameters;-><init>(IIFFFIIIILcom/android/ex/variablespeed/EngineParameters$1;)V

    return-object v0
.end method

.method public initialRate(F)Lcom/android/ex/variablespeed/EngineParameters$Builder;
    .locals 0
    .parameter "initialRate"

    .prologue
    .line 134
    iput p1, p0, Lcom/android/ex/variablespeed/EngineParameters$Builder;->mInitialRate:F

    .line 135
    return-object p0
.end method

.method public startPositionMillis(I)Lcom/android/ex/variablespeed/EngineParameters$Builder;
    .locals 0
    .parameter "startPositionMillis"

    .prologue
    .line 149
    iput p1, p0, Lcom/android/ex/variablespeed/EngineParameters$Builder;->mStartPositionMillis:I

    .line 150
    return-object p0
.end method
