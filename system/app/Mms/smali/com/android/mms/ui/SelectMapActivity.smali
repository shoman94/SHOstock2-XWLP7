.class public Lcom/android/mms/ui/SelectMapActivity;
.super Lcom/google/android/maps/MapActivity;
.source "SelectMapActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;,
        Lcom/android/mms/ui/SelectMapActivity$UpdateLocationTask;,
        Lcom/android/mms/ui/SelectMapActivity$SearchLocationTask;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCaptureHeight:I

.field private mCaptureWidth:I

.field private mEditText:Landroid/widget/EditText;

.field private mGeo:Landroid/location/Geocoder;

.field private mLocation:Ljava/lang/String;

.field mLocationListener:Landroid/location/LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field protected mMapView:Lcom/google/android/maps/MapView;

.field private mPickImage:Z

.field private mSearchButton:Landroid/widget/Button;

.field mSearchRunnable:Ljava/lang/Runnable;

.field private mSelectMapHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/google/android/maps/MapActivity;-><init>()V

    .line 64
    const-string v0, "Messaging/SelectMapActivity"

    iput-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->TAG:Ljava/lang/String;

    .line 150
    new-instance v0, Lcom/android/mms/ui/SelectMapActivity$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SelectMapActivity$4;-><init>(Lcom/android/mms/ui/SelectMapActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mSelectMapHandler:Landroid/os/Handler;

    .line 247
    new-instance v0, Lcom/android/mms/ui/SelectMapActivity$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SelectMapActivity$5;-><init>(Lcom/android/mms/ui/SelectMapActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocationListener:Landroid/location/LocationListener;

    .line 327
    new-instance v0, Lcom/android/mms/ui/SelectMapActivity$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SelectMapActivity$6;-><init>(Lcom/android/mms/ui/SelectMapActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mSearchRunnable:Ljava/lang/Runnable;

    .line 532
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/SelectMapActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/mms/ui/SelectMapActivity;->searchLocation()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/ui/SelectMapActivity;)Lcom/google/android/maps/GeoPoint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/mms/ui/SelectMapActivity;->getMyLocation()Lcom/google/android/maps/GeoPoint;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/SelectMapActivity;D)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/SelectMapActivity;->convToInt(D)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/SelectMapActivity;IILjava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/SelectMapActivity;->addMarker(IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/SelectMapActivity;IIII)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/ui/SelectMapActivity;->moveToMarker(IIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/SelectMapActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mPickImage:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/SelectMapActivity;Lcom/google/android/maps/GeoPoint;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SelectMapActivity;->moveToMarker(Lcom/google/android/maps/GeoPoint;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/SelectMapActivity;Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SelectMapActivity;->updateLocation(Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/SelectMapActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mSelectMapHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/SelectMapActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/mms/ui/SelectMapActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocation:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/mms/ui/SelectMapActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/SelectMapActivity;)Landroid/location/LocationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/SelectMapActivity;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SelectMapActivity;->getFromLocationName(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/SelectMapActivity;)Landroid/location/Geocoder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mGeo:Landroid/location/Geocoder;

    return-object v0
.end method

.method private addMarker(IILjava/lang/String;)Z
    .locals 3
    .parameter "lat"
    .parameter "lon"
    .parameter "snippet"

    .prologue
    .line 396
    iget-object v2, p0, Lcom/android/mms/ui/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v2}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v1

    .line 397
    .local v1, mapOverlays:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/maps/Overlay;>;"
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;

    .line 398
    .local v0, itemizedOverlay:Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;
    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v2, p3}, Lcom/android/mms/ui/SelectMapActivity;->getOverlay(IILandroid/graphics/drawable/Drawable;Ljava/lang/String;)Lcom/google/android/maps/OverlayItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;->addOverlay(Lcom/google/android/maps/OverlayItem;)V

    .line 399
    const/4 v2, 0x1

    return v2
.end method

.method private convToDouble(I)D
    .locals 4
    .parameter "i"

    .prologue
    .line 383
    int-to-double v0, p1

    const-wide v2, 0x412e848000000000L

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private convToInt(D)I
    .locals 2
    .parameter "d"

    .prologue
    .line 379
    const-wide v0, 0x412e848000000000L

    mul-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    return v0
.end method

.method private getFromLocationName(Ljava/lang/String;)Z
    .locals 16
    .parameter "location"

    .prologue
    .line 288
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_1

    .line 289
    :cond_0
    const/4 v13, 0x0

    .line 324
    :goto_0
    return v13

    .line 292
    :cond_1
    new-instance v2, Landroid/location/Geocoder;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    .line 293
    .local v2, geo:Landroid/location/Geocoder;
    const v11, 0x55d4a80

    .local v11, minLat:I
    const v9, -0x55d4a80

    .line 294
    .local v9, maxLat:I
    const v12, 0xaba9500

    .local v12, minLon:I
    const v10, -0xaba9500

    .line 296
    .local v10, maxLon:I
    const/4 v13, 0x5

    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v13}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v6

    .line 297
    .local v6, loc:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_4

    .line 298
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v13}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v8

    .line 299
    .local v8, mapOverlays:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/maps/Overlay;>;"
    const/4 v13, 0x0

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;

    .line 300
    .local v4, itemizedOverlay:Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;
    invoke-virtual {v4}, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;->clearOverlay()V

    .line 301
    const/4 v1, 0x0

    .line 302
    .local v1, addr:Landroid/location/Address;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v13

    if-ge v3, v13, :cond_2

    .line 303
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #addr:Landroid/location/Address;
    check-cast v1, Landroid/location/Address;

    .line 304
    .restart local v1       #addr:Landroid/location/Address;
    invoke-virtual {v1}, Landroid/location/Address;->getLatitude()D

    move-result-wide v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/mms/ui/SelectMapActivity;->convToInt(D)I

    move-result v5

    .line 305
    .local v5, lat:I
    invoke-virtual {v1}, Landroid/location/Address;->getLongitude()D

    move-result-wide v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/mms/ui/SelectMapActivity;->convToInt(D)I

    move-result v7

    .line 306
    .local v7, lon:I
    invoke-virtual {v1}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v7, v13}, Lcom/android/mms/ui/SelectMapActivity;->addMarker(IILjava/lang/String;)Z

    .line 307
    invoke-static {v11, v5}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 308
    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 309
    invoke-static {v12, v7}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 310
    invoke-static {v10, v7}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 302
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 313
    .end local v5           #lat:I
    .end local v7           #lon:I
    :cond_2
    if-eqz v1, :cond_3

    .line 314
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v9, v12, v10}, Lcom/android/mms/ui/SelectMapActivity;->moveToMarker(IIII)Z

    .line 324
    .end local v1           #addr:Landroid/location/Address;
    .end local v3           #i:I
    .end local v4           #itemizedOverlay:Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;
    .end local v6           #loc:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    .end local v8           #mapOverlays:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/maps/Overlay;>;"
    :cond_3
    :goto_2
    const/4 v13, 0x1

    goto :goto_0

    .line 317
    .restart local v6       #loc:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    :cond_4
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/SelectMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0901b2

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 321
    .end local v6           #loc:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    :catch_0
    move-exception v13

    goto :goto_2
