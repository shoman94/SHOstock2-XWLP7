.class public Lcom/android/mms/dom/events/EventImpl;
.super Ljava/lang/Object;
.source "EventImpl.java"

# interfaces
.implements Lorg/w3c/dom/events/Event;


# instance fields
.field private mCanBubble:Z

.field private mCancelable:Z

.field private mCurrentTarget:Lorg/w3c/dom/events/EventTarget;

.field private mEventPhase:S

.field private mEventType:Ljava/lang/String;

.field private mInitialized:Z

.field private mPreventDefault:Z

.field private mSeekTo:I

.field private mStopPropagation:Z

.field private mTarget:Lorg/w3c/dom/events/EventTarget;

.field private final mTimeStamp:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/dom/events/EventImpl;->mTimeStamp:J

    return-void
.end method


# virtual methods
.method public getBubbles()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/mms/dom/events/EventImpl;->mCanBubble:Z

    return v0
.end method

.method public getSeekTo()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/android/mms/dom/events/EventImpl;->mSeekTo:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/mms/dom/events/EventImpl;->mEventType:Ljava/lang/String;

    return-object v0
.end method

.method public initEvent(Ljava/lang/String;ZZ)V
    .locals 1
    .parameter "eventTypeArg"
    .parameter "canBubbleArg"
    .parameter "cancelableArg"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/mms/dom/events/EventImpl;->mEventType:Ljava/lang/String;

    .line 82
    iput-boolean p2, p0, Lcom/android/mms/dom/events/EventImpl;->mCanBubble:Z

    .line 83
    iput-boolean p3, p0, Lcom/android/mms/dom/events/EventImpl;->mCancelable:Z

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/dom/events/EventImpl;->mInitialized:Z

    .line 85
    return-void
.end method

.method public initEvent(Ljava/lang/String;ZZI)V
    .locals 0
    .parameter "eventTypeArg"
    .parameter "canBubbleArg"
    .parameter "cancelableArg"
    .parameter "seekTo"

    .prologue
    .line 89
    iput p4, p0, Lcom/android/mms/dom/events/EventImpl;->mSeekTo:I

    .line 90
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/mms/dom/events/EventImpl;->initEvent(Ljava/lang/String;ZZ)V

    .line 91
    return-void
.end method

.method isInitialized()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/android/mms/dom/events/EventImpl;->mInitialized:Z

    return v0
.end method

.method isPreventDefault()Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/android/mms/dom/events/EventImpl;->mPreventDefault:Z

    return v0
.end method

.method isPropogationStopped()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/android/mms/dom/events/EventImpl;->mStopPropagation:Z

    return v0
.end method

.method setCurrentTarget(Lorg/w3c/dom/events/EventTarget;)V
    .locals 0
    .parameter "currentTarget"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/mms/dom/events/EventImpl;->mCurrentTarget:Lorg/w3c/dom/events/EventTarget;

    .line 127
    return-void
.end method

.method setEventPhase(S)V
    .locals 0
    .parameter "eventPhase"

    .prologue
    .line 122
    iput-short p1, p0, Lcom/android/mms/dom/events/EventImpl;->mEventPhase:S

    .line 123
    return-void
.end method

.method setTarget(Lorg/w3c/dom/events/EventTarget;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/mms/dom/events/EventImpl;->mTarget:Lorg/w3c/dom/events/EventTarget;

    .line 119
    return-void
.end method
