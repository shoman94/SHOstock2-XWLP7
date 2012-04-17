.class public final enum Lcom/android/email/util/EmailFeature$DOWNLOADPROGRESS;
.super Ljava/lang/Enum;
.source "EmailFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/util/EmailFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DOWNLOADPROGRESS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/email/util/EmailFeature$DOWNLOADPROGRESS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/email/util/EmailFeature$DOWNLOADPROGRESS;

.field public static final enum BASE:Lcom/android/email/util/EmailFeature$DOWNLOADPROGRESS;

.field public static final enum HALF:Lcom/android/email/util/EmailFeature$DOWNLOADPROGRESS;

.field public static final enum NINETY:Lcom/android/email/util/EmailFeature$DOWNLOADPROGRESS;

.field public static final enum TWICE:Lcom/android/email/util/EmailFeature$DOWNLOADPROGRESS;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/android/email/util/EmailFeature$DOWNLOADPROGRESS;

    const-string v1, "BASE"

    invoke-direct {v0, v1, v2}, Lcom/android/email/util/EmailFeature$DOWNLOADPROGRESS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/email/util/EmailFeature$DOWNLOADPROGRESS;->BASE:Lcom/android/email/util/EmailFeature$DOWNLOADPROGRESS;

    new-instance v0, Lcom/android/email/util/EmailFeature$DOWNLOADPROGRESS;

    const-string v1, "HALF"

    invoke-direct {v0, v1, v3}, Lcom/android/email/util/EmailFeature$DOWNLOADPROGRESS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/email/util/EmailFeature$DOWNLOADPROGRESS;->HALF:Lcom/android/email/util/EmailFeature$DOWNLOADPROGRESS;

    new-instance v0, Lcom/android/email/util/EmailFeature$DOWNLOADPROGRESS;

    const-string v1, "NINETY"

    invoke-direct {v0, v1, v4}, Lcom/android/email/util/EmailFeature$DOWNLOADPROGRESS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/email/util/EmailFeature$DOWNLOADPROGRESS;->NINETY:Lcom/android/email/util/EmailFeature$DOWNLOADPROGRESS;

    new-instance v0, Lcom/android/email/util/EmailFeature$DOWNLOADPROGRESS;

    const-string v1, "TWICE"

    invoke-direct {v0, v1, v5}, Lcom/android/email/util/EmailFeature$DOWNLOADPROGRESS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/email/util/EmailFeature$DOWNLOADPROGRESS;->TWICE:Lcom/android/email/util/EmailFeature$DOWNLOADPROGRESS;

    .line 7
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/email/util/EmailFeature$DOWNLOADPROGRESS;

    sget-object v1, Lcom/android/email/util/EmailFeature$DOWNLOADPROGRESS;->BASE:Lcom/android/email/util/EmailFeature$DOWNLOADPROGRESS;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/email/util/EmailFeature$DOWNLOADPROGRESS;->HALF:Lcom/android/email/util/EmailFeature$DOWNLOADPROGRESS;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/email/util/EmailFeature$DOWNLOADPROGRESS;->NINETY:Lcom/android/email/util/EmailFeature$DOWNLOADPROGRESS;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/email/util/EmailFeature$DOWNLOADPROGRESS;->TWICE:Lcom/android/email/util/EmailFeature$DOWNLOADPROGRESS;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/email/util/EmailFeature$DOWNLOADPROGRESS;->$VALUES:[Lcom/android/email/util/EmailFeature$DOWNLOADPROGRESS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/email/util/EmailFeature$DOWNLOADPROGRESS;
    .locals 1
    .parameter

    .prologue
    .line 7
    const-class v0, Lcom/android/email/util/EmailFeature$DOWNLOADPROGRESS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/email/util/EmailFeature$DOWNLOADPROGRESS;

    return-object v0
.end method

.method public static values()[Lcom/android/email/util/EmailFeature$DOWNLOADPROGRESS;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/android/email/util/EmailFeature$DOWNLOADPROGRESS;->$VALUES:[Lcom/android/email/util/EmailFeature$DOWNLOADPROGRESS;

    invoke-virtual {v0}, [Lcom/android/email/util/EmailFeature$DOWNLOADPROGRESS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/email/util/EmailFeature$DOWNLOADPROGRESS;

    return-object v0
.end method
