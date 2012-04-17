.class public Lcom/android/email/wds/ServicemineEmailSetting$SecurityType;
.super Lcom/android/email/wds/SimpleIdentifier;
.source "ServicemineParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/wds/ServicemineEmailSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SecurityType"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/email/wds/SimpleIdentifier;-><init>(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/android/email/wds/ServicemineEmailSetting$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/email/wds/ServicemineEmailSetting$SecurityType;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    invoke-super {p0}, Lcom/android/email/wds/SimpleIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
