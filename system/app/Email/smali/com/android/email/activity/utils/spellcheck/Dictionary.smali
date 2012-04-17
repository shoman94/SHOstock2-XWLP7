.class public abstract Lcom/android/email/activity/utils/spellcheck/Dictionary;
.super Ljava/lang/Object;
.source "Dictionary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/utils/spellcheck/Dictionary$WordCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method


# virtual methods
.method public commit()V
    .locals 0

    .prologue
    .line 107
    return-void
.end method

.method public abstract isValidWord(Ljava/lang/CharSequence;)Z
.end method
