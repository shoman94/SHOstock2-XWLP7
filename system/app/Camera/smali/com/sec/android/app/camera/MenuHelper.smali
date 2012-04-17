.class public Lcom/sec/android/app/camera/MenuHelper;
.super Ljava/lang/Object;
.source "MenuHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/MenuHelper$MenuCallback;,
        Lcom/sec/android/app/camera/MenuHelper$MenuInvoker;,
        Lcom/sec/android/app/camera/MenuHelper$MenuItemsResult;
    }
.end annotation


# static fields
.field public static final CANNOT_STAT_ERROR:I = -0x2

.field public static final EMPTY_STRING:Ljava/lang/String; = ""

.field public static final INCLUDE_ALL:I = -0x1

.field public static final INCLUDE_CROP_MENU:I = 0x8

.field public static final INCLUDE_DELETE_MENU:I = 0x10

.field public static final INCLUDE_DETAILS_MENU:I = 0x40

.field public static final INCLUDE_ROTATE_MENU:I = 0x20

.field public static final INCLUDE_SET_MENU:I = 0x4

.field public static final INCLUDE_SHARE_MENU:I = 0x2

.field public static final INCLUDE_SHOWMAP_MENU:I = 0x80

.field public static final INCLUDE_VIEWPLAY_MENU:I = 0x1

.field public static final INVALID_LATLNG:F = 255.0f

.field public static final JPEG_MIME_TYPE:Ljava/lang/String; = "image/jpeg"

.field public static final MENU_IMAGE_SHARE:I = 0x1

.field public static final MENU_IMAGE_SHOWMAP:I = 0x2

.field public static final NO_STORAGE_ERROR:I = -0x1

.field public static final POSITION_CAMERA_SETTING:I = 0xf

.field public static final POSITION_CAPTURE_PICTURE:I = 0x4

.field public static final POSITION_CAPTURE_VIDEO:I = 0x5

.field public static final POSITION_DETAILS:I = 0xb

.field public static final POSITION_GALLERY_SETTING:I = 0x10

.field public static final POSITION_GOTO_GALLERY:I = 0x2

.field public static final POSITION_IMAGE_CROP:I = 0x9

.field public static final POSITION_IMAGE_ROTATE:I = 0x7

.field public static final POSITION_IMAGE_SET:I = 0xa

.field public static final POSITION_IMAGE_SHARE:I = 0x6

.field public static final POSITION_IMAGE_TOSS:I = 0x8

.field public static final POSITION_MULTISELECT:I = 0xe

.field public static final POSITION_SHOWMAP:I = 0xc

.field public static final POSITION_SLIDESHOW:I = 0xd

.field public static final POSITION_SWITCH_CAMERA_MODE:I = 0x1

.field public static final POSITION_VIEWPLAY:I = 0x3

.field public static final RESULT_COMMON_MENU_CROP:I = 0x1ea

.field private static final TAG:Ljava/lang/String; = "MenuHelper"

.field protected static mDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/camera/MenuHelper;->mDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 98
    return-void
.end method

