.class Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu$TwGLDeviceListMenuAdapter;
.super Ljava/lang/Object;
.source "TwGLDeviceListMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLList$Adapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwGLDeviceListMenuAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 478
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu$TwGLDeviceListMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 478
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu$TwGLDeviceListMenuAdapter;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 480
    const/4 v0, 0x0

    .line 481
    .local v0, count:I
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu$TwGLDeviceListMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mActivityConetxt:Lcom/sec/android/app/camera/AbstractCameraActivity;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;)Lcom/sec/android/app/camera/AbstractCameraActivity;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera;->mUserWrapper:Lcom/sec/android/app/camera/Camera$UserWrapper;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera$UserWrapper;->getUserCount()I

    move-result v0

    .line 482
    return v0
.end method

.method public getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;
    .locals 6
    .parameter "position"
    .parameter "convertView"

    .prologue
    .line 487
    const/4 v2, 0x0

    .line 488
    .local v2, itemData:Lcom/samsung/shareshot/User;
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu$TwGLDeviceListMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mActivityConetxt:Lcom/sec/android/app/camera/AbstractCameraActivity;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;)Lcom/sec/android/app/camera/AbstractCameraActivity;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera;->mUserWrapper:Lcom/sec/android/app/camera/Camera$UserWrapper;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/Camera$UserWrapper;->getUserFromList(I)Lcom/samsung/shareshot/User;

    move-result-object v2

    .line 489
    if-nez v2, :cond_0

    .line 490
    const/4 v0, 0x0

    .line 497
    :goto_0
    return-object v0

    .line 491
    :cond_0
    if-nez p2, :cond_1

    .line 492
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu$TwGLDeviceListMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->access$200(Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;)Lcom/sec/android/app/camera/AbstractCameraActivity;

    move-result-object v1

    const/high16 v4, 0x440a

    const/high16 v5, 0x42ae

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;Lcom/samsung/shareshot/User;IFF)V

    .line 493
    .local v0, item:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu$TwGLDeviceListMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mList:Lcom/sec/android/glview/TwGLList;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;)Lcom/sec/android/glview/TwGLList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 494
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu$TwGLDeviceListMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->getZorder()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->setZOrder(I)V

    goto :goto_0

    .end local v0           #item:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;
    :cond_1
    move-object v0, p2

    .line 497
    goto :goto_0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 502
    return-void
.end method