.end method

.method private getMyLocation()Lcom/google/android/maps/GeoPoint;
    .locals 13

    .prologue
    const/4 v7, 0x0

    const/4 v12, 0x2

    const-wide v10, 0x412e848000000000L

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 213
    const/4 v5, 0x0

    .line 215
    .local v5, myLocation:Lcom/google/android/maps/GeoPoint;
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    .line 216
    .local v0, criteria:Landroid/location/Criteria;
    invoke-virtual {v0, v12}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 217
    invoke-virtual {v0, v9}, Landroid/location/Criteria;->setPowerRequirement(I)V

    .line 218
    invoke-virtual {v0, v8}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    .line 219
    invoke-virtual {v0, v8}, Landroid/location/Criteria;->setBearingRequired(Z)V

    .line 220
    invoke-virtual {v0, v8}, Landroid/location/Criteria;->setSpeedRequired(Z)V

    .line 221
    invoke-virtual {v0, v9}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 223
    iget-object v8, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v8, v0, v9}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v6

    .line 226
    .local v6, provider:Ljava/lang/String;
    if-nez v6, :cond_0

    .line 228
    iget-object v8, p0, Lcom/android/mms/ui/SelectMapActivity;->mSelectMapHandler:Landroid/os/Handler;

    invoke-static {v8, v12, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 229
    .local v4, msg:Landroid/os/Message;
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 244
    :goto_0
    return-object v7

    .line 233
    .end local v4           #msg:Landroid/os/Message;
    :cond_0
    iget-object v7, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v7, v6}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v3

    .line 235
    .local v3, location:Landroid/location/Location;
    iget-object v7, p0, Lcom/android/mms/ui/SelectMapActivity;->mSelectMapHandler:Landroid/os/Handler;

    invoke-static {v7, v9, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 236
    .restart local v4       #msg:Landroid/os/Message;
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 238
    if-eqz v3, :cond_1

    .line 239
    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v7

    mul-double/2addr v7, v10

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 240
    .local v1, geoLat:Ljava/lang/Double;
    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    mul-double/2addr v7, v10

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 242
    .local v2, geoLng:Ljava/lang/Double;
    new-instance v5, Lcom/google/android/maps/GeoPoint;

    .end local v5           #myLocation:Lcom/google/android/maps/GeoPoint;
    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v7

    invoke-virtual {v2}, Ljava/lang/Double;->intValue()I

    move-result v8

    invoke-direct {v5, v7, v8}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    .end local v1           #geoLat:Ljava/lang/Double;
    .end local v2           #geoLng:Ljava/lang/Double;
    .restart local v5       #myLocation:Lcom/google/android/maps/GeoPoint;
    :cond_1
    move-object v7, v5

    .line 244
    goto :goto_0
.end method

.method private getOverlay(IILandroid/graphics/drawable/Drawable;Ljava/lang/String;)Lcom/google/android/maps/OverlayItem;
    .locals 3
    .parameter "latitude"
    .parameter "longitude"
    .parameter "drawable"
    .parameter "snippet"

    .prologue
    .line 403
    new-instance v1, Lcom/google/android/maps/GeoPoint;

    invoke-direct {v1, p1, p2}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    .line 404
    .local v1, point:Lcom/google/android/maps/GeoPoint;
    new-instance v0, Lcom/google/android/maps/OverlayItem;

    const-string v2, ""

    invoke-direct {v0, v1, v2, p4}, Lcom/google/android/maps/OverlayItem;-><init>(Lcom/google/android/maps/GeoPoint;Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    .local v0, overlay:Lcom/google/android/maps/OverlayItem;
    invoke-virtual {v0, p3}, Lcom/google/android/maps/OverlayItem;->setMarker(Landroid/graphics/drawable/Drawable;)V

    .line 406
    return-object v0
.end method

.method private initMarker()Z
    .locals 5

    .prologue
    .line 387
    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v3}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v2

    .line 388
    .local v2, mapOverlays:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/maps/Overlay;>;"
    invoke-virtual {p0}, Lcom/android/mms/ui/SelectMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020162

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 389
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    new-instance v1, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;

    invoke-direct {v1, p0, p0, v0}, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;-><init>(Lcom/android/mms/ui/SelectMapActivity;Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 390
    .local v1, itemizedOverlay:Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    const/4 v3, 0x1

    return v3
.end method

.method private moveToMarker(IIII)Z
    .locals 5
    .parameter "minLat"
    .parameter "maxLat"
    .parameter "minLon"
    .parameter "maxLon"

    .prologue
    .line 418
    sub-int v0, p2, p1

    .line 419
    .local v0, lat_span:I
    sub-int v1, p4, p3

    .line 420
    .local v1, lon_span:I
    new-instance v2, Lcom/google/android/maps/GeoPoint;

    div-int/lit8 v3, v0, 0x2

    add-int/2addr v3, p1

    div-int/lit8 v4, v1, 0x2

    add-int/2addr v4, p3

    invoke-direct {v2, v3, v4}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    .line 421
    .local v2, point:Lcom/google/android/maps/GeoPoint;
    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v3}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/maps/MapController;->setCenter(Lcom/google/android/maps/GeoPoint;)V

    .line 422
    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v3}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;)V

    .line 423
    const/4 v3, 0x1

    return v3
