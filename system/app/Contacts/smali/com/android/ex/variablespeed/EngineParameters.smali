.class final Lcom/android/ex/variablespeed/EngineParameters;
.super Ljava/lang/Object;
.source "EngineParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/variablespeed/EngineParameters$1;,
        Lcom/android/ex/variablespeed/EngineParameters$Builder;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field private final mAudioStreamType:I

.field private final mDecodeBufferInitialSize:I

.field private final mDecodeBufferMaxSize:I

.field private final mInitialRate:F

.field private final mMaxPlayBufferCount:I

.field private final mStartPositionMillis:I

.field private final mTargetFrames:I

.field private final mWindowDuration:F

.field private final mWindowOverlapDuration:F


# direct methods
.method private constructor <init>(IIFFFIIII)V
    .locals 0
    .parameter "targetFrames"
    .parameter "maxPlayBufferCount"
    .parameter "windowDuration"
    .parameter "windowOverlapDuration"
    .parameter "initialRate"
    .parameter "decodeBufferInitialSize"
    .parameter "decodeBufferMaxSize"
    .parameter "startPositionMillis"
    .parameter "audioStreamType"

    .prologue
    .line 80
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput p1, p0, Lcom/android/ex/variablespeed/EngineParameters;->mTargetFrames:I

    .line 82
    iput p2, p0, Lcom/android/ex/variablespeed/EngineParameters;->mMaxPlayBufferCount:I

    .line 83
    iput p3, p0, Lcom/android/ex/variablespeed/EngineParameters;->mWindowDuration:F

    .line 84
    iput p4, p0, Lcom/android/ex/variablespeed/EngineParameters;->mWindowOverlapDuration:F

    .line 85
    iput p5, p0, Lcom/android/ex/variablespeed/EngineParameters;->mInitialRate:F

    .line 86
    iput p6, p0, Lcom/android/ex/variablespeed/EngineParameters;->mDecodeBufferInitialSize:I

    .line 87
    iput p7, p0, Lcom/android/ex/variablespeed/EngineParameters;->mDecodeBufferMaxSize:I

    .line 88
    iput p8, p0, Lcom/android/ex/variablespeed/EngineParameters;->mStartPositionMillis:I

    .line 89
    iput p9, p0, Lcom/android/ex/variablespeed/EngineParameters;->mAudioStreamType:I

    .line 90
    return-void
.end method

.method synthetic constructor <init>(IIFFFIIIILcom/android/ex/variablespeed/EngineParameters$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"
    .parameter "x9"

    .prologue
    .line 31
    invoke-direct/range {p0 .. p9}, Lcom/android/ex/variablespeed/EngineParameters;-><init>(IIFFFIIII)V

    return-void
.end method


# virtual methods
.method public getAudioStreamType()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/android/ex/variablespeed/EngineParameters;->mAudioStreamType:I

    return v0
.end method

.method public getDecodeBufferInitialSize()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/android/ex/variablespeed/EngineParameters;->mDecodeBufferInitialSize:I

    return v0
.end method

.method public getDecodeBufferMaxSize()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/android/ex/variablespeed/EngineParameters;->mDecodeBufferMaxSize:I

    return v0
.end method

.method public getInitialRate()F
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/android/ex/variablespeed/EngineParameters;->mInitialRate:F

    return v0
.end method

.method public getMaxPlayBufferCount()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/android/ex/variablespeed/EngineParameters;->mMaxPlayBufferCount:I

    return v0
.end method

.method public getStartPositionMillis()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/android/ex/variablespeed/EngineParameters;->mStartPositionMillis:I

    return v0
.end method

.method public getTargetFrames()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/android/ex/variablespeed/EngineParameters;->mTargetFrames:I

    return v0
.end method

.method public getWindowDuration()F
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/android/ex/variablespeed/EngineParameters;->mWindowDuration:F

    return v0
.end method

.method public getWindowOverlapDuration()F
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/android/ex/variablespeed/EngineParameters;->mWindowOverlapDuration:F

    return v0
.end method
