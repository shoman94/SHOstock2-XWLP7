.class public Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;
.super Ljava/lang/Object;
.source "CodingStateMachine.java"


# instance fields
.field protected currentBytePos:I

.field protected currentCharLen:I

.field protected currentState:I

.field protected model:Lorg/mozilla/universalchardet/prober/statemachine/SMModel;


# direct methods
.method public constructor <init>(Lorg/mozilla/universalchardet/prober/statemachine/SMModel;)V
    .locals 1
    .parameter "model"

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;->model:Lorg/mozilla/universalchardet/prober/statemachine/SMModel;

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;->currentState:I

    .line 49
    return-void
.end method


# virtual methods
.method public getCodingStateMachine()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;->model:Lorg/mozilla/universalchardet/prober/statemachine/SMModel;

    invoke-virtual {v0}, Lorg/mozilla/universalchardet/prober/statemachine/SMModel;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentCharLen()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;->currentCharLen:I

    return v0
.end method

.method public nextState(B)I
    .locals 3
    .parameter "c"

    .prologue
    .line 52
    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;->model:Lorg/mozilla/universalchardet/prober/statemachine/SMModel;

    invoke-virtual {v1, p1}, Lorg/mozilla/universalchardet/prober/statemachine/SMModel;->getClass(B)I

    move-result v0

    .line 53
    .local v0, byteCls:I
    iget v1, p0, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;->currentState:I

    if-nez v1, :cond_0

    .line 54
    const/4 v1, 0x0

    iput v1, p0, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;->currentBytePos:I

    .line 55
    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;->model:Lorg/mozilla/universalchardet/prober/statemachine/SMModel;

    invoke-virtual {v1, v0}, Lorg/mozilla/universalchardet/prober/statemachine/SMModel;->getCharLen(I)I

    move-result v1

    iput v1, p0, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;->currentCharLen:I

    .line 58
    :cond_0
    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;->model:Lorg/mozilla/universalchardet/prober/statemachine/SMModel;

    iget v2, p0, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;->currentState:I

    invoke-virtual {v1, v0, v2}, Lorg/mozilla/universalchardet/prober/statemachine/SMModel;->getNextState(II)I

    move-result v1

    iput v1, p0, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;->currentState:I

    .line 59
    iget v1, p0, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;->currentBytePos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;->currentBytePos:I

    .line 61
    iget v1, p0, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;->currentState:I

    return v1
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;->currentState:I

    .line 70
    return-void
.end method
