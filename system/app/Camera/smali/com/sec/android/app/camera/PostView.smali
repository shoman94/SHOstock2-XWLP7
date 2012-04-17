.class public Lcom/sec/android/app/camera/PostView;
.super Lcom/sec/android/app/camera/MenuBase;
.source "PostView.java"


# instance fields
.field private mImageView:Landroid/widget/ImageView;

.field public mPrevSideMenuVisible:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)V
    .locals 0
    .parameter "activityContext"
    .parameter "layoutId"
    .parameter "viewId"
    .parameter "baseLayout"
    .parameter "menuResourceDepot"
    .parameter "order"

    .prologue
    .line 37
    invoke-direct/range {p0 .. p6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)V

    .line 40
    invoke-direct {p0}, Lcom/sec/android/app/camera/PostView;->init()V

    .line 41
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mBaseView:Landroid/view/ViewGroup;

    const v1, 0x7f080049

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/camera/PostView;->mImageView:Landroid/widget/ImageView;

    .line 45
    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 60
    sparse-switch p1, :sswitch_data_0

    .line 71
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 68
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 60
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x17 -> :sswitch_0
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 75
    sparse-switch p1, :sswitch_data_0

    .line 86
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 83
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 75
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x17 -> :sswitch_0
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public setImagePath(Ljava/lang/String;)V
    .locals 2
    .parameter "pathName"

    .prologue
    .line 52
    if-nez p1, :cond_0

    .line 53
    iget-object v0, p0, Lcom/sec/android/app/camera/PostView;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/PostView;->mImageView:Landroid/widget/ImageView;

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setImageUri(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sec/android/app/camera/PostView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 49
    return-void
.end method
