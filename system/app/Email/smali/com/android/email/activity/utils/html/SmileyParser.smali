.class public Lcom/android/email/activity/utils/html/SmileyParser;
.super Ljava/lang/Object;
.source "SmileyParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/utils/html/SmileyParser$Smileys;
    }
.end annotation


# static fields
.field public static final DEFAULT_SMILEY_RES_IDS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 74
    const/16 v0, 0x11

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/android/email/activity/utils/html/SmileyParser$Smileys;->HAPPY:I

    invoke-static {v2}, Lcom/android/email/activity/utils/html/SmileyParser$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/android/email/activity/utils/html/SmileyParser$Smileys;->SAD:I

    invoke-static {v2}, Lcom/android/email/activity/utils/html/SmileyParser$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/android/email/activity/utils/html/SmileyParser$Smileys;->WINKING:I

    invoke-static {v2}, Lcom/android/email/activity/utils/html/SmileyParser$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lcom/android/email/activity/utils/html/SmileyParser$Smileys;->TONGUE_STICKING_OUT:I

    invoke-static {v2}, Lcom/android/email/activity/utils/html/SmileyParser$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x4

    sget v2, Lcom/android/email/activity/utils/html/SmileyParser$Smileys;->SURPRISED:I

    invoke-static {v2}, Lcom/android/email/activity/utils/html/SmileyParser$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x5

    sget v2, Lcom/android/email/activity/utils/html/SmileyParser$Smileys;->KISSING:I

    invoke-static {v2}, Lcom/android/email/activity/utils/html/SmileyParser$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/android/email/activity/utils/html/SmileyParser$Smileys;->YELLING:I

    invoke-static {v2}, Lcom/android/email/activity/utils/html/SmileyParser$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lcom/android/email/activity/utils/html/SmileyParser$Smileys;->COOL:I

    invoke-static {v2}, Lcom/android/email/activity/utils/html/SmileyParser$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x8

    sget v2, Lcom/android/email/activity/utils/html/SmileyParser$Smileys;->MONEY_MOUTH:I

    invoke-static {v2}, Lcom/android/email/activity/utils/html/SmileyParser$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x9

    sget v2, Lcom/android/email/activity/utils/html/SmileyParser$Smileys;->FOOT_IN_MOUTH:I

    invoke-static {v2}, Lcom/android/email/activity/utils/html/SmileyParser$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xa

    sget v2, Lcom/android/email/activity/utils/html/SmileyParser$Smileys;->EMBARRASSED:I

    invoke-static {v2}, Lcom/android/email/activity/utils/html/SmileyParser$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xb

    sget v2, Lcom/android/email/activity/utils/html/SmileyParser$Smileys;->ANGEL:I

    invoke-static {v2}, Lcom/android/email/activity/utils/html/SmileyParser$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xc

    sget v2, Lcom/android/email/activity/utils/html/SmileyParser$Smileys;->UNDECIDED:I

    invoke-static {v2}, Lcom/android/email/activity/utils/html/SmileyParser$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xd

    sget v2, Lcom/android/email/activity/utils/html/SmileyParser$Smileys;->CRYING:I

    invoke-static {v2}, Lcom/android/email/activity/utils/html/SmileyParser$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xe

    sget v2, Lcom/android/email/activity/utils/html/SmileyParser$Smileys;->LIPS_ARE_SEALED:I

    invoke-static {v2}, Lcom/android/email/activity/utils/html/SmileyParser$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xf

    sget v2, Lcom/android/email/activity/utils/html/SmileyParser$Smileys;->LAUGHING:I

    invoke-static {v2}, Lcom/android/email/activity/utils/html/SmileyParser$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x10

    sget v2, Lcom/android/email/activity/utils/html/SmileyParser$Smileys;->WTF:I

    invoke-static {v2}, Lcom/android/email/activity/utils/html/SmileyParser$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    sput-object v0, Lcom/android/email/activity/utils/html/SmileyParser;->DEFAULT_SMILEY_RES_IDS:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method
