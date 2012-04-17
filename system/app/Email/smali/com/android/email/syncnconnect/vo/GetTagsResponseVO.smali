.class public Lcom/android/email/syncnconnect/vo/GetTagsResponseVO;
.super Ljava/lang/Object;
.source "GetTagsResponseVO.java"


# instance fields
.field private mErrorBundle:Landroid/os/Bundle;

.field private mTagList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncTag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/syncnconnect/vo/GetTagsResponseVO;->mTagList:Ljava/util/List;

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/syncnconnect/vo/GetTagsResponseVO;->mErrorBundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getErrorBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/email/syncnconnect/vo/GetTagsResponseVO;->mErrorBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getTagList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncTag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/email/syncnconnect/vo/GetTagsResponseVO;->mTagList:Ljava/util/List;

    return-object v0
.end method

.method public setErrorBundle(Landroid/os/Bundle;)V
    .locals 0
    .parameter "errorBundle"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/android/email/syncnconnect/vo/GetTagsResponseVO;->mErrorBundle:Landroid/os/Bundle;

    .line 26
    return-void
.end method

.method public final setTagList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncTag;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p1, tagList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/syncnconnect/utils/SncTag;>;"
    iput-object p1, p0, Lcom/android/email/syncnconnect/vo/GetTagsResponseVO;->mTagList:Ljava/util/List;

    .line 18
    return-void
.end method
