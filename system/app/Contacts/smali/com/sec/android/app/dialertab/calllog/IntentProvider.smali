.class public abstract Lcom/sec/android/app/dialertab/calllog/IntentProvider;
.super Ljava/lang/Object;
.source "IntentProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCallDetailIntentProvider(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;IJILjava/lang/String;)Lcom/sec/android/app/dialertab/calllog/IntentProvider;
    .locals 7
    .parameter "adapter"
    .parameter "position"
    .parameter "id"
    .parameter "groupSize"
    .parameter "number"

    .prologue
    .line 111
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/IntentProvider$5;

    move-object v1, p0

    move v2, p1

    move-object v3, p5

    move v4, p4

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/dialertab/calllog/IntentProvider$5;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;ILjava/lang/String;IJ)V

    return-object v0
.end method

.method public static getReturnCallIntentProvider(Ljava/lang/String;)Lcom/sec/android/app/dialertab/calllog/IntentProvider;
    .locals 1
    .parameter "number"

    .prologue
    .line 40
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/IntentProvider$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/IntentProvider$1;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getReturnMessageIntentProvider(Ljava/lang/String;)Lcom/sec/android/app/dialertab/calllog/IntentProvider;
    .locals 1
    .parameter "number"

    .prologue
    .line 82
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/IntentProvider$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/IntentProvider$3;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public abstract getIntent(Landroid/content/Context;)Landroid/content/Intent;
.end method
