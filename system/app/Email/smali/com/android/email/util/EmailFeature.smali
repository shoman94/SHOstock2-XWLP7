.class public Lcom/android/email/util/EmailFeature;
.super Ljava/lang/Object;
.source "EmailFeature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/util/EmailFeature$DOWNLOADPROGRESS;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetDownloadPercent()I
    .locals 2

    .prologue
    .line 57
    invoke-static {}, Lcom/android/email/util/EmailFeature;->GetDownloadProgress()Lcom/android/email/util/EmailFeature$DOWNLOADPROGRESS;

    move-result-object v0

    sget-object v1, Lcom/android/email/util/EmailFeature$DOWNLOADPROGRESS;->HALF:Lcom/android/email/util/EmailFeature$DOWNLOADPROGRESS;

    if-ne v0, v1, :cond_0

    .line 58
    const/16 v0, 0x32

    .line 63
    :goto_0
    return v0

    .line 59
    :cond_0
    invoke-static {}, Lcom/android/email/util/EmailFeature;->GetDownloadProgress()Lcom/android/email/util/EmailFeature$DOWNLOADPROGRESS;

    move-result-object v0

    sget-object v1, Lcom/android/email/util/EmailFeature$DOWNLOADPROGRESS;->NINETY:Lcom/android/email/util/EmailFeature$DOWNLOADPROGRESS;

    if-ne v0, v1, :cond_1

    .line 60
    const/16 v0, 0x5a

    goto :goto_0

    .line 63
    :cond_1
    const/16 v0, 0x64

    goto :goto_0
.end method

.method public static GetDownloadProgress()Lcom/android/email/util/EmailFeature$DOWNLOADPROGRESS;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/android/email/util/EmailFeature$DOWNLOADPROGRESS;->NINETY:Lcom/android/email/util/EmailFeature$DOWNLOADPROGRESS;

    return-object v0
.end method

.method public static IsAmoledHardware()Z
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    return v0
.end method

.method public static IsUseAlwaysShowToTopButton()Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    return v0
.end method

.method public static IsUseEmailViewPort()Z
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public static IsUseHistoryUrl()Z
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x1

    return v0
.end method

.method public static IsUseInlineTag()Z
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x1

    return v0
.end method

.method public static IsUseNewDownloadProgress()Z
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method public static IsUseRetrievesize()Z
    .locals 1

    .prologue
    .line 16
    const-string v0, "VZW_LTE"

    invoke-static {v0}, Lcom/android/emailcommon/utility/SecFeatureWrapper;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    const/4 v0, 0x1

    .line 19
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static IsUseWhiteTheme()Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public static IsUseWideViewPort()Z
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    return v0
.end method
