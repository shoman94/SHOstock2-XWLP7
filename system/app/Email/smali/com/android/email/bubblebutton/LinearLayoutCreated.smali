.class public Lcom/android/email/bubblebutton/LinearLayoutCreated;
.super Landroid/widget/LinearLayout;
.source "LinearLayoutCreated.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 24
    iput-object p1, p0, Lcom/android/email/bubblebutton/LinearLayoutCreated;->mContext:Landroid/content/Context;

    .line 26
    return-void
.end method
