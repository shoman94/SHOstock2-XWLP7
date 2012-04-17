.class public Lcom/android/mms/RotationRestrictionException;
.super Ljava/lang/RuntimeException;
.source "RotationRestrictionException.java"


# static fields
.field private static final serialVersionUID:J = 0x729aef8c652652bL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 13
    return-void
.end method
