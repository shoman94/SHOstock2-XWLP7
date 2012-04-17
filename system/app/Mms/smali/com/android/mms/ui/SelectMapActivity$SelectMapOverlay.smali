.class Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;
.super Lcom/google/android/maps/ItemizedOverlay;
.source "SelectMapActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SelectMapActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectMapOverlay"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay$MapGestureListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/maps/ItemizedOverlay",
        "<",
        "Lcom/google/android/maps/OverlayItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mOverlays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/maps/OverlayItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/mms/ui/SelectMapActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/SelectMapActivity;Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "defaultMarker"

    .prologue
    .line 539
    iput-object p1, p0, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    .line 540
    invoke-static {p3}, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;->boundCenterBottom(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/ItemizedOverlay;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 535
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;->mOverlays:Ljava/util/ArrayList;

    .line 541
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay$MapGestureListener;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay$MapGestureListener;-><init>(Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;)V

    invoke-direct {v0, p2, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;->mGestureDetector:Landroid/view/GestureDetector;

    .line 542
    invoke-virtual {p0}, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;->populate()V

    .line 543
    return-void
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 532
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;->mOverlays:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public addOverlay(Lcom/google/android/maps/OverlayItem;)V
    .locals 1
    .parameter "overlay"

    .prologue
    .line 546
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 547
    invoke-virtual {p0}, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;->populate()V

    .line 548
    return-void
.end method

.method public clearOverlay()V
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 552
    invoke-virtual {p0}, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;->populate()V

    .line 553
    return-void
.end method

.method protected createItem(I)Lcom/google/android/maps/OverlayItem;
    .locals 1
    .parameter "i"

    .prologue
    .line 562
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/OverlayItem;

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;Z)V
    .locals 1
    .parameter "c"
    .parameter "v"
    .parameter "b"

    .prologue
    .line 557
    const/4 v0, 0x0

    invoke-super {p0, p1, p2, v0}, Lcom/google/android/maps/ItemizedOverlay;->draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;Z)V

    .line 558
    return-void
.end method

.method protected onTap(I)Z
    .locals 5
    .parameter "index"

    .prologue
    .line 572
    invoke-super {p0, p1}, Lcom/google/android/maps/ItemizedOverlay;->onTap(I)Z

    .line 574
    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/maps/OverlayItem;

    invoke-virtual {v3}, Lcom/google/android/maps/OverlayItem;->getPoint()Lcom/google/android/maps/GeoPoint;

    move-result-object v2

    .line 575
    .local v2, point:Lcom/google/android/maps/GeoPoint;
    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    iget-object v3, v3, Lcom/android/mms/ui/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v3}, Lcom/google/android/maps/MapView;->getMapCenter()Lcom/google/android/maps/GeoPoint;

    move-result-object v1

    .line 577
    .local v1, center:Lcom/google/android/maps/GeoPoint;
    invoke-virtual {v2}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v3

    invoke-virtual {v1}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v4

    if-ne v3, v4, :cond_1

    invoke-virtual {v2}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v3

    invoke-virtual {v1}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 579
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 580
    .local v0, address:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    #getter for: Lcom/android/mms/ui/SelectMapActivity;->mPickImage:Z
    invoke-static {v3}, Lcom/android/mms/ui/SelectMapActivity;->access$1400(Lcom/android/mms/ui/SelectMapActivity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 581
    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    invoke-virtual {v3}, Lcom/android/mms/ui/SelectMapActivity;->captureMap()V

    .line 585
    :goto_0
    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    invoke-virtual {v3, v0}, Lcom/android/mms/ui/SelectMapActivity;->doFinish(Ljava/lang/String;)V

    .line 591
    .end local v0           #address:Ljava/lang/String;
    :goto_1
    const/4 v3, 0x1

    return v3

    .line 583
    .restart local v0       #address:Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    invoke-virtual {v3, v2}, Lcom/android/mms/ui/SelectMapActivity;->getAddress(Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 588
    .end local v0           #address:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    #calls: Lcom/android/mms/ui/SelectMapActivity;->moveToMarker(Lcom/google/android/maps/GeoPoint;)Z
    invoke-static {v3, v2}, Lcom/android/mms/ui/SelectMapActivity;->access$1500(Lcom/android/mms/ui/SelectMapActivity;Lcom/google/android/maps/GeoPoint;)Z

    goto :goto_1
.end method

.method public onTap(Lcom/google/android/maps/GeoPoint;Lcom/google/android/maps/MapView;)Z
    .locals 3
    .parameter "p"
    .parameter "mapView"

    .prologue
    .line 596
    const/4 v1, 0x0

    .line 597
    .local v1, ret:Z
    iget-object v2, p0, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 599
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/google/android/maps/ItemizedOverlay;->onTap(Lcom/google/android/maps/GeoPoint;Lcom/google/android/maps/MapView;)Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 604
    :cond_0
    :goto_0
    return v1

    .line 600
    :catch_0
    move-exception v0

    .line 601
    .local v0, oobe:Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Lcom/google/android/maps/MapView;)Z
    .locals 1
    .parameter "ev"
    .parameter "mapView"

    .prologue
    .line 609
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 610
    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
