.class public Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;
.super Ljava/lang/Object;
.source "CameraEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/CameraEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CeSettingsParameter"
.end annotation


# instance fields
.field private mKey:I

.field private mValue:I

.field final synthetic this$0:Lcom/sec/android/app/camera/CameraEngine;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/CameraEngine;II)V
    .locals 0
    .parameter
    .parameter "key"
    .parameter "value"

    .prologue
    .line 312
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 313
    iput p2, p0, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->mKey:I

    .line 314
    iput p3, p0, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->mValue:I

    .line 315
    return-void
.end method


# virtual methods
.method public getKey()I
    .locals 1

    .prologue
    .line 318
    iget v0, p0, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->mKey:I

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 322
    iget v0, p0, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->mValue:I

    return v0
.end method
