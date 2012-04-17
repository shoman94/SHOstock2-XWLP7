.class public Lcom/sec/android/app/camera/BlackScreen;
.super Lcom/sec/android/app/camera/MenuBase;
.source "BlackScreen.java"


# instance fields
.field private mView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)V
    .locals 8
    .parameter "activityContext"
    .parameter "layoutId"
    .parameter "viewId"
    .parameter "baseLayout"
    .parameter "menuResourceDepot"
    .parameter "zOrder"

    .prologue
    .line 31
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 33
    const v0, 0x7f08000f

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/camera/BlackScreen;->mView:Landroid/widget/ImageView;

    .line 34
    iget-object v0, p0, Lcom/sec/android/app/camera/BlackScreen;->mView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 35
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/BlackScreen;->mView:Landroid/widget/ImageView;

    .line 44
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    .line 45
    return-void
.end method

.method public onShow()V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sec/android/app/camera/BlackScreen;->mView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 39
    return-void
.end method
