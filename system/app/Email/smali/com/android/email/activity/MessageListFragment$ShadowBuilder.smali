.class Lcom/android/email/activity/MessageListFragment$ShadowBuilder;
.super Landroid/view/View$DragShadowBuilder;
.source "MessageListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShadowBuilder"
.end annotation


# static fields
.field private static sBackground:Landroid/graphics/Bitmap;

.field private static sCountImage:Landroid/graphics/Bitmap;

.field private static sCountImageNinePatch:Landroid/graphics/NinePatch;

.field private static sCountImagePointXDefault:I

.field private static sCountImagePointXFour:I

.field private static sCountImagePointXOne:I

.field private static sCountImagePointXThree:I

.field private static sCountImagePointXTwo:I

.field private static sCountImageRightDefault:I

.field private static sCountImageRightFour:I

.field private static sCountImageRightThree:I

.field private static sCountImageRightTwo:I

.field private static sCountImageTop:I

.field private static sCountPaint:Landroid/text/TextPaint;

.field private static sCountTextPointXDefault:I

.field private static sCountTextPointXFour:I

.field private static sCountTextPointXOne:I

.field private static sCountTextPointXThree:I

.field private static sCountTextPointXTwo:I

.field private static sCountTextPointY:I

.field private static sEnvelopePointY:I

.field private static sMessagePaint:Landroid/text/TextPaint;

.field private static sTouchPoint:I

.field private static sTouchX:I


# instance fields
.field private mCountText:Ljava/lang/String;

.field private mDragHeight:I

.field private final mDragWidth:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1691
    invoke-direct {p0}, Landroid/view/View$DragShadowBuilder;-><init>()V

    .line 1711
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->mDragWidth:I

    return-void
.end method

