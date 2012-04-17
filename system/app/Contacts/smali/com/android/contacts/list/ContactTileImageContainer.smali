.class public Lcom/android/contacts/list/ContactTileImageContainer;
.super Landroid/widget/FrameLayout;
.source "ContactTileImageContainer.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method


# virtual methods
.method public requestLayout()V
    .locals 0

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileImageContainer;->forceLayout()V

    .line 37
    return-void
.end method
