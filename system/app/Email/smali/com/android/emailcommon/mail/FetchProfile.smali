.class public Lcom/android/emailcommon/mail/FetchProfile;
.super Ljava/util/ArrayList;
.source "FetchProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/mail/FetchProfile$Item;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/emailcommon/mail/Fetchable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    return-void
.end method


# virtual methods
.method public getFirstPart()Lcom/android/emailcommon/mail/Part;
    .locals 3

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/android/emailcommon/mail/FetchProfile;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/emailcommon/mail/Fetchable;

    .line 85
    .local v1, o:Lcom/android/emailcommon/mail/Fetchable;
    instance-of v2, v1, Lcom/android/emailcommon/mail/Part;

    if-eqz v2, :cond_0

    .line 86
    check-cast v1, Lcom/android/emailcommon/mail/Part;

    .line 89
    .end local v1           #o:Lcom/android/emailcommon/mail/Fetchable;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
