.class Lcom/sec/android/app/camera/MenuDimController$DimArray;
.super Ljava/lang/Object;
.source "MenuDimController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/MenuDimController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DimArray"
.end annotation


# instance fields
.field private mChangeArray:[Z

.field private mDimArray:[Z

.field private final mMenuId:I

.field final synthetic this$0:Lcom/sec/android/app/camera/MenuDimController;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/MenuDimController;I)V
    .locals 4
    .parameter
    .parameter "menuId"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x2b

    .line 132
    iput-object p1, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 128
    new-array v1, v2, [Z

    iput-object v1, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->mDimArray:[Z

    .line 130
    new-array v1, v2, [Z

    iput-object v1, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->mChangeArray:[Z

    .line 133
    iput p2, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->mMenuId:I

    .line 134
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 135
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->mDimArray:[Z

    aput-boolean v3, v1, v0

    .line 136
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->mChangeArray:[Z

    aput-boolean v3, v1, v0

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    :cond_0
    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/MenuDimController$DimArray;)[Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->mDimArray:[Z

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/MenuDimController$DimArray;)[Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->mChangeArray:[Z

    return-object v0
.end method


# virtual methods
.method public getArray()[Z
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->mDimArray:[Z

    return-object v0
.end method

.method public getMenuId()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->mMenuId:I

    return v0
.end method

.method public getSavedSettingValue(I)I
    .locals 4
    .parameter "menuid"

    .prologue
    .line 306
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    #getter for: Lcom/sec/android/app/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/sec/android/app/camera/MenuDimController;->access$000(Lcom/sec/android/app/camera/MenuDimController;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;

    .line 308
    .local v0, dimReference:Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;
    if-eqz v0, :cond_1

    .line 309
    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;->getReferenceCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 310
    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;->getSettingsValue()I

    move-result v1

    .line 311
    .local v1, settingValue:I
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    #getter for: Lcom/sec/android/app/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/sec/android/app/camera/MenuDimController;->access$000(Lcom/sec/android/app/camera/MenuDimController;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    .end local v1           #settingValue:I
    :goto_0
    return v1

    .line 314
    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;->decreaseReferenceCount()V

    .line 317
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public restoreUserSettingValues(Z)Z
    .locals 11
    .parameter "exiting"

    .prologue
    const/16 v10, 0x1a

    const/16 v9, 0x19

    const/16 v8, 0xb

    const/4 v7, 0x3

    const/4 v6, -0x1

    .line 321
    const/4 v2, 0x0

    .line 323
    .local v2, resolutionChanged:Z
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    #getter for: Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;
    invoke-static {v4}, Lcom/sec/android/app/camera/MenuDimController;->access$100(Lcom/sec/android/app/camera/MenuDimController;)Lcom/sec/android/app/camera/AbstractCameraActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    .line 325
    .local v0, cs:Lcom/sec/android/app/camera/CameraSettings;
    const/4 v1, 0x0

    .local v1, key:I
    :goto_0
    const/16 v4, 0x2b

    if-ge v1, v4, :cond_5

    .line 326
    if-eqz p1, :cond_0

    if-ne v1, v8, :cond_0

    .line 327
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSceneMode()I

    move-result v4

    if-eqz v4, :cond_2

    .line 328
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    #getter for: Lcom/sec/android/app/camera/MenuDimController;->mPreviousFlashValue:I
    invoke-static {v4}, Lcom/sec/android/app/camera/MenuDimController;->access$200(Lcom/sec/android/app/camera/MenuDimController;)I

    move-result v3

    .line 334
    .local v3, savedValue:I
    :goto_1
    if-eq v3, v6, :cond_0

    .line 335
    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    .line 338
    .end local v3           #savedValue:I
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->mChangeArray:[Z

    aget-boolean v4, v4, v1

    if-nez v4, :cond_3

    .line 325
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 331
    :cond_2
    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v3

    .restart local v3       #savedValue:I
    goto :goto_1

    .line 342
    .end local v3           #savedValue:I
    :cond_3
    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_2

    .line 344
    :pswitch_1
    const/16 v4, 0xd

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v3

    .line 345
    .restart local v3       #savedValue:I
    if-eq v3, v6, :cond_1

    .line 346
    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setAntishake(I)V

    goto :goto_2

    .line 349
    .end local v3           #savedValue:I
    :pswitch_2
    const/16 v4, 0xe

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v3

    .line 350
    .restart local v3       #savedValue:I
    if-eq v3, v6, :cond_1

    .line 351
    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraAutocontrast(I)V

    goto :goto_2

    .line 354
    .end local v3           #savedValue:I
    :pswitch_3
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v3

    .line 355
    .restart local v3       #savedValue:I
    if-eq v3, v6, :cond_1

    .line 356
    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setSceneMode(I)V

    goto :goto_2

    .line 359
    .end local v3           #savedValue:I
    :pswitch_4
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v3

    .line 360
    .restart local v3       #savedValue:I
    if-eq v3, v6, :cond_1

    .line 361
    invoke-virtual {v0, v3, p1}, Lcom/sec/android/app/camera/CameraSettings;->setShootingMode(IZ)V

    goto :goto_2

    .line 364
    .end local v3           #savedValue:I
    :pswitch_5
    const/16 v4, 0xa

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v3

    .line 365
    .restart local v3       #savedValue:I
    if-eq v3, v6, :cond_1

    .line 366
    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setISO(I)V

    goto :goto_2

    .line 369
    .end local v3           #savedValue:I
    :pswitch_6
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v3

    .line 370
    .restart local v3       #savedValue:I
    if-eq v3, v6, :cond_1

    .line 371
    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setEffect(I)V

    goto :goto_2

    .line 374
    .end local v3           #savedValue:I
    :pswitch_7
    const/16 v4, 0x12

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v3

    .line 375
    .restart local v3       #savedValue:I
    if-eq v3, v6, :cond_1

    .line 376
    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraZoomValue(I)V

    goto :goto_2

    .line 379
    .end local v3           #savedValue:I
    :pswitch_8
    if-nez p1, :cond_1

    .line 380
    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v3

    .line 381
    .restart local v3       #savedValue:I
    if-eq v3, v6, :cond_1

    .line 382
    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto :goto_2

    .line 386
    .end local v3           #savedValue:I
    :pswitch_9
    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v3

    .line 387
    .restart local v3       #savedValue:I
    if-eq v3, v6, :cond_1

    .line 388
    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setFocusMode(I)V

    goto :goto_2

    .line 391
    .end local v3           #savedValue:I
    :pswitch_a
    const/16 v4, 0x18

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v3

    .line 392
    .restart local v3       #savedValue:I
    if-eq v3, v6, :cond_1

    .line 393
    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraContrast(I)V

    .line 394
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    #getter for: Lcom/sec/android/app/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/sec/android/app/camera/MenuDimController;->access$000(Lcom/sec/android/app/camera/MenuDimController;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;->getSettingsValue()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraSharpness(I)V

    .line 395
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    #getter for: Lcom/sec/android/app/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/sec/android/app/camera/MenuDimController;->access$000(Lcom/sec/android/app/camera/MenuDimController;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;->getSettingsValue()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraSaturation(I)V

    .line 396
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    #getter for: Lcom/sec/android/app/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/sec/android/app/camera/MenuDimController;->access$000(Lcom/sec/android/app/camera/MenuDimController;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    #getter for: Lcom/sec/android/app/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/sec/android/app/camera/MenuDimController;->access$000(Lcom/sec/android/app/camera/MenuDimController;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 401
    .end local v3           #savedValue:I
    :pswitch_b
    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v3

    .line 402
    .restart local v3       #savedValue:I
    if-eq v3, v6, :cond_1

    .line 403
    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setExposuremeter(I)V

    goto/16 :goto_2

    .line 406
    .end local v3           #savedValue:I
    :pswitch_c
    const/16 v4, 0xc

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v3

    .line 407
    .restart local v3       #savedValue:I
    if-eq v3, v6, :cond_1

    .line 408
    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setObjecttracking(I)V

    goto/16 :goto_2

    .line 411
    .end local v3           #savedValue:I
    :pswitch_d
    const/4 v4, 0x7

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v3

    .line 412
    .restart local v3       #savedValue:I
    if-eq v3, v6, :cond_1

    .line 413
    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraExposureValue(I)V

    goto/16 :goto_2

    .line 416
    .end local v3           #savedValue:I
    :pswitch_e
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v3

    .line 417
    .restart local v3       #savedValue:I
    if-eq v3, v6, :cond_1

    .line 418
    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolution(IZ)Z

    .line 419
    const/4 v2, 0x1

    goto/16 :goto_2

    .line 423
    .end local v3           #savedValue:I
    :pswitch_f
    const/16 v4, 0x9

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v3

    .line 424
    .restart local v3       #savedValue:I
    if-eq v3, v6, :cond_1

    .line 425
    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setWhiteBalance(I)V

    goto/16 :goto_2

    .line 428
    .end local v3           #savedValue:I
    :pswitch_10
    const/16 v4, 0xf

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v3

    .line 429
    .restart local v3       #savedValue:I
    if-eq v3, v6, :cond_1

    .line 430
    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setBlinkdetection(I)V

    goto/16 :goto_2

    .line 433
    .end local v3           #savedValue:I
    :pswitch_11
    const/4 v4, 0x6

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v3

    .line 434
    .restart local v3       #savedValue:I
    if-eq v3, v6, :cond_1

    .line 435
    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setTimer(I)V

    goto/16 :goto_2

    .line 438
    .end local v3           #savedValue:I
    :pswitch_12
    const/16 v4, 0x11

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v3

    .line 439
    .restart local v3       #savedValue:I
    if-eq v3, v6, :cond_1

    .line 440
    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setReview(I)V

    goto/16 :goto_2

    .line 443
    .end local v3           #savedValue:I
    :pswitch_13
    const/16 v4, 0x13

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v3

    .line 444
    .restart local v3       #savedValue:I
    if-eq v3, v6, :cond_1

    .line 445
    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setGuideline(I)V

    goto/16 :goto_2

    .line 448
    .end local v3           #savedValue:I
    :pswitch_14
    const/16 v4, 0x65

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v3

    .line 449
    .restart local v3       #savedValue:I
    if-eq v3, v6, :cond_1

    .line 450
    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setRecordingMode(I)V

    goto/16 :goto_2

    .line 453
    .end local v3           #savedValue:I
    :pswitch_15
    const/16 v4, 0x6d

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v3

    .line 454
    .restart local v3       #savedValue:I
    if-eq v3, v6, :cond_1

    .line 455
    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderExposureValue(I)V

    goto/16 :goto_2

    .line 458
    .end local v3           #savedValue:I
    :pswitch_16
    const/16 v4, 0x68

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v3

    .line 459
    .restart local v3       #savedValue:I
    if-eq v3, v6, :cond_1

    .line 460
    invoke-virtual {v0, v3, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(IZ)Z

    .line 461
    const/4 v2, 0x1

    goto/16 :goto_2

    .line 465
    .end local v3           #savedValue:I
    :pswitch_17
    const/16 v4, 0x6c

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v3

    .line 466
    .restart local v3       #savedValue:I
    if-eq v3, v6, :cond_1

    .line 467
    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setEffect(I)V

    goto/16 :goto_2

    .line 470
    .end local v3           #savedValue:I
    :pswitch_18
    const/16 v4, 0x6b

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v3

    .line 471
    .restart local v3       #savedValue:I
    if-eq v3, v6, :cond_1

    .line 472
    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setWhiteBalance(I)V

    goto/16 :goto_2

    .line 475
    .end local v3           #savedValue:I
    :pswitch_19
    const/16 v4, 0x72

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v3

    .line 476
    .restart local v3       #savedValue:I
    if-eq v3, v6, :cond_1

    .line 477
    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderContrast(I)V

    .line 478
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    #getter for: Lcom/sec/android/app/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/sec/android/app/camera/MenuDimController;->access$000(Lcom/sec/android/app/camera/MenuDimController;)Ljava/util/HashMap;

    move-result-object v4

    const/16 v5, 0x74

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;->getSettingsValue()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderSharpness(I)V

    .line 479
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    #getter for: Lcom/sec/android/app/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/sec/android/app/camera/MenuDimController;->access$000(Lcom/sec/android/app/camera/MenuDimController;)Ljava/util/HashMap;

    move-result-object v4

    const/16 v5, 0x73

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;->getSettingsValue()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderSaturation(I)V

    .line 480
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    #getter for: Lcom/sec/android/app/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/sec/android/app/camera/MenuDimController;->access$000(Lcom/sec/android/app/camera/MenuDimController;)Ljava/util/HashMap;

    move-result-object v4

    const/16 v5, 0x74

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    #getter for: Lcom/sec/android/app/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/sec/android/app/camera/MenuDimController;->access$000(Lcom/sec/android/app/camera/MenuDimController;)Ljava/util/HashMap;

    move-result-object v4

    const/16 v5, 0x73

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 485
    .end local v3           #savedValue:I
    :pswitch_1a
    const/16 v4, 0x78

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v3

    .line 486
    .restart local v3       #savedValue:I
    if-eq v3, v6, :cond_1

    .line 487
    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderReview(I)V

    goto/16 :goto_2

    .line 490
    .end local v3           #savedValue:I
    :pswitch_1b
    const/16 v4, 0x15

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v3

    .line 491
    .restart local v3       #savedValue:I
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShutterSound()I

    move-result v4

    if-eqz v4, :cond_4

    .line 492
    if-eq v3, v6, :cond_1

    .line 493
    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setShutterSound(I)V

    goto/16 :goto_2

    .line 495
    :cond_4
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShutterSound()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setShutterSound(I)V

    goto/16 :goto_2

    .line 499
    .end local v3           #savedValue:I
    :pswitch_1c
    const/16 v4, 0x67

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v3

    .line 500
    .restart local v3       #savedValue:I
    if-eq v3, v6, :cond_1

    .line 501
    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderFlashMode(I)V

    goto/16 :goto_2

    .line 504
    .end local v3           #savedValue:I
    :pswitch_1d
    const/16 v4, 0x6e

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v3

    .line 505
    .restart local v3       #savedValue:I
    if-eq v3, v6, :cond_1

    .line 506
    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAutocontrast(I)V

    goto/16 :goto_2

    .line 509
    .end local v3           #savedValue:I
    :pswitch_1e
    const/16 v4, 0x70

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v3

    .line 510
    .restart local v3       #savedValue:I
    if-eq v3, v6, :cond_1

    .line 511
    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderZoomValue(I)V

    goto/16 :goto_2

    .line 514
    .end local v3           #savedValue:I
    :pswitch_1f
    const/16 v4, 0x26

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v3

    .line 515
    .restart local v3       #savedValue:I
    if-eq v3, v6, :cond_1

    .line 516
    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setFlip(I)V

    goto/16 :goto_2

    .line 522
    .end local v3           #savedValue:I
    :cond_5
    return v2

    .line 342
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_0
        :pswitch_13
        :pswitch_0
        :pswitch_0
        :pswitch_14
        :pswitch_0
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_0
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
    .end packed-switch
.end method

.method public saveSetting(II)Z
    .locals 5
    .parameter "menuid"
    .parameter "value"

    .prologue
    .line 162
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    #getter for: Lcom/sec/android/app/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/sec/android/app/camera/MenuDimController;->access$000(Lcom/sec/android/app/camera/MenuDimController;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;

    .line 163
    .local v0, dimReference:Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;
    if-nez v0, :cond_0

    .line 164
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    #getter for: Lcom/sec/android/app/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/sec/android/app/camera/MenuDimController;->access$000(Lcom/sec/android/app/camera/MenuDimController;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;

    iget-object v4, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    invoke-direct {v3, v4, p2}, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;-><init>(Lcom/sec/android/app/camera/MenuDimController;I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const/4 v1, 0x1

    .line 168
    :goto_0
    return v1

    .line 167
    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;->increaseReferenceCount()V

    .line 168
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public set(IZ)V
    .locals 6
    .parameter "index"
    .parameter "dimmed"

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x1

    .line 173
    if-ltz p1, :cond_1

    const/16 v1, 0x2b

    if-ge p1, v1, :cond_1

    move v1, v2

    :goto_0
    if-nez v1, :cond_2

    .line 295
    :cond_0
    :goto_1
    return-void

    .line 173
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 177
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    #getter for: Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;
    invoke-static {v1}, Lcom/sec/android/app/camera/MenuDimController;->access$100(Lcom/sec/android/app/camera/MenuDimController;)Lcom/sec/android/app/camera/AbstractCameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    .line 179
    .local v0, cs:Lcom/sec/android/app/camera/CameraSettings;
    if-eqz p2, :cond_0

    .line 180
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->mDimArray:[Z

    aput-boolean p2, v1, p1

    .line 181
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->mChangeArray:[Z

    aput-boolean p2, v1, p1

    .line 183
    if-ne p1, v3, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    #getter for: Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;
    invoke-static {v1}, Lcom/sec/android/app/camera/MenuDimController;->access$100(Lcom/sec/android/app/camera/MenuDimController;)Lcom/sec/android/app/camera/AbstractCameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getSelfMode()I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 187
    :cond_3
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 189
    :pswitch_1
    const/16 v1, 0xd

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getAntishake()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto :goto_1

    .line 192
    :pswitch_2
    const/16 v1, 0xe

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraAutocontrast()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto :goto_1

    .line 195
    :pswitch_3
    const/4 v1, 0x2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSceneMode()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto :goto_1

    .line 198
    :pswitch_4
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto :goto_1

    .line 201
    :pswitch_5
    const/16 v1, 0xa

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getISO()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto :goto_1

    .line 204
    :pswitch_6
    const/16 v1, 0x8

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getEffect()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto :goto_1

    .line 207
    :pswitch_7
    const/16 v1, 0x12

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraZoomValue()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto :goto_1

    .line 210
    :pswitch_8
    const/4 v1, 0x3

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFlashMode()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto :goto_1

    .line 213
    :pswitch_9
    const/4 v1, 0x5

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getFocusMode()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_1

    .line 216
    :pswitch_a
    const/16 v1, 0x18

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraContrast()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    #getter for: Lcom/sec/android/app/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/sec/android/app/camera/MenuDimController;->access$000(Lcom/sec/android/app/camera/MenuDimController;)Ljava/util/HashMap;

    move-result-object v1

    const/16 v2, 0x1a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;

    iget-object v4, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraSharpness()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;-><init>(Lcom/sec/android/app/camera/MenuDimController;I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    #getter for: Lcom/sec/android/app/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/sec/android/app/camera/MenuDimController;->access$000(Lcom/sec/android/app/camera/MenuDimController;)Ljava/util/HashMap;

    move-result-object v1

    const/16 v2, 0x19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;

    iget-object v4, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraSaturation()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;-><init>(Lcom/sec/android/app/camera/MenuDimController;I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 224
    :pswitch_b
    const/16 v1, 0xb

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getExposuremeter()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_1

    .line 227
    :pswitch_c
    const/16 v1, 0xc

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getObjecttracking()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_1

    .line 230
    :pswitch_d
    const/4 v1, 0x7

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraExposureValue()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_1

    .line 233
    :pswitch_e
    const/4 v1, 0x4

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_1

    .line 236
    :pswitch_f
    const/16 v1, 0x9

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getWhiteBalance()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_1

    .line 239
    :pswitch_10
    const/16 v1, 0xf

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getBlinkdetection()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_1

    .line 242
    :pswitch_11
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getTimer()I

    move-result v1

    invoke-virtual {p0, v3, v1}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_1

    .line 245
    :pswitch_12
    const/16 v1, 0x11

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getReview()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_1

    .line 248
    :pswitch_13
    const/16 v1, 0x16

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_1

    .line 251
    :pswitch_14
    const/16 v1, 0x13

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getGuideline()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_1

    .line 254
    :pswitch_15
    const/16 v1, 0x65

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getRecordingMode()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_1

    .line 257
    :pswitch_16
    const/16 v1, 0x6d

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderExposureValue()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_1

    .line 260
    :pswitch_17
    const/16 v1, 0x68

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_1

    .line 263
    :pswitch_18
    const/16 v1, 0x6c

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getEffect()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_1

    .line 266
    :pswitch_19
    const/16 v1, 0x6b

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getWhiteBalance()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_1

    .line 269
    :pswitch_1a
    const/16 v1, 0x72

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderContrast()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 270
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    #getter for: Lcom/sec/android/app/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/sec/android/app/camera/MenuDimController;->access$000(Lcom/sec/android/app/camera/MenuDimController;)Ljava/util/HashMap;

    move-result-object v1

    const/16 v2, 0x74

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;

    iget-object v4, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderSharpness()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;-><init>(Lcom/sec/android/app/camera/MenuDimController;I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    #getter for: Lcom/sec/android/app/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/sec/android/app/camera/MenuDimController;->access$000(Lcom/sec/android/app/camera/MenuDimController;)Ljava/util/HashMap;

    move-result-object v1

    const/16 v2, 0x73

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;

    iget-object v4, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderSaturation()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;-><init>(Lcom/sec/android/app/camera/MenuDimController;I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 277
    :pswitch_1b
    const/16 v1, 0x78

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderReview()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_1

    .line 280
    :pswitch_1c
    const/16 v1, 0x75

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_1

    .line 283
    :pswitch_1d
    const/16 v1, 0x67

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderFlashMode()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_1

    .line 286
    :pswitch_1e
    const/16 v1, 0x6e

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAutocontrast()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_1

    .line 289
    :pswitch_1f
    const/16 v1, 0x26

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getFlip()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_1

    .line 187
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_0
        :pswitch_0
        :pswitch_15
        :pswitch_0
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_0
        :pswitch_1d
        :pswitch_1e
        :pswitch_0
        :pswitch_1f
    .end packed-switch
.end method

.method public varargs setDimMulti([I)V
    .locals 5
    .parameter "indices"

    .prologue
    .line 298
    move-object v0, p1

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget v2, v0, v1

    .line 299
    .local v2, index:I
    const/4 v4, 0x1

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->set(IZ)V

    .line 298
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 301
    .end local v2           #index:I
    :cond_0
    return-void
.end method