.end method

.method private moveToMarker(Lcom/google/android/maps/GeoPoint;)Z
    .locals 4
    .parameter "point"

    .prologue
    const/4 v3, 0x1

    .line 410
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/maps/MapController;->setCenter(Lcom/google/android/maps/GeoPoint;)V

    .line 411
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;)V

    .line 413
    new-instance v0, Lcom/android/mms/ui/SelectMapActivity$UpdateLocationTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/SelectMapActivity$UpdateLocationTask;-><init>(Lcom/android/mms/ui/SelectMapActivity;Lcom/android/mms/ui/SelectMapActivity$1;)V

    new-array v1, v3, [Lcom/google/android/maps/GeoPoint;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SelectMapActivity$UpdateLocationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 414
    return v3
.end method

.method private searchLocation()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 274
    iget-object v2, p0, Lcom/android/mms/ui/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 275
    .local v1, location:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    iput-object v1, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocation:Ljava/lang/String;

    .line 281
    new-instance v2, Lcom/android/mms/ui/SelectMapActivity$SearchLocationTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/mms/ui/SelectMapActivity$SearchLocationTask;-><init>(Lcom/android/mms/ui/SelectMapActivity;Lcom/android/mms/ui/SelectMapActivity$1;)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocation:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/SelectMapActivity$SearchLocationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 283
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/SelectMapActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 284
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/android/mms/ui/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method private updateLocation(Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;
    .locals 13
    .parameter "point"

    .prologue
    .line 428
    const-string v12, ""

    .line 429
    .local v12, location:Ljava/lang/String;
    const/4 v9, 0x0

    .line 431
    .local v9, data:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    :try_start_0
    new-instance v0, Landroid/location/Geocoder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 432
    .local v0, geoCoder:Landroid/location/Geocoder;
    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/mms/ui/SelectMapActivity;->convToDouble(I)D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/mms/ui/SelectMapActivity;->convToDouble(I)D

    move-result-wide v3

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v9

    .line 434
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 435
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/location/Address;

    .line 436
    .local v6, address:Landroid/location/Address;
    invoke-virtual {v6}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v8

    .line 437
    .local v8, addressLines:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    if-gt v11, v8, :cond_2

    .line 438
    invoke-virtual {v6, v11}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v7

    .line 439
    .local v7, addressLine:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 440
    if-nez v11, :cond_1

    .line 441
    move-object v12, v7

    .line 437
    :cond_0
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 443
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    goto :goto_1

    .line 448
    .end local v0           #geoCoder:Landroid/location/Geocoder;
    .end local v6           #address:Landroid/location/Address;
    .end local v7           #addressLine:Ljava/lang/String;
    .end local v8           #addressLines:I
    .end local v11           #i:I
    :catch_0
    move-exception v10

    .line 449
    .local v10, e:Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    .line 451
    .end local v10           #e:Ljava/io/IOException;
    :cond_2
    return-object v12
.end method


# virtual methods
.method protected captureMap()V
    .locals 6

    .prologue
    .line 456
    iget-object v4, p0, Lcom/android/mms/ui/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/google/android/maps/MapView;->setDrawingCacheEnabled(Z)V

    .line 457
    const/4 v1, 0x0

    .line 460
    .local v1, saved:Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v4, p0, Lcom/android/mms/ui/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v4}, Lcom/google/android/maps/MapView;->getDrawingCache()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/view/ViewRootImpl$CalledFromWrongThreadException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 467
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/android/mms/ui/SelectMapActivity;->mCaptureWidth:I

    sub-int/2addr v4, v5

    div-int/lit8 v2, v4, 0x2

    .line 468
    .local v2, x:I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/android/mms/ui/SelectMapActivity;->mCaptureHeight:I

    sub-int/2addr v4, v5

    div-int/lit8 v3, v4, 0x2

    .line 470
    .local v3, y:I
    iget v4, p0, Lcom/android/mms/ui/SelectMapActivity;->mCaptureWidth:I

    iget v5, p0, Lcom/android/mms/ui/SelectMapActivity;->mCaptureHeight:I

    invoke-static {v1, v2, v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/SelectMapActivity;->mBitmap:Landroid/graphics/Bitmap;

    .line 471
    .end local v2           #x:I
    .end local v3           #y:I
    :goto_0
    return-void

    .line 461
    :catch_0
    move-exception v0

    .line 462
    .local v0, e:Landroid/view/ViewRootImpl$CalledFromWrongThreadException;
    invoke-virtual {v0}, Landroid/view/ViewRootImpl$CalledFromWrongThreadException;->printStackTrace()V

    .line 463
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/mms/ui/SelectMapActivity;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method protected doFinish(Ljava/lang/String;)V
    .locals 3
    .parameter "address"

    .prologue
    .line 505
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 506
    .local v0, result:Landroid/content/Intent;
    const-string v1, "location"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 507
    const-string v1, "map_image"

    iget-object v2, p0, Lcom/android/mms/ui/SelectMapActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 508
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/mms/ui/SelectMapActivity;->setResult(ILandroid/content/Intent;)V

    .line 509
    invoke-virtual {p0}, Lcom/android/mms/ui/SelectMapActivity;->finish()V

    .line 510
    return-void
.end method

.method protected getAddress(Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;
    .locals 14
    .parameter "point"

    .prologue
    .line 474
    const-string v11, ""

    .line 475
    .local v11, returnAddress:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 476
    .local v10, retAddress:Ljava/lang/StringBuilder;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 477
    .local v12, sb:Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    .line 478
    .local v7, data:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    new-instance v0, Landroid/location/Geocoder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v0, p0, v5}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 479
    .local v0, geoCoder:Landroid/location/Geocoder;
    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/mms/ui/SelectMapActivity;->convToDouble(I)D

    move-result-wide v1

    .line 480
    .local v1, lat:D
    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/mms/ui/SelectMapActivity;->convToDouble(I)D

    move-result-wide v3

    .line 483
    .local v3, lng:D
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v7

    .line 484
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 485
    const/4 v5, 0x0

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/location/Address;

    .line 486
    .local v6, address:Landroid/location/Address;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    invoke-virtual {v6}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    if-ge v9, v5, :cond_1

    .line 487
    invoke-virtual {v6, v9}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 488
    invoke-virtual {v6, v9}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, "\n"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 492
    .end local v6           #address:Landroid/location/Address;
    .end local v9           #i:I
    :cond_1
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocation:Ljava/lang/String;

    .line 493
    iget-object v5, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocation:Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "http://maps.google.com/maps?f=q&q=("

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, ","

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, ")"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, "\n"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 501
    :goto_1
    return-object v11

    .line 497
    :catch_0
    move-exception v8

    .line 499
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method protected isRouteDisplayed()Z
    .locals 1

    .prologue
    .line 515
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "bundle"

    .prologue
    const/4 v5, 0x1

    .line 93
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    invoke-virtual {p0}, Lcom/android/mms/ui/SelectMapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 96
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "image_location"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mPickImage:Z

    .line 98
    const v3, 0x7f03002b

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/SelectMapActivity;->setContentView(I)V

    .line 99
    new-instance v3, Landroid/location/Geocoder;

    invoke-direct {v3, p0}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mGeo:Landroid/location/Geocoder;

    .line 100
    const v3, 0x7f08009d

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/SelectMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/maps/MapView;

    iput-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    .line 101
    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v3, v5}, Lcom/google/android/maps/MapView;->setBuiltInZoomControls(Z)V

    .line 102
    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v3}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v3

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Lcom/google/android/maps/MapController;->setZoom(I)I

    .line 104
    const/16 v3, 0xf0

    iput v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mCaptureHeight:I

    .line 105
    const/16 v3, 0x140

    iput v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mCaptureWidth:I

    .line 107
    const-string v2, "location"

    .line 108
    .local v2, serviceString:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/SelectMapActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/LocationManager;

    iput-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocationManager:Landroid/location/LocationManager;

    .line 110
    const v3, 0x7f08009b

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/SelectMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    .line 111
    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 112
    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    new-instance v4, Lcom/android/mms/ui/SelectMapActivity$1;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/SelectMapActivity$1;-><init>(Lcom/android/mms/ui/SelectMapActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 120
    const-string v3, ""

    const v4, 0x7f0901da

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/SelectMapActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {p0, v3, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 121
    .local v0, dialog:Landroid/app/ProgressDialog;
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/mms/ui/SelectMapActivity$2;

    invoke-direct {v4, p0, v0}, Lcom/android/mms/ui/SelectMapActivity$2;-><init>(Lcom/android/mms/ui/SelectMapActivity;Landroid/app/ProgressDialog;)V

    const-string v5, "getMyLocation"

    invoke-direct {v3, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 140
    const v3, 0x7f08009c

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/SelectMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mSearchButton:Landroid/widget/Button;

    .line 141
    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mSearchButton:Landroid/widget/Button;

    new-instance v4, Lcom/android/mms/ui/SelectMapActivity$3;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/SelectMapActivity$3;-><init>(Lcom/android/mms/ui/SelectMapActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 206
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onDestroy()V

    .line 208
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocationListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 210
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 196
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onPause()V

    .line 200
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getZoomButtonsController()Landroid/widget/ZoomButtonsController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ZoomButtonsController;->getZoomControls()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 201
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 185
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onResume()V

    .line 186
    invoke-direct {p0}, Lcom/android/mms/ui/SelectMapActivity;->initMarker()Z

    .line 187
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocation:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SelectMapActivity;->getFromLocationName(Ljava/lang/String;)Z

    .line 191
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getZoomButtonsController()Landroid/widget/ZoomButtonsController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ZoomButtonsController;->getZoomControls()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 192
    return-void
.end method