.method static synthetic access$902(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 1691
    sput p0, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchX:I

    return p0
.end method


# virtual methods
.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/4 v5, 0x0

    .line 1838
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->mCountText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 1839
    .local v1, countLength:I
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1840
    .local v0, LineRect:Landroid/graphics/Rect;
    packed-switch v1, :pswitch_data_0

    .line 1926
    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchX:I

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchPoint:I

    sub-int/2addr v2, v3

    if-gez v2, :cond_4

    .line 1927
    sget-object v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sBackground:Landroid/graphics/Bitmap;

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sEnvelopePointY:I

    int-to-float v3, v3

    sget-object v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sMessagePaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v5, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1928
    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImagePointXDefault:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 1929
    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageTop:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 1930
    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageRightDefault:I

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 1931
    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImagePointXOne:I

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageTop:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 1932
    sget-object v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageNinePatch:Landroid/graphics/NinePatch;

    invoke-virtual {v2, p1, v0}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 1933
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->mCountText:Ljava/lang/String;

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountTextPointXDefault:I

    int-to-float v3, v3

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountTextPointY:I

    int-to-float v4, v4

    sget-object v5, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1949
    :goto_0
    return-void

    .line 1842
    :pswitch_0
    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchX:I

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchPoint:I

    sub-int/2addr v2, v3

    if-gez v2, :cond_0

    .line 1843
    sget-object v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sBackground:Landroid/graphics/Bitmap;

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sEnvelopePointY:I

    int-to-float v3, v3

    sget-object v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sMessagePaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v5, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1844
    sget-object v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImage:Landroid/graphics/Bitmap;

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImagePointXOne:I

    int-to-float v3, v3

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageTop:I

    int-to-float v4, v4

    sget-object v5, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sMessagePaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1846
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->mCountText:Ljava/lang/String;

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountTextPointXOne:I

    int-to-float v3, v3

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountTextPointY:I

    int-to-float v4, v4

    sget-object v5, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 1849
    :cond_0
    sget-object v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sBackground:Landroid/graphics/Bitmap;

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchX:I

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchPoint:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sEnvelopePointY:I

    int-to-float v4, v4

    sget-object v5, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sMessagePaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1851
    sget-object v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImage:Landroid/graphics/Bitmap;

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchX:I

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchPoint:I

    sget v5, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImagePointXOne:I

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageTop:I

    int-to-float v4, v4

    sget-object v5, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sMessagePaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1854
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->mCountText:Ljava/lang/String;

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchX:I

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchPoint:I

    sget v5, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountTextPointXOne:I

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountTextPointY:I

    int-to-float v4, v4

    sget-object v5, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 1859
    :pswitch_1
    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchX:I

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchPoint:I

    sub-int/2addr v2, v3

    if-gez v2, :cond_1

    .line 1860
    sget-object v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sBackground:Landroid/graphics/Bitmap;

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sEnvelopePointY:I

    int-to-float v3, v3

    sget-object v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sMessagePaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v5, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1861
    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImagePointXTwo:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 1862
    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageTop:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 1863
    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageRightTwo:I

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 1864
    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImagePointXOne:I

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageTop:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 1865
    sget-object v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageNinePatch:Landroid/graphics/NinePatch;

    invoke-virtual {v2, p1, v0}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 1866
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->mCountText:Ljava/lang/String;

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountTextPointXTwo:I

    int-to-float v3, v3

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountTextPointY:I

    int-to-float v4, v4

    sget-object v5, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 1869
    :cond_1
    sget-object v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sBackground:Landroid/graphics/Bitmap;

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchX:I

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchPoint:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sEnvelopePointY:I

    int-to-float v4, v4

    sget-object v5, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sMessagePaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1871
    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchX:I

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchPoint:I

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImagePointXTwo:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 1872
    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageTop:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 1873
    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchX:I

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchPoint:I

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageRightTwo:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 1874
    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImagePointXOne:I

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageTop:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 1875
    sget-object v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageNinePatch:Landroid/graphics/NinePatch;

    invoke-virtual {v2, p1, v0}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 1876
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->mCountText:Ljava/lang/String;

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchX:I

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchPoint:I

    sget v5, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountTextPointXTwo:I

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountTextPointY:I

    int-to-float v4, v4

    sget-object v5, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 1881
    :pswitch_2
    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchX:I

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchPoint:I

    sub-int/2addr v2, v3

    if-gez v2, :cond_2

    .line 1882
    sget-object v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sBackground:Landroid/graphics/Bitmap;

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sEnvelopePointY:I

    int-to-float v3, v3

    sget-object v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sMessagePaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v5, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1883
    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImagePointXThree:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 1884
    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageTop:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 1885
    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageRightThree:I

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 1886
    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImagePointXOne:I

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageTop:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 1887
    sget-object v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageNinePatch:Landroid/graphics/NinePatch;

    invoke-virtual {v2, p1, v0}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 1888
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->mCountText:Ljava/lang/String;

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountTextPointXThree:I

    int-to-float v3, v3

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountTextPointY:I

    int-to-float v4, v4

    sget-object v5, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 1891
    :cond_2
    sget-object v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sBackground:Landroid/graphics/Bitmap;

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchX:I

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchPoint:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sEnvelopePointY:I

    int-to-float v4, v4

    sget-object v5, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sMessagePaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1893
    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchX:I

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchPoint:I

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImagePointXThree:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 1894
    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageTop:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 1895
    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchX:I

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchPoint:I

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageRightThree:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 1896
    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImagePointXOne:I

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageTop:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 1897
    sget-object v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageNinePatch:Landroid/graphics/NinePatch;

    invoke-virtual {v2, p1, v0}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 1898
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->mCountText:Ljava/lang/String;

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchX:I

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchPoint:I

    sget v5, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountTextPointXThree:I

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountTextPointY:I

    int-to-float v4, v4

    sget-object v5, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 1904
    :pswitch_3
    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchX:I

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchPoint:I

    sub-int/2addr v2, v3

    if-gez v2, :cond_3

    .line 1905
    sget-object v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sBackground:Landroid/graphics/Bitmap;

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sEnvelopePointY:I

    int-to-float v3, v3

    sget-object v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sMessagePaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v5, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1906
    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImagePointXFour:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 1907
    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageTop:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 1908
    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageRightFour:I

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 1909
    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImagePointXOne:I

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageTop:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 1910
    sget-object v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageNinePatch:Landroid/graphics/NinePatch;

    invoke-virtual {v2, p1, v0}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 1911
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->mCountText:Ljava/lang/String;

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountTextPointXFour:I

    int-to-float v3, v3

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountTextPointY:I

    int-to-float v4, v4

    sget-object v5, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 1914
    :cond_3
    sget-object v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sBackground:Landroid/graphics/Bitmap;

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchX:I

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchPoint:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sEnvelopePointY:I

    int-to-float v4, v4

    sget-object v5, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sMessagePaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1916
    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchX:I

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchPoint:I

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImagePointXFour:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 1917
    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageTop:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 1918
    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchX:I

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchPoint:I

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageRightFour:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 1919
    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImagePointXOne:I

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageTop:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 1920
    sget-object v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageNinePatch:Landroid/graphics/NinePatch;

    invoke-virtual {v2, p1, v0}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 1921
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->mCountText:Ljava/lang/String;

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchX:I

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchPoint:I

    sget v5, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountTextPointXFour:I

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountTextPointY:I

    int-to-float v4, v4

    sget-object v5, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 1936
    :cond_4
    sget-object v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sBackground:Landroid/graphics/Bitmap;

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchX:I

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchPoint:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sEnvelopePointY:I

    int-to-float v4, v4

    sget-object v5, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sMessagePaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1938
    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchX:I

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchPoint:I

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImagePointXDefault:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 1939
    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageTop:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 1940
    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchX:I

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 1941
    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImagePointXOne:I

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageTop:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 1942
    sget-object v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageNinePatch:Landroid/graphics/NinePatch;

    invoke-virtual {v2, p1, v0}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 1943
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->mCountText:Ljava/lang/String;

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchX:I

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchPoint:I

    sget v5, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountTextPointXDefault:I

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountTextPointY:I

    int-to-float v4, v4

    sget-object v5, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 1840
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 2
    .parameter "shadowSize"
    .parameter "shadowTouchPoint"

    .prologue
    .line 1832
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->mDragHeight:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 1833
    sget v0, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchX:I

    iget v1, p0, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->mDragHeight:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 1834
    return-void
.end method