.method public static calculatePicturesRemaining()I
    .locals 7

    .prologue
    .line 1052
    :try_start_0
    invoke-static {}, Lcom/sec/android/app/camera/ImageManager;->hasStorage()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1053
    const/4 v5, -0x1

    .line 1067
    .local v4, storageDirectory:Ljava/lang/String;
    :goto_0
    return v5

    .line 1055
    .end local v4           #storageDirectory:Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1057
    .restart local v4       #storageDirectory:Ljava/lang/String;
    new-instance v3, Landroid/os/StatFs;

    invoke-direct {v3, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1058
    .local v3, stat:Landroid/os/StatFs;
    const v0, 0x16e360

    .line 1059
    .local v0, PICTURE_BYTES:I
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    const v6, 0x49b71b00

    div-float v2, v5, v6

    .line 1061
    .local v2, remaining:F
    float-to-int v5, v2

    goto :goto_0

    .line 1063
    .end local v0           #PICTURE_BYTES:I
    .end local v2           #remaining:F
    .end local v3           #stat:Landroid/os/StatFs;
    :catch_0
    move-exception v1

    .line 1067
    .local v1, ex:Ljava/lang/Exception;
    const/4 v5, -0x2

    goto :goto_0
.end method

.method public static closeDialog()V
    .locals 1

    .prologue
    .line 949
    sget-object v0, Lcom/sec/android/app/camera/MenuHelper;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/camera/MenuHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 950
    sget-object v0, Lcom/sec/android/app/camera/MenuHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 951
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/camera/MenuHelper;->mDialog:Landroid/app/AlertDialog;

    .line 952
    return-void
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 103
    if-eqz p0, :cond_0

    .line 105
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static confirmAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 4
    .parameter "context"
    .parameter "title"
    .parameter "message"
    .parameter "action"

    .prologue
    .line 928
    new-instance v1, Lcom/sec/android/app/camera/MenuHelper$1;

    invoke-direct {v1, p3}, Lcom/sec/android/app/camera/MenuHelper$1;-><init>(Ljava/lang/Runnable;)V

    .line 937
    .local v1, listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 938
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    const v2, 0x1080027

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 944
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/camera/MenuHelper;->mDialog:Landroid/app/AlertDialog;

    .line 945
    sget-object v2, Lcom/sec/android/app/camera/MenuHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 946
    return-void
.end method

.method public static enableShareMenuItem(Landroid/view/Menu;Z)V
    .locals 2
    .parameter "menu"
    .parameter "enabled"

    .prologue
    .line 153
    const/4 v1, 0x1

    invoke-interface {p0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 154
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 155
    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 156
    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 158
    :cond_0
    return-void
.end method

.method public static enableShowOnMapMenuItem(Landroid/view/Menu;Z)V
    .locals 2
    .parameter "menu"
    .parameter "enabled"

    .prologue
    .line 169
    const/4 v1, 0x2

    invoke-interface {p0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 170
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 171
    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 173
    :cond_0
    return-void
.end method

.method private static getExif(Lcom/sec/android/app/camera/gallery/IImage;)Landroid/media/ExifInterface;
    .locals 4
    .parameter "image"

    .prologue
    const/4 v1, 0x0

    .line 240
    const-string v2, "image/jpeg"

    invoke-interface {p0}, Lcom/sec/android/app/camera/gallery/IImage;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 248
    :goto_0
    return-object v1

    .line 245
    :cond_0
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    invoke-interface {p0}, Lcom/sec/android/app/camera/gallery/IImage;->getDataPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    .line 246
    :catch_0
    move-exception v0

    .line 247
    .local v0, ex:Ljava/io/IOException;
    const-string v2, "MenuHelper"

    const-string v3, "cannot read exif"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getImageFileSize(Lcom/sec/android/app/camera/gallery/IImage;)J
    .locals 4
    .parameter "image"

    .prologue
    const-wide/16 v2, -0x1

    .line 113
    invoke-interface {p0}, Lcom/sec/android/app/camera/gallery/IImage;->fullSizeImageData()Ljava/io/InputStream;

    move-result-object v0

    .line 114
    .local v0, data:Ljava/io/InputStream;
    if-nez v0, :cond_0

    .line 121
    :goto_0
    return-wide v2

    .line 117
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    int-to-long v2, v2

    .line 121
    invoke-static {v0}, Lcom/sec/android/app/camera/MenuHelper;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 118
    :catch_0
    move-exception v1

    .line 121
    .local v1, ex:Ljava/io/IOException;
    invoke-static {v0}, Lcom/sec/android/app/camera/MenuHelper;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v1           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    invoke-static {v0}, Lcom/sec/android/app/camera/MenuHelper;->closeSilently(Ljava/io/Closeable;)V

    throw v2
.end method

.method public static gotoCameraMode(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 971
    const-string v0, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/MenuHelper;->startCameraActivity(Landroid/app/Activity;Ljava/lang/String;)V

    .line 973
    return-void
.end method

.method public static gotoVideoMode(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 967
    const-string v0, "android.media.action.VIDEO_CAMERA"

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/MenuHelper;->startCameraActivity(Landroid/app/Activity;Ljava/lang/String;)V

    .line 968
    return-void
.end method

.method public static hasLatLngData(Lcom/sec/android/app/camera/gallery/IImage;)Z
    .locals 3
    .parameter "image"

    .prologue
    .line 161
    invoke-static {p0}, Lcom/sec/android/app/camera/MenuHelper;->getExif(Lcom/sec/android/app/camera/gallery/IImage;)Landroid/media/ExifInterface;

    move-result-object v0

    .line 162
    .local v0, exif:Landroid/media/ExifInterface;
    if-nez v0, :cond_0

    .line 163
    const/4 v2, 0x0

    .line 165
    :goto_0
    return v2

    .line 164
    :cond_0
    const/4 v2, 0x2

    new-array v1, v2, [F

    .line 165
    .local v1, latlng:[F
    invoke-virtual {v0, v1}, Landroid/media/ExifInterface;->getLatLong([F)Z

    move-result v2

    goto :goto_0
.end method

.method public static isWhiteListUri(Landroid/net/Uri;)Z
    .locals 7
    .parameter "uri"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 131
    if-nez p0, :cond_1

    .line 149
    :cond_0
    :goto_0
    return v3

    .line 134
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, scheme:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, authority:Ljava/lang/String;
    const-string v5, "content"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "media"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v3, v4

    .line 138
    goto :goto_0

    .line 141
    :cond_2
    const-string v5, "file"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 142
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 144
    .local v1, p:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lt v5, v4, :cond_0

    const-string v5, "sdcard"

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    .line 145
    goto :goto_0
.end method

.method public static showStorageToast(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 1027
    return-void
.end method

.method private static startCameraActivity(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2
    .parameter "activity"
    .parameter "action"

    .prologue
    .line 955
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 956
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 957
    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 961
    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraHolder;->keep()V

    .line 963
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 964
    return-void
.end method
