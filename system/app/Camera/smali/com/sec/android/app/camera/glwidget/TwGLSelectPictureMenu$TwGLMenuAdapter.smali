.class Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLMenuAdapter;
.super Ljava/lang/Object;
.source "TwGLSelectPictureMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLList$Adapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwGLMenuAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLMenuAdapter;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x2

    return v0
.end method

.method public getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;
    .locals 6
    .parameter "position"
    .parameter "convertView"

    .prologue
    .line 158
    if-nez p2, :cond_0

    .line 159
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;

    #getter for: Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;)Lcom/sec/android/app/camera/AbstractCameraActivity;

    move-result-object v2

    const/16 v3, 0x2ee

    const/16 v4, 0x60

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;Lcom/sec/android/app/camera/AbstractCameraActivity;III)V

    .line 160
    .local v0, item:Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;->mList:Lcom/sec/android/glview/TwGLList;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;->access$500(Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;)Lcom/sec/android/glview/TwGLList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 161
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;->getZorder()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;->setZOrder(I)V

    .line 164
    .end local v0           #item:Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 169
    return-void
.end method
