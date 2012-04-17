.class public Lcom/android/email/activity/setup/RingToneSelectDialog;
.super Landroid/preference/RingtonePreference;
.source "RingToneSelectDialog.java"


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/preference/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    iput-object p1, p0, Lcom/android/email/activity/setup/RingToneSelectDialog;->mContext:Landroid/content/Context;

    .line 22
    return-void
.end method


# virtual methods
.method protected onClick()V
    .locals 0

    .prologue
    .line 32
    return-void
.end method
