.class public Lcom/sec/android/glview/TwGLTriangle;
.super Lcom/sec/android/glview/TwGLView;
.source "TwGLTriangle.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEFAULT_COLOR:I = 0x0

.field private static final DEFAULT_THICKNESS:I = 0x4


# instance fields
.field private mColor:I

.field private mDirection:F

.field private mHeight:F

.field private mThickness:I

.field private mTriangle:Lcom/sec/android/glview/TwGLPolygonTexture;

.field private mWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0xff

    .line 27
    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/sec/android/glview/TwGLTriangle;->DEFAULT_COLOR:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFFII)V
    .locals 11
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "direction"
    .parameter "color"
    .parameter "thickness"

    .prologue
    .line 42
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 30
    sget v1, Lcom/sec/android/glview/TwGLTriangle;->DEFAULT_COLOR:I

    iput v1, p0, Lcom/sec/android/glview/TwGLTriangle;->mColor:I

    .line 32
    const/4 v1, 0x4

    iput v1, p0, Lcom/sec/android/glview/TwGLTriangle;->mThickness:I

    .line 34
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLTriangle;->mWidth:F

    .line 35
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLTriangle;->mHeight:F

    .line 37
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLTriangle;->mDirection:F

    .line 39
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLTriangle;->mTriangle:Lcom/sec/android/glview/TwGLPolygonTexture;

    .line 44
    move/from16 v0, p7

    iput v0, p0, Lcom/sec/android/glview/TwGLTriangle;->mColor:I

    .line 45
    move/from16 v0, p8

    iput v0, p0, Lcom/sec/android/glview/TwGLTriangle;->mThickness:I

    .line 46
    iput p4, p0, Lcom/sec/android/glview/TwGLTriangle;->mWidth:F

    .line 47
    move/from16 v0, p5

    iput v0, p0, Lcom/sec/android/glview/TwGLTriangle;->mHeight:F

    .line 48
    move/from16 v0, p6

    iput v0, p0, Lcom/sec/android/glview/TwGLTriangle;->mDirection:F

    .line 50
    new-instance v1, Lcom/sec/android/glview/TwGLPolygonTexture;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/sec/android/glview/TwGLTriangle;->mWidth:F

    iget v6, p0, Lcom/sec/android/glview/TwGLTriangle;->mHeight:F

    const/4 v7, 0x2

    iget v8, p0, Lcom/sec/android/glview/TwGLTriangle;->mColor:I

    iget v9, p0, Lcom/sec/android/glview/TwGLTriangle;->mDirection:F

    iget v10, p0, Lcom/sec/android/glview/TwGLTriangle;->mThickness:I

    move-object v2, p1

    invoke-direct/range {v1 .. v10}, Lcom/sec/android/glview/TwGLPolygonTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIFI)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLTriangle;->mTriangle:Lcom/sec/android/glview/TwGLPolygonTexture;

    .line 51
    iget-object v1, p0, Lcom/sec/android/glview/TwGLTriangle;->mTriangle:Lcom/sec/android/glview/TwGLPolygonTexture;

    if-eqz v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/sec/android/glview/TwGLTriangle;->mTriangle:Lcom/sec/android/glview/TwGLPolygonTexture;

    iput-object p0, v1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 53
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTriangle;->mTriangle:Lcom/sec/android/glview/TwGLPolygonTexture;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTriangle;->mTriangle:Lcom/sec/android/glview/TwGLPolygonTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLPolygonTexture;->clear()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLTriangle;->mTriangle:Lcom/sec/android/glview/TwGLPolygonTexture;

    .line 66
    :cond_0
    return-void
.end method

.method public initSize()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method protected onDraw(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 3
    .parameter "gl"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTriangle;->mTriangle:Lcom/sec/android/glview/TwGLPolygonTexture;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTriangle;->mTriangle:Lcom/sec/android/glview/TwGLPolygonTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTriangle;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTriangle;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/glview/TwGLPolygonTexture;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    .line 81
    :cond_0
    return-void
.end method

.method protected onLoad(Ljavax/microedition/khronos/opengles/GL11;)Z
    .locals 1
    .parameter "gl"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTriangle;->mTriangle:Lcom/sec/android/glview/TwGLPolygonTexture;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTriangle;->mTriangle:Lcom/sec/android/glview/TwGLPolygonTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLPolygonTexture;->load(Ljavax/microedition/khronos/opengles/GL11;)Z

    move-result v0

    .line 73
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTriangle;->mTriangle:Lcom/sec/android/glview/TwGLPolygonTexture;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTriangle;->mTriangle:Lcom/sec/android/glview/TwGLPolygonTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLPolygonTexture;->reset()V

    .line 87
    :cond_0
    return-void
.end method

.method public setColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 96
    iput p1, p0, Lcom/sec/android/glview/TwGLTriangle;->mColor:I

    .line 97
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTriangle;->mTriangle:Lcom/sec/android/glview/TwGLPolygonTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLPolygonTexture;->setColor(I)V

    .line 98
    return-void
.end method

.method public setSize(FF)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 90
    iput p1, p0, Lcom/sec/android/glview/TwGLTriangle;->mWidth:F

    .line 91
    iput p2, p0, Lcom/sec/android/glview/TwGLTriangle;->mHeight:F

    .line 92
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTriangle;->mTriangle:Lcom/sec/android/glview/TwGLPolygonTexture;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/glview/TwGLPolygonTexture;->setSize(FF)V

    .line 93
    return-void
.end method

.method public setThickness(I)V
    .locals 1
    .parameter "thickness"

    .prologue
    .line 101
    iput p1, p0, Lcom/sec/android/glview/TwGLTriangle;->mThickness:I

    .line 102
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTriangle;->mTriangle:Lcom/sec/android/glview/TwGLPolygonTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLPolygonTexture;->setThickness(I)V

    .line 103
    return-void
.end method
