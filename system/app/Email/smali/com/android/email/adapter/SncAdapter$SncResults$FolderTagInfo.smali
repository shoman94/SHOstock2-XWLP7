.class Lcom/android/email/adapter/SncAdapter$SncResults$FolderTagInfo;
.super Ljava/lang/Object;
.source "SncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/adapter/SncAdapter$SncResults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FolderTagInfo"
.end annotation


# instance fields
.field mTagInfoList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/email/syncnconnect/utils/SncTag;",
            ">;"
        }
    .end annotation
.end field

.field mTagNameList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/android/email/adapter/SncAdapter$SncResults;


# direct methods
.method constructor <init>(Lcom/android/email/adapter/SncAdapter$SncResults;)V
    .locals 1
    .parameter

    .prologue
    .line 396
    iput-object p1, p0, Lcom/android/email/adapter/SncAdapter$SncResults$FolderTagInfo;->this$1:Lcom/android/email/adapter/SncAdapter$SncResults;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 397
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/email/adapter/SncAdapter$SncResults$FolderTagInfo;->mTagNameList:Ljava/util/HashSet;

    .line 398
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/email/adapter/SncAdapter$SncResults$FolderTagInfo;->mTagInfoList:Ljava/util/HashMap;

    .line 399
    return-void
.end method
