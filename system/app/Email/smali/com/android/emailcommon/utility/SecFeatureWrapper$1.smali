.class final Lcom/android/emailcommon/utility/SecFeatureWrapper$1;
.super Ljava/lang/Object;
.source "SecFeatureWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/emailcommon/utility/SecFeatureWrapper;->initInstance()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 21
    sget-object v1, Lcom/android/emailcommon/utility/SecFeatureWrapper;->c:Ljava/lang/Class;

    if-nez v1, :cond_0

    .line 23
    :try_start_0
    new-instance v0, Ldalvik/system/PathClassLoader;

    const-string v1, "/system/framework/sec_feature.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 27
    .local v0, loader:Ldalvik/system/PathClassLoader;
    const-string v1, "com.sec.android.app.SecFeature"

    invoke-virtual {v0, v1}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/android/emailcommon/utility/SecFeatureWrapper;->c:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .end local v0           #loader:Ldalvik/system/PathClassLoader;
    :cond_0
    :goto_0
    return-void

    .line 30
    :catch_0
    move-exception v1

    goto :goto_0
.end method
