.class final Lcom/android/email/activity/setup/AccountSetupBasicsChoiceProviderForKOR$1;
.super Ljava/util/HashMap;
.source "AccountSetupBasicsChoiceProviderForKOR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSetupBasicsChoiceProviderForKOR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 40
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 48
    const-string v0, "NATE"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "nate.com"

    aput-object v2, v1, v3

    const-string v2, "lycos.co.kr"

    aput-object v2, v1, v4

    const-string v2, "empas.com"

    aput-object v2, v1, v5

    const-string v2, "netsgo.com"

    aput-object v2, v1, v6

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/setup/AccountSetupBasicsChoiceProviderForKOR$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v0, "Naver"

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "naver.com"

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/setup/AccountSetupBasicsChoiceProviderForKOR$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v0, "Daum"

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "daum.net"

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/setup/AccountSetupBasicsChoiceProviderForKOR$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v0, "Gmail"

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "gmail.com"

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/setup/AccountSetupBasicsChoiceProviderForKOR$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v0, "Yahoo"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "yahoo.co.kr"

    aput-object v2, v1, v3

    const-string v2, "ymail.com"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/setup/AccountSetupBasicsChoiceProviderForKOR$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v0, "Hotmail"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "hotmail.com"

    aput-object v2, v1, v3

    const-string v2, "hotmail.co.kr"

    aput-object v2, v1, v4

    const-string v2, "live.co.kr"

    aput-object v2, v1, v5

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/setup/AccountSetupBasicsChoiceProviderForKOR$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    return-void
.end method
