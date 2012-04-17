.class Lcom/android/emailcommon/smime/UriSchemaUtils$UtilFile;
.super Ljava/lang/Object;
.source "UriSchemaUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/smime/UriSchemaUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UtilFile"
.end annotation


# instance fields
.field public mFileName:Ljava/lang/String;

.field public mIsTemp:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .parameter "fileName"
    .parameter "temp"

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-boolean p2, p0, Lcom/android/emailcommon/smime/UriSchemaUtils$UtilFile;->mIsTemp:Z

    .line 34
    iput-object p1, p0, Lcom/android/emailcommon/smime/UriSchemaUtils$UtilFile;->mFileName:Ljava/lang/String;

    .line 35
    return-void
.end method
